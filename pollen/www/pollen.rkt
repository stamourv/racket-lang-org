#lang racket/base
(provide (all-defined-out))
(require pollen/decode pollen/tag txexpr racket/list sugar/list)

(define (root . elems)
  #;(define elements-with-paragraphs
    (decode-elements elems #:txexpr-elements-proc detect-paragraphs
                     #:exclude-tags '(style script lang lang-circus)))
  (list* 'div '((id "doc"))
         #;(decode-elements elements-with-paragraphs
                          #:string-proc (compose1 smart-quotes)
                          #:exclude-tags '(style script lang)) elems))


(define (cover path)
  `(img ((class "cover") (src ,(format "images/~a" path)))))

(define (detect-list-items elems)
  (define elems-merged (merge-newlines elems))
  (define (list-item-break? elem)
    (define list-item-separator-pattern (regexp "\n\n+"))
    (and (string? elem) (regexp-match list-item-separator-pattern elem)))
  (define list-of-li-elems (filter-split elems-merged list-item-break?))
  (define list-of-li-paragraphs
    (map (λ(li) (detect-paragraphs li #:force? #t)) list-of-li-elems))
  (define li-tag (make-default-tag-function 'li))
  (map (λ(lip) (apply li-tag lip)) list-of-li-paragraphs))

(define (col-2 . xs)
  `(col-2 ,@(decode-elements (detect-list-items xs) #:txexpr-elements-proc detect-paragraphs)))

(define (book . xs)
  `(div ((class "book")) ,@xs))


(define (row . xs)
  (define row-xexpr (apply (make-default-tag-function 'row) xs))
  (define-values (tag attrs elems) (txexpr->values row-xexpr))
  (define trimmed-elems (dropf elems whitespace?))
  (list tag attrs `(col-1 ,(car trimmed-elems)) (apply col-2 (cdr trimmed-elems))))


(define (link url . xs)
  `(a ((href ,url)) ,@xs))