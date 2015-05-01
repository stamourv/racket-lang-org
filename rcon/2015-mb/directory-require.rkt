#lang racket
(require pollen/decode txexpr sugar/list)
(provide (all-defined-out))

(define (speaker time name title . desc)
  `(div ((class "speaker")) (h4 (span ((class "time")) ,time) " " ,name) ,title  ,@(if (not (empty? desc)) (cons '(br) desc) empty)))

(define (xlink target . sources-in)
  (define sources (if (empty? sources-in) (list target) sources-in))
  `(a ((href ,(format "#~a" (string-downcase target)))) ,@sources))

(define (xtarget name . targets-in)
  (define targets (if (empty? targets-in) (list name) targets-in))
  `(a ((name ,(string-downcase name))) ,@targets))

  
(define (root . items)
  (decode (make-txexpr 'root '() items)
          #:string-proc (compose1 smart-quotes smart-dashes)
          #:exclude-tags '(style script)))


(define (sponsor-list . sponsors-in)
  (define sponsors (filter-split sponsors-in whitespace?))
  `(div ,@(map (λ(s) `(sponsor ,@s)) sponsors)))

