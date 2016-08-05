#lang scheme
(define (square x) (* x x))

(define (average x y)
  (/ (+ x y) 2))

(define (improve guess x)
  (average guess (/ x guess)))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x)
x)))

define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

(define (sqrt-iter2 guess x)
  (new-if (good-enough? guess x)
      guess
      (sqrt-iter2 (improve guess x)
x)))

;The new-if application fails because of the applicative order evaluation,
;i.e. in the 'new-if', unlike the if form all 3 arguments in the procedure are evaluated
;hence the recursive call to sqrt-iter2 (else-clause) is evaluated before the procedure even starts
;this is not the case for the normal 'if' as there, the condition is checked (evaluated first)
;and then only the required clause is evaluated later