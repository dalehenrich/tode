as yet unclassified
parseOptionSpec: optionSpec
  "The optionSpec argument is a string that specifies the option characters that are valid for this program. An option character in this string can be followed by a colon (‘:’) to indicate that it takes a required argument. If an option character is followed by two colons (‘::’), its argument is optional; this is a GNU extension."

  | optionSpecs optStream |
  optionSpecs := Dictionary new.
  optStream := ReadStream on: optionSpec.
  [ optStream atEnd ]
    whileFalse: [ 
      | opt arg peek |
      opt := optStream next.
      peek := optStream peek.
      arg := #'none'.
      peek == $:
        ifTrue: [ 
          arg := #'required'.
          optStream next.
          optStream atEnd
            ifFalse: [ 
              peek := optStream peek.
              peek == $:
                ifTrue: [ 
                  arg := #'optional'.
                  optStream next ] ] ].
      optionSpecs at: opt put: arg ].
  ^ optionSpecs