as yet unclassified
printText
  | attribute |
  attribute := self resolved
    ifTrue: [ 
      self selection == #'remote'
        ifTrue: [ #'underlined' ]
        ifFalse: [ 
          self selection == #'local'
            ifTrue: [ #'normal' ]
            ifFalse: [ #'italic' ] ] ]
    ifFalse: [ #'bold' ].
  ^ Text
    string:
      self conflict operation definition summary , '(' , self selection asString , ')'
    attribute: (TextEmphasis perform: attribute)