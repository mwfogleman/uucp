(define (pt row col)
  (cond ((> (- col 1) row) 0)
	((< col 0) 0)
	((= col 0) 1)
	((= (- col row) 1) 1)
	((+ (pt (- row 1) (- col 1))
	    (pt (- row 1) col)))))

(pt 0 0) ;; Should be 1
(pt 1 2) ;; Should be 1
