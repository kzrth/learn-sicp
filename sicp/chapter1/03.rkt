#lang sicp

(#%require rackunit)

(define 
  (solution a b c)
  (cond
    ((and (< a b) (< a c)) (+ (* b b) (* c c)))
    ((and (< b a) (< b c)) (+ (* a a) (* c c)))
    ((and (< c a) (< c b)) (+ (* a a) (* b b)))
    (else (+ (* a a) (* a a)))))

(check-equal? (solution 1 2 3) 13)
(check-equal? (solution 2 1 3) 13)
(check-equal? (solution 3 2 1) 13)
(check-equal? (solution 1 2 2) 8)
(check-equal? (solution 2 2 2) 8)
