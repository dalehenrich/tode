as yet unclassified
current
  | singleton |
  singleton := SessionTemps current at: self sessionTempsName otherwise: nil.
  singleton == nil
    ifTrue: [ 
      singleton := self new.
      SessionTemps current at: self sessionTempsName put: singleton ].
  ^ singleton