#lang pollen/mode racket/base
(require pollen/convert txexpr xml racket/file pollen/top)

(define html (format "<html>~a</html>" (file->string "code-samples.txt")))
(define xexpr (html->xexpr html))
(define code-samples (filter (λ(i) (and (txexpr? i) (eq? 'pre (get-tag i)))) (get-elements xexpr)))
(provide code-samples)
