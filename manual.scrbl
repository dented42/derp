#lang scribble/manual

@(require (for-label racket
                     "derp.rkt"))


@title{Derp: Parsing with Derivatives}

Derp is a parsing library that's really cool and such.

@table-of-contents[]

@;section{Introduction}

@section{Core}
@defmodule[derp/derp-core]

TODO: Include a @racket[parser?] predicate thing so that structure fields and function argument types
can be prettily linked.

@subsection{Parsers}

@defstruct[∅
           ()
           #:omit-constructor]{The empty parser. Feeding input into it has no effect, and it
                               contains no results.}

@defstruct[ε
           ([results set?])
           #:omit-constructor]{TODO: not really sure what this does.}

@defstruct[token
           ([value any?])
           #:omit-constructor]{TODO: not really sure what this does.}

@defstruct[δ
           ([lang parser?])
           #:omit-constructor]{TODO: not really sure what this does.}

@subsection{Derivatives}

@defproc[(D [input any?]
            [parser any?])
         parser?]{TODO: not really sure what this does.}

@subsection{Parsing}

@defproc[(parse-null [parser any?])
         set?]{TODO: not really sure what this does.}

@defproc[(parse [input (listof any?)]
                [parser any?])
         set?]{TODO: not really sure what this does.}

@section{Optimizations}
@defmodule[derp/derp-optimize]

@subsection{Predicates}

@defproc[(ε? [parser parser?])
         boolean?]{TODO: not really sure what this does.}

@defproc[(∅? [parser parser?])
         boolean?]{TODO: not really sure what this does.}

@subsection{Compacting}

@defproc[(K [parser parser?])
         parser?]{TODO: not really sure what this does.}

@subsection{Parsing}

@defproc[(parse/compact [input (listof any?)]
                        [parser any?])
         set?]{TODO: not really sure what this does.}

@section{Sugar}
@defmodule[derp/derp-sugar]

@subsection{Literal Handling}

@defproc[(default-literal->language [literal any?])
         boolean?]{TODO: not really sure what this does.}

@defparam[current-literal->language
          predicate
          (any? . -> . boolean?)]{TODO: not really sure what this does.}

@subsection{Languages & Grammars}

@defform[(lang ...)]{TODO: not really sure what this does.}

@defform[(grammar-rule ...)]{TODO: not really sure what this does.}

@defform[(grammar ...)]{TODO: not really sure what this does.}