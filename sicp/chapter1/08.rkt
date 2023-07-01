#lang sicp

(#%require rackunit)

(define (cube x) (* x x x))

(define (square x) (* x x))

(define (good-enough? guess x)
  (< (abs (- (cube guess) x)) 0.001))

(define (improve guess x)
  (/
   (+ (/ x (square guess)) (* guess 2))
   3))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x)
                 x)))

(define (sqrt-cube x)
  (sqrt-iter 1.0 x))

(check-equal? (round (sqrt-cube 27)) 3.0)
(check-equal? (round (sqrt-cube 64)) 4.0)
(check-equal? (round (sqrt-cube 125)) 5.0)



