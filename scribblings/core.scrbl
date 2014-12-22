#lang scribble/manual

@title[#:tag-prefix 'core]{Core}
@defmodule[derp/derp-core]

TODO: Include a @racket[parser?] predicate thing so that structure fields and function argument types
can be prettily linked.

@section{Parsers}

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

@section{Derivatives}

@defproc[(D [input any?]
            [parser any?])
         parser?]{TODO: not really sure what this does.}

@section{Parsing}

@defproc[(parse-null [parser any?])
         set?]{TODO: not really sure what this does.}

@defproc[(parse [input (listof any?)]
                [parser any?])
         set?]{TODO: not really sure what this does.}
