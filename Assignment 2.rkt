#lang racket
#| CSC-135
   Assignment 2
   Marina Nikiforova
   Evamarie Najera
|#

#|-----Function3------|#
 (define(buildList N E1)
    (if (= N 0) '()
      (cons E1(buildList (- N 1) E1))))
  
     
;testing (works but needs to be extended)
(buildList 3 'A)

#|-----Function 6-----|#
(define (selectN n)
  (lambda (list)
    (define (iter l i)
      (if (= i 0) l (iter (cdr l) (- i 1))))
    (iter list n)))

;testing
; change the number inselectN, or reconfigure the list
(define last (selectN 2))
(define result (last '(4 8 2 9 -1 13 15 17)))
(display result)
