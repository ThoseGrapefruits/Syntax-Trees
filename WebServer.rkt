#lang racket
(require web-server/servlet
	 web-server/servlet-env)
;(require (file "TreeGenerator.rkt"))

(define (start req)
  (response/xexpr
   `(html (head (title "Better Syntax Tree Generator"))
          (body (h1 "Better Syntax Tree Generator"))
          (footer (p "Written by Shaughnessy Jones and Logan Moore")))))

(serve/servlet start
               #:command-line? #t)