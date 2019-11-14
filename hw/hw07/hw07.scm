(define (cddr s)
  (cdr (cdr s)))

(define (cadr s)
  (car (cdr s))
)

(define (caddr s)
  (car (cddr s))
)

(define (sign x)
  (cond ((< x 0) -1) ((> x 0) 1) (else 0))
)

(define (square x) (* x x))

(define (pow b n)
  (expt b n)

)

(define (ordered? s)
  (if (or (null? s) (null? (cdr s)))
    true
    (and (<= (car s) (cadr s)) (ordered? (cdr s))))
)
