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

@defform[#:literals
         (∅ ε ε* quote token empty eps eps* ∪ ★ + ? ∘ or rep rep+ opt seq list list! unquote
          quasiquote → --> $--> |@-->| >--> car)
         (lang maybe-literal-handler language-clause)
         #:grammar
         [(maybe-literal-handler (code:line)
                                 literal-handler)
          (language-clause (∅)
                           (empty)
                           (ε maybe-result)
                           (ε* result-set)
                           (eps maybe-result)
                           (eps* result-set)
                           (token pred)
                           (#,(elem (racket quote)) literal)
                           (∪ language-clause ...)
                           (or language-clause ...)
                           (∘ language-clause ...)
                           (seq language-clause ...)
                           (list language-clause ...)
                           (list! maybe-unquote-language-clause ...)
                           (quasiquote maybe-unquote-language-clause ...)
                           (★ language-clause)
                           (rep language-clause)
                           (+ language-clause)
                           (rep+ language-clause)
                           (? language-clause maybe-result)
                           (opt language-clause maybe-result)
                           (→ language-clause procedure)
                           (--> language-clause procedure)
                           (|@-->| language-clause procedure)
                           (>--> language-clause match-clause ...)
                           ($--> language-clause expr ...))
          (maybe-result (code:line)
                        result)
          (maybe-unquote-language-clause language-clause
                                         (#,(elem (racket unquote)) language-clause))]
         #:contracts
         ([literal-handler (any? . -> . parser?)]
          [result any?]
          [result-set set?]
          [pred (any? . -> . boolean?)]
          [procedure (any? . -> . any?)])]{TODO: not really sure what this does.
                        
                        The @racket[lang] form generates parsers for regular languages.
                        
                        @itemlist[@item{@racket[∅], @racket[empty] and stuff}
                                  @item{@racket[ε], @racket[eps] and such}
                                  @item{@racket[ε*], @racket[eps*] and so onsorry}]}

@defform[(grammar-rule ...)]{TODO: not really sure what this does.}

@defform[(grammar ...)]{TODO: not really sure what this does.}