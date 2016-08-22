#lang scheme

(define (pascal row col)
  (cond
    ((< row 2) 1)
    ((= col 0) 1)
    ((>= col row) 1)
    (else (+ (pascal (- row 1) col) (pascal (- row 1) (- col 1))))
    )
  )
