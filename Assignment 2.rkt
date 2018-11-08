#lang racket
#| CSC-135
   Assignment 2
   Marina Nikiforova
   Evamarie Najera
|#

#|-----Function2------|#

(define(concatL L1 L2)
  (cond ((null? L1) L2)
        ((null? L2) L1)
        (else (cons (car L1)(cons (car L2) (concatL (cdr L1) (cdr L2)))))))

;test
(concatL '((a b) (c d) (d e)) '((f f f) (d e s) (v v v)))

#|-----Function3------|#
 (define(buildOne N E1)
    (if (= N 0) '()
      (cons E1(buildOne (- N 1) E1))))
(define(buildTwo M E2)
    (if (= M 0) '()
      (cons E2(buildTwo (- M 1) E2))))
(define(appendlist E1 E2)(if (null? E1) E2
                             (cons(car E1)
                                  (appendlist(cdr E1) E2))))
(define (buildList N E1 M E2)
  (appendlist (buildOne N E1) (buildTwo M E2)))
  
  ;test
(buildList 3 'A 3 'b)
(buildList 3 '() 2 'a)
(buildList 2 '(a b c) 1 'Q)

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
