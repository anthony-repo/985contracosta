; Lab 13: Final Review

(define (compose-all funcs)
  (define (compose-all-recursive ret funcs)
    (if (null? funcs)
        ret
        (compose-all-recursive ((car funcs) ret) (cdr funcs))
    )
  )
  (define (compose-all-helper x)
    (compose-all-recursive x funcs)
  )
  compose-all-helper
)
