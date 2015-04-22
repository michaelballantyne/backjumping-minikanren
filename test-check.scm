(define-syntax test-check
  (syntax-rules ()
                ((_ title tested-expression expected-result)
                 (begin
                   (printf "Testing ~s\n" title)
                   (let* ((expected expected-result)
                          (produced tested-expression))
                     (or (equal? expected produced)
                         (begin
                           (printf
                             "Failed: ~a~%Expected: ~a~%Computed: ~a~%"
                             'tested-expression expected produced)
                           #;(error 'bad "test failed"))))))))
