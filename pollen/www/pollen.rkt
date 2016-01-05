#lang racket/base
(provide (all-defined-out))
(require pollen/decode)

(define (root . elems)
  (define elements-with-paragraphs
    (decode-elements elems #:txexpr-elements-proc detect-paragraphs
                     #:exclude-tags '(style script lang lang-circus)))
  (list* 'root
         (decode-elements elements-with-paragraphs
                          #:string-proc (compose1 smart-quotes)
                          #:exclude-tags '(style script lang))))