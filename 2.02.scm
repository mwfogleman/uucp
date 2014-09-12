(define (average x y)
  (/ (+ x y) 2))

(define (make-point x y)
  (cons x y))

(define (x-coord p)
  (car p))

(define (y-coord p)
  (cdr p))

(define (make-segment s e)
  (cons s e))

(define (start-point seg)
  (car seg))

(define (end-point seg)
  (cdr seg))

(define (midpoint seg)
  (let* ((s (start-point seg))
	 (e (end-point seg))
	 (x1 (x-coord s))
	 (x2 (x-coord e))
	 (y1 (y-coord s))
	 (y2 (y-coord e)))
    (make-point (average x1 x2) (average y1 y2))))
