(define (accumulate combiner start n term)
  (if (= n 0)
    start
    (accumulate combiner (combiner (term n) start) (- n 1) term))
)

(define (accumulate-tail combiner start n term)
  (if (= n 0)
    start
    (accumulate-tail combiner (combiner (term n) start) (- n 1) term))
)

(define (rle s)
  (if (null? s)
      nil
      (begin (define (helper value lst len)
                      (cond ((null? lst) (cons-stream (list value len) nil))
                            ((= value (car lst)) (helper value (cdr-stream lst) (+ len 1)))
                            (else (cons-stream (list value len) (rle lst)))))
              (helper (car s) (cdr-stream s) 1)))
)
