; Observe that our model of evaluation allows for combinations whose operators are compound expressions. Use this observation to describe the behavior of the following procedure:
(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))
; a-plus-abs takes the input a b.
; This will print 3:
(a-plus-abs-b 1 2)
; This will print 3:
(a-plus-abs-b 1 -2)
; If b > 0, the operator is +; otherwise, it is -.
; If b > 0, the combination is (+ a b); if b <= 0, the combination is (- a b).
; In the latter case, the subtraction operation and b's negative value will cancel, so that a's value can only increase (although the answer may still be negative).
; This means that the result of (a-plus-abs-b a b) = a + |b|.
