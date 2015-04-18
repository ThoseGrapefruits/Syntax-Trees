#lang racket

(require 2htdp/image)

;; generate-tree : String String Boolean Boolean Boolean -> Image
;; (generate-tree input font color? subscript? triangles?)
;; Generates a syntax tree based on the given string
;; String Format:
;;    [S [NP phpSyntaxTree][VP [V creates][NP nice syntax trees]]]
;; Features:
;;   Primary:
;;     - Make the tree structure
;;     - Draw lines
;;   Bells:
;;     - Triangles for multi-word entries (toggleable)
;;     - Multi-line entries
;;   Whistles:
;;     - Automatic numbering of repeated entries (toggleable)
;;     - Coloring (toggleable)
(define (generate-tree input font color? subscript? triangles? ))