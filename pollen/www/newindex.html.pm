#lang pollen

◊header{
◊img[#:src "plt-logo-flat-mb.svg" #:class "logo"] Racket

◊span[#:style "color:gray;font-size:60%"]{the programmable programming language}
}

◊circus-box{
◊lang-circus{

◊lang{#lang racket
;; Finds Racket sources in all subdirs
(for ([path (in-directory)]
      #:when (regexp-match? #rx"[.]rkt$" path))
  (printf "source file: ~a\n" path))}

◊lang{#lang web-server/insta
;; A "hello world" web server
(define (start request)
  (response/xexpr
   '(html
     (body "Hello World"))))}

◊lang{#lang racket  ; An echo server
(define listener (tcp-listen 12345))
(let echo-server ()
  (define-values (in out) (tcp-accept listener))
  (thread (lambda () (copy-port in out)
                     (close-output-port out)))
  (echo-server))}


◊lang{#lang racket
;; Report each unique line from stdin
(define seen (make-hash))
(for ([line (in-lines)])
  (unless (hash-ref seen line #f)
    (displayln line))
  (hash-set! seen line #t))}

}
}


