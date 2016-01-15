#lang racket
(require pollen/convert txexpr)

(define html (format "<html>~a</html>" (file->string "code-samples.txt")))
(define xexpr (html->xexpr html))
(define code-samples (filter (λ(i) (and (txexpr? i) (eq? 'pre (get-tag i)))) (get-elements xexpr)))
(provide code-samples)



(define code-descriptions
  (map html->xexpr (string-split (file->string "code-descriptions.txt") "\n")))

(provide code-descriptions)