;; Scheme ;;

(define (repeatedly-cube n x)
    (if (zero? n)
        x
        (let
            ([y x])
            (repeatedly-cube (- n 1) (* y y y)))))
