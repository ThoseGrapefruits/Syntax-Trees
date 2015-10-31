#lang web-server/insta
(require 2htdp/image)

(define (start initial-request)
  (define counter1 (make-counter))
  (define include1 (include-counter counter1))
  (send/suspend/dispatch
   (lambda (embed/url)
     (response/xexpr
      `(html
        (body (h2 "Double Counters")
              (div ,(include1 embed/url))))))))

(define (make-counter)
  (make-web-cell (square 5 'solid 'red)))

(define (include-counter a-counter)
  (call-with-current-continuation
   (λ (k)
     (let loop ()
       (k
        (λ (embed/url)
          `(div (img ((src ,(embed/url (lambda (l) (web-cell-ref a-counter))))))
                (a ([href
                     ,(embed/url
                       (lambda _ 
                         (define last (web-cell-ref a-counter))
                         (web-cell-shadow a-counter (square 5 'solid 'aquamarine))
                         (loop)))])
                   "+"))))))
   servlet-prompt))