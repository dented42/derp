#lang scribble/manual

@(require (for-label "../derp-sugar.rkt"))

@title[#:tag-prefix 'sugar]{Sugar}
@defmodule[derp/derp-sugar]

@section{Literal Handling}

@defproc[(default-literal->language [literal any?])
         boolean?]{TODO: not really sure what this does.}

@defparam[current-literal->language
          predicate
          (any? . -> . parser?)]{TODO: not really sure what this does.}

@section{Languages & Grammars}

@defform[(sandwich-factory maybe-name factory-component ...)
         #:grammar
         [(maybe-name (code:line)
                      name)
          (factory-component (code:line #:protein protein-expr)
                             [vegetable vegetable-expr])]]{
  Constructs a sandwich factory. If @racket[maybe-name] is provided,
  the factory will be named. Each of the @racket[factory-component]
  clauses adds an additional ingredient to the sandwich pipeline.
}

@defform[#:literals
         (∅ ε ε* quote token? empty eps eps* ∪ ★ + ? ∘ or rep rep+ opt seq list list! unquote
          quasiquote → --> $--> @--> >--> car)
         (lang maybe-literal-handler language-clause)
         #:grammar
         [(maybe-literal-handler (code:line)
                                 literal-handler)
          (language-clause empty-clause
                           null-clause
                           token-clause ;; this includes the (quote lit) form
                           union-clause
                           seq-clause
                           list-clause
                           star-clause
                           many-clause
                           opt-clause
                           proc-clause)
          (empty-clause (∅)
                        (empty))
          (null-clause (ε maybe-result)
                       (ε* result-set))
          (token-clause (token? pred)
                        (#,(elem (racket quote)) quotable))
          (union-clause TODO)
          (seq-clause TODO)
          (list-clause TODO)
          (star-clause TODO)
          (many-clause TODO)
          (opt-clause TODO)
          (proc-clause TODO)
          (maybe-result (code:line)
                        result)]
         #:contracts
         ([literal-handler (any? . -> . parser?)]
          [result any?]
          [result-set set?]
          [pred (any? . -> . boolean?)]
          [quotable TODO])]{TODO: not really sure what this does.}

@defform[(grammar-rule ...)]{TODO: not really sure what this does.}

@defform[(grammar ...)]{TODO: not really sure what this does.}