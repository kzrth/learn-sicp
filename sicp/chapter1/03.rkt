#lang sicp

(#%require rackunit)

(define (square a) (* a a))

(define 
  (solution a b c)
  (cond
    ((= (min a b c) a) (+ (square b) (square c)))
    ((= (min a b c) b) (+ (square a) (square c)))
    ((= (min a b c) c) (+ (square a) (square b)))))

(check-equal? (solution 1 2 3) 13)
(check-equal? (solution 2 1 3) 13)
(check-equal? (solution 3 2 1) 13)
(check-equal? (solution 1 2 2) 8)
(check-equal? (solution 2 2 2) 8)
