#lang racket

(provide (all-from-out "derp-core.rkt")
         (all-from-out "derp-optimize.rkt")
         (all-from-out "derp-sugar.rkt"))

(require (except-in "derp-core.rkt" ∅? ε?)
         "derp-optimize.rkt"
         "derp-sugar.rkt")