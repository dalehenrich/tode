as yet unclassified
children
  | children |
  children := profMonEntry children.
  children ifNil: [ ^ #() ].
  ^ children
    collect: [ :each | 
      self class new
        profMon: profMon;
        profMonEntry: each;
        master: self;
        yourself ]