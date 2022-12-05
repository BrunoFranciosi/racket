#|
      Author: Bruno Franciosi
      Program: The Guess My Number Game
|#

#lang racket
(define lower 1)
(define upper 100)

;return a number halfway between the two limits, average of the two limits (binary search)
(define (guess)
 (quotient (+ lower upper) 2))

;is saying that the number is smaller than the previous guess, so the biggest it can now be is one less than the previous guess
(define (smaller)
  (set! upper (max lower (sub1 (guess))))
  (guess))

;is saying that the number is bigger than the previous guess, so the smallest it can now be is one more than the previous guess
(define (bigger)
  (set! lower (min upper (add1 (guess))))
  (guess))

;main
;start takes two arguments, which are the numbers we want to set as the lower and upper bounds to set as the lower and upper bounds
(define (start n m)
 (set! lower (min n m))
 (set! upper (max n m))
 (guess))
