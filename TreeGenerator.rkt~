#lang racket

(require 2htdp/image)

#|
generate-tree : String String Boolean Boolean Boolean -> Image
(generate-tree input font color? subscript? triangles?)
Generates a syntax tree based on the given string

Compact String Format:
   [S [NP racketSyntaxTree][VP [V creates][NP lovely, multi-line\nsyntax trees]]]

Expanded String Format:
   [S [NP racketSyntaxTree]
      [VP [V creates]
          [NP lovely, multi-line
              syntax trees]]]

Features:
  Primary:
    - Make the tree structure
    - Draw lines
  Bells:
    - Triangles for multi-word entries (toggleable)
    - Multi-line entries
  Whistles:
    - Automatic numbering of repeated entries (toggleable)
    - Coloring (toggleable)
    - Multi-sentence side-by-side generation

Considerations & Decisions
- Should the parsing be done by the tree generator, or should the web server parse it and
  then pass it off to the generate-tree function as a new easier to work with data type?
    L: I think this should be done in the WebServer, assuming that the task of generating
       the trees is going to be the most difficult part, which it looks like it is to me.
|#

(define (generate-tree input font color? subscript? triangles? ))