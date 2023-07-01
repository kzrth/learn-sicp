#lang sicp

(#%require rackunit)

(define (square a) (* a a))

(define (sum-of-squares a b) (+ (square a) (square b)))

(define 
  (solution a b c)
  (cond
    ((= (min a b c) a) (sum-of-squares b c))
    ((= (min a b c) b) (sum-of-squares a c))
    ((= (min a b c) c) (sum-of-squares a b))))

(check-equal? (solution 1 2 3) 13)
(check-equal? (solution 2 1 3) 13)
(check-equal? (solution 3 2 1) 13)
(check-equal? (solution 1 2 2) 8)
(check-equal? (solution 2 2 2) 8)
(check-equal? (solution 1 10 100) 10100)
