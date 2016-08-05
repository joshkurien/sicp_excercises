#lang scheme

(define (average x y)
  (/ (+ x y) 2))

(define (improve guess x)
  (average guess (/ x guess)))

(define (square x) (* x x))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x)
x)))

;(define (good-enough? guess x)
;  (< (abs (- (square guess) x)) 0.001))
; Need is to define a new good-enough where the guess is a percentage of difference between last 2 guessses

(define (good-enough? guess x) 
  (< (/ (abs (- (square guess) x)) guess)
     (* guess 0.0001)))

;the only case where this breaks is if the initial guess is 0, but we are not considering that case anyway
;as for that we'll need to change ither procedures as well