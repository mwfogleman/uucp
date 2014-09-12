; Define a procedure that takes three numbers as arguments and returns the sum of the squares of the two larger numbers.
; (define <name> <formal parameters> <body>)
; define square
(define (square x) (* x x)) 
; define sum-of-squares
(define (sum-squares a b)
	(+ (square a) (square b)))

; sum-square-max
; Six possibilities:
; a > b > c
; b > c > a
; c > a > b
; a > c > b
; b > a > c
; c > b > a

(define (sum-square-max a b c) 
	(cond ((and (> a b) (> b c)) (sum-squares a b)) 
	      ((and (> b c) (> c a)) (sum-squares b c)) 
	      ((and (> c a) (> a b)) (sum-squares c a)) 
	      ((and (> a c) (> c b)) (sum-squares a c)) 
	      ((and (> b a) (> a c)) (sum-squares b a)) 
	      ((and (> c b) (> b a)) (sum-squares c b))))

; Let's test it out. (sum-squares 1 2 3) should choose 2 and 3, square them (4 and 9), and add the squares to get 13.
(sum-square-max 1 2 3)
