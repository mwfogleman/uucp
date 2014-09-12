;; Exercise 1.13.

;; Prove that Fib(n) is the closest integer to n/5, where  = (1 + 5)/2.
;; Hint: Let  = (1 - 5)/2.
;; Use induction and the definition of the Fibonacci numbers (see section 1.2.2) to prove that Fib(n) = (n - n)/5.

(define phi
  (/ 1 (- 1 (sqrt 5)) 2))

(sqrt 5)

(define psi
  (define (sqrt x)
    (/ (- 1 5) 2))
