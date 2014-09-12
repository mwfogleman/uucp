(define (f-re n)
  (if (< n 3)
      n
      (+ (f-re (- n 1))
	 (* 2 (f-re (- n 2)))
	 (* 3 (f-re (- n 3)))
	 )))

(f-re 1)
;; 1
(f-re 2)
;; 2
(f-re 3)
;; 4
(f-re 4)
;; 11
(f-re 5)
;; 25


;; Iterative Skeleton
(define (f-it n)
  (define (f-iter a b c n)
    (if (< n 3)
	a
	(f-iter d a b (- n 1))))
  (if (< n 3)
      n
      (f-iter a b c n)))

;; Iterative Implementation (test)
(define (f-it n)
  (define (f-iter a b c n)
    ;; a = f(n - 1), b = f(n - 2), c = f(n - 3). 
    ;; return a + 2b + 3c 
    (if (< n 3)
	a
	(f-iter (+ a (* 2 b) (* 3 c)) a b (- n 1))))
  (if (< n 3)
      n
      (f-iter 2 1 0 n)))

(f-it 1)
;; 1
(f-it 3)
;; ??