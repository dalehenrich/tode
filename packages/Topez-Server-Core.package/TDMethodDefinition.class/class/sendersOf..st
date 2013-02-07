as yet unclassified
sendersOf: selector
  | defs |
  defs := Array new.
  (SystemNavigation default sendersOf: selector)
    do: [ :gsMethod | 
      defs
        add:
          (self className: gsMethod inClass theNonMetaClass name isMeta: gsMethod inClass isMeta selector: gsMethod selector) ].
  ^ defs