#lang racket
(require pollen/convert txexpr)

(define html (format "<html>~a</html>" (file->string "codesamples.txt")))
(define xexpr (html->xexpr html))
(define codesamples (filter (λ(i) (and (txexpr? i) (eq? 'pre (get-tag i)))) (get-elements xexpr)))
(provide codesamples)