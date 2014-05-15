#lang racket/base

(require pict
         racket/format
         slideshow/base
         unstable/gui/ppict
         unstable/gui/pslide)

(provide set-grid-base-pict!
         (rename-out [background-pict grid-base-pict]))

(define (background-pict)
  (let loop ([hl (colorize (hline client-w 1) "gray")]
             [vl (colorize (vline 1 client-h) "gray")]
             [pict (blank client-w client-h)]
             [pos 0])
    (cond [(>= pos 1.05) pict]
          [else
           (loop hl vl
                 (ppict-do
                  pict
                  #:go (coord 0 pos 'lc)
                  hl 
                  #:go (coord 0 pos 'lt)
                  (colorize (text (~r pos #:precision 2)) "gray")
                  #:go (coord pos 0 'lt)
                  (colorize (text (~r pos #:precision 2)) "gray")
                  #:go (coord pos 0 'ct)
                  vl)
                 (+ pos 0.05))])))

(define (set-grid-base-pict!)
  (pslide-base-pict background-pict))
