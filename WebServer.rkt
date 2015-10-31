#lang racket
(require web-server/servlet
         web-server/servlet-env)
;(require (file "TreeGenerator.rkt"))

#|
Features:
  Primary:
    - Text input to build syntax tree
    - Output resulting syntax tree image

  Bells:
    - Nice style sheet

  Whistles:
    - Some alternative visual way to build syntax trees

|#

(define GET-ID 'phrase)

(define (generate req)
  (response/xexpr
    `(html (head (title "Better Syntax Tree Generator"))
	   (body (h1 "Better Syntax Tree Generator")
		 (img ((src "path_to_image") alt=))
	   (footer (p "Written by Shaughnessy Jones and Logan Moore")))))

(define (start req)
  (response/xexpr
    `(html (head (title "Better Syntax Tree Generator"))
	   (body (h1 "Better Syntax Tree Generator"))
	   (footer (p "Written by Shaughnessy Jones and Logan Moore")))))

(serve/servlet start
	       #:servlet-regexp #rx""
	       #:command-line? #t)
