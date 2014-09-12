; Ben Bitdiddle has invented a test to determine whether the interpreter he is faced with is using applicative-order evaluation or normal-order evaluation. He defines the following two procedures:
(define (p) (p))
(define (test x y)
  (if (= x 0)
      0
      y))
; Then he evaluates the expression:
(test 0 (p))
; What behavior will Ben observe with an interpreter that uses applicative-order evaluation? What behavior will he observe with an interpreter that uses normal-order evaluation? Explain your answer. (Assume that the evaluation rule for the special form if is the same whether the interpreter is using normal or applicative order: The predicate expression is evaluated first, and the result determines whether to evaluate the consequent or the alternative expression.)
; Lisp's interpreter uses applicative-order evaluation; in this method, it evaluates the arguments and then it applies them.
; What will Lisp's result be?
; An infinite loop; it will evaluate (= x 0) as true; then it will try to evaluate (p), which calls p infinitely, and will never get to the if logic on the top level, even though it could just print 0 at that level.
; Lisp's interpreter does not use the normal-order evaluation method, where procedures are fully expanded before being reduced by evaluating the operands.
; What will Ben observe with an interpreter that uses normal-order evaluation?
; It will evaluate (= x 0), which has only a primitive operator, =, and get true; go up a level to the if-logical composition operator, and get 0.
