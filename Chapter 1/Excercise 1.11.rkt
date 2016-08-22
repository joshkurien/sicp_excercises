#lang scheme

;Recursive definition of function:

(define (f n)
  (if (< n 3)
      n
      (+ (f (- n 1))
         (* 2 (f (- n 2)))
         (* 3 (f (- n 3))))
  ))


;Iterative definition:

(define (nrf n) (iter-f 0 1 2 n))

(define (iter-f a b c i)
  (cond (< i 0) i)
  ((= i 0) a)
  (else (iter-f (- i 1) b c (+ c (* 2 b) (* 3 a)))))
  