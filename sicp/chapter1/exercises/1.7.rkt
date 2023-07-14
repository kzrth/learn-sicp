#lang sicp

(#%require rackunit)

(define (square x) (* x x))

(define (average x y)
  (/ (+ x y) 2))

(define (improve guess x) (average guess (/ x guess)))

(define (good-enough? guess x)
  (< (abs (- guess (improve guess x))) 0.00000001))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x)
                 x)))

(define (sqrt x)
  (sqrt-iter 1.0 x))

(check-equal? (sqrt 0.000001) 0.0010000001533016628)
(check-equal? (round (sqrt 9)) 3.0)
