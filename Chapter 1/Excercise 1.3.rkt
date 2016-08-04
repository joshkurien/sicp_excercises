#lang scheme

(define (square x) (* x x))

(define (square-sum x y)
  (+ (square x) (square y)))

(define (greater a b)
    (if(> a b) a b))

(define (smaller a b)
    (if(< a b) a b))

(define (function a b c)
    (if (< c (smaller a b))
        (square-sum a b)
        (square-sum c (greater a b)))
    )