#lang scribble/manual

@title[#:tag-prefix 'optimization]{Optimizations}
@defmodule[derp/derp-optimize]

@section{Predicates}

@defproc[(ε? [parser parser?])
         boolean?]{TODO: not really sure what this does.}

@defproc[(∅? [parser parser?])
         boolean?]{TODO: not really sure what this does.}

@section{Compacting}

@defproc[(K [parser parser?])
         parser?]{TODO: not really sure what this does.}

@section{Parsing}

@defproc[(parse/compact [input (listof any?)]
                        [parser any?])
         set?]{TODO: not really sure what this does.}