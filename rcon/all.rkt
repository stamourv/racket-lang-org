#lang plt-web

(require plt-web/style
         racket/dict
         racket/match
         racket/runtime-path
         racket/path
         raco/all-tools
         "resources.rkt"
         "utils.rkt"
         "../identity.rkt"
         (prefix-in 2011: "2011/all.rkt")
         (prefix-in 2012: "2012/all.rkt")
         (prefix-in 2013: "2013/all.rkt")
         (prefix-in 2014: "2014/all.rkt"))

(provide index)

(register-identity con-site)

(define-runtime-path 2015-index "2015/index.html")
(define-runtime-path 2016-index "2016/index.html")
(define-runtime-path 2017-index "2017/index.html")

(define index
  (page* #:site con-site
         #:link-title "RacketCon" #:title "RacketCon"
         #:extra-headers style-header
         #:id 'con
         @copyfile[#:site con-site 2017-index]))

(define (pollen-rebuild dir)
  (define v (all-tools))
  ;; pollen rebuild
  (parameterize ([current-directory (simplify-path dir)]
                 [current-command-line-arguments (vector "render" "-r")]
                 [current-namespace (make-base-namespace)])
    (dynamic-require (second (hash-ref v "pollen")) #f)))

(define (excluded-path? path)
  (define-values (base name _) (split-path path))
  (or
   ;; hidden path (starts with dot)
   (regexp-match #rx"^\\." (path->string name))
   ;; path in `private` directory
   (member (string->path "private") (explode-path path))
   ;; path in `compiled` directory
   (member (string->path "compiled") (explode-path path))
   ;; source files
   (member (path-get-extension name) '(#".rkt" #".p" #".pp" #".pm"))))

;; copy over 2015 site
(define-runtime-path 2015-dir "2015")
(pollen-rebuild 2015-dir)
(for ([f (in-list '("eero.svg" "eero.svgz" "cubit.png" "pattern.png"
                               "styles.css" "index.html"))])
     (void (copyfile #:site con-site (build-path 2015-dir f) (string-append "2015/" f))))
(define-runtime-path 2015-fonts "2015/fonts/")
(for ([f (in-directory 2015-fonts)])
     (define-values (base name _) (split-path f))
     (copyfile #:site con-site f (string-append "2015/fonts/" (path->string name))))


(define-runtime-path 2016-dir "2016")
(pollen-rebuild 2016-dir)
(for ([f (in-list (directory-list 2016-dir))])
     (define-values (base name _) (split-path f))
     (define s (path->string name))
     (unless (excluded-path? name)
       (when (or (regexp-match? "html$" s)
                 (regexp-match? "css$" s)
                 (regexp-match? "svg$" s)
                 (regexp-match? "png$" s))
         (void (copyfile #:site con-site (build-path 2016-dir f) (string-append "2016/" s))))))
(define-runtime-path 2016-fonts "2016/fonts/")
(for ([f (in-directory 2016-fonts)])
     (define-values (base name _) (split-path f))
     (copyfile #:site con-site f (string-append "2016/fonts/" (path->string name))))

(define-runtime-path 2017-dir "2017")
(pollen-rebuild 2017-dir)
(for ([f (in-list (directory-list 2017-dir))])
     (define-values (base name _) (split-path f))
     (define s (path->string name))
     (unless (excluded-path? name)
       (when (or (and (regexp-match? "html$" s) (not (equal? s "index.html")))
                 (regexp-match? "css$" s)
                 (regexp-match? "svg$" s)
                 (regexp-match? "png$" s))
         (void (copyfile #:site con-site (build-path 2017-dir f))))))
(define-runtime-path 2017-fonts "2017/fonts/")
(for ([f (in-directory 2017-fonts)])
     (define-values (base name _) (split-path f))
     (copyfile #:site con-site f (string-append "2017/fonts/" (path->string name))))
