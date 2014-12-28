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
         (lang maybe-literal-handler lang-clause)
         #:grammar
         [(maybe-literal-handler (code:line)
                                 literal-handler)
          (lang-clause (∅)
                       (empty)
                       (ε maybe-result)
                       (ε* result-set)
                       (eps maybe-result)
                       (eps* result-set)
                       (token pred)
                       (#,(elem (racket quote)) literal)
                       (∪ lang-clause ...)
                       (or lang-clause ...)
                       (∘ lang-clause ...)
                       (seq lang-clause ...)
                       (★ lang-clause)
                       (rep lang-clause)
                       (+ lang-clause)
                       (rep+ lang-clause)
                       (? lang-clause maybe-result)
                       (opt lang-clause maybe-result)
                       (list lang-clause ...)
                       (list! maybe-unquote-lang-clause ...)
                       (quasiquote maybe-unquote-lang-clause ...)
                       (car lang-clause)
                       (→ lang-clause procedure)
                       (--> lang-clause procedure)
                       (|@-->| lang-clause procedure)
                       (>--> lang-clause match-clause ...)
                       ($--> lang-clause expr ...))
          (maybe-result (code:line)
                        result)
          (maybe-unquote-lang-clause lang-clause
                                     (#,(elem (racket unquote)) lang-clause))]
         #:contracts
         ([literal-handler (any? . -> . parser?)]
          [result any?]
          [result-set set?]
          [pred (any? . -> . boolean?)]
          [procedure (any? . -> . any?)])]{
  Generates parsers for regular languages.
  
  @itemlist[@item{primitive forms
                  @itemlist[@item{@racket[(∅)] and @racket[(empty)]}
                            @item{@racket[(ε)] and @racket[(eps)]}
                            @item{@racket[(ε*)] and @racket[(eps*)]}
                            @item{@racket[(token pred)]}
                            @item{@racket[(#,(elem (racket quote)) literal)]}]}
            @item{compound forms
                  @itemlist[@item{@racket[(∪ lang-clause ...)] and @racket[(or lang-clause ...)]}
                            @item{@racket[(∘ lang-clause ...)] and @racket[(seq lang-clause ...)]}
                            @item{@racket[(★ lang-clause)] and @racket[(rep lang-clause)]}
                            @item{@racket[(+ lang-clause)] and @racket[(rep+ lang-clause)]}
                            @item{@racket[(? lang-clause maybe-result)] and
                                  @racket[(opt lang-clause maybe-result)]}]}
            @item{list forms
                  @itemlist[@item{@racket[(list lang-clause ...)]}
                            @item{@racket[(list! maybe-unquote-lang-clause ...)]}
                            @item{@racket[(quasiquote maybe-unquote-lang-clause ...)]}
                            @item{@racket[(car lang-clause)]}]}
            @item{reduction forms
                  @itemlist[@item{@racket[(→ lang-clause procedure)] and
                                  @racket[(--> lang-clause procedure)]}
                            @item{@racket[(|@-->| lang-clause procedure)]}
                            @item{@racket[(>--> lang-clause match-clause ...)]}
                            @item{@racket[($--> lang-clause expr ...)]}]}]}

@defform[(grammar-rule ...)]{TODO: not really sure what this does.}

@defform[(grammar ...)]{TODO: not really sure what this does.}