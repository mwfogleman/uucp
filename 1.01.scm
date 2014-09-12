; Below is a sequence of expressions. What is the result printed by the interpreter in response to each expression? Assume that the sequence is to be evaluated in the order in which it is presented.

; 10
10

; 12
(+ 5 3 4)

; 8
(- 9 1)

; 3
(/ 6 2)

; 8 + -2 = 6
(+ (* 2 4) (- 4 6))

; a = 3 [not printed]
(define a 3)

; b = 4 [not printed]
(define b (+ a 1))

; 3 + 4 + 12 = 19
(+ a b (* a b))

; false [printed as #f]
(= a b)

; (if <predicate> <consequent> <alternative>)
; <predicate> = (and (> b a) (< b (* a b)))
;             = (b > a) and (b < a*b)
;             = (4 > 3) and (4 < 3*4)
; 	      = true
; <consequent> = b
; <alternative> = a
; Because the predicate is true, this will print the <consequent>, b, 4.
(if (and (> b a) (< b (* a b)))
    b
    a)
; The first conditional here is false. A is not 4.
; The second conditional is true. B is 4. Therefore, it will print the consequent expression.
; The consequent expression is (+ 6 7 a); the result should be evaluated as 16.
(cond ((= a 4) 6)
      ((= b 4) (+ 6 7 a))
      (else 25))
; B > A. Therefore, b. (+ 2 b) = 6. 
(+ 2 (if (> b a) b a))
; cond a < b, therefore b. 
; cond * 4 = b * 4 = 4 * 4 = 16.
(* (cond ((> a b) a)
         ((< a b) b)
         (else -1))
   (+ a 1))
