#lang scheme

(define (approximation x y)
  (/
   (+ (/ x (* y y))
      (* 2 y))
   3))

(define (improve guess x)
  (approximation guess (/ x guess)))

(define (cube x) (* x x x))

(define (cbrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (cbrt-iter (improve guess x)
                 x))
  )

(define (good-enough? guess x) 
  (<  (abs (- (cube guess) x))
     (* guess 0.0001)))
