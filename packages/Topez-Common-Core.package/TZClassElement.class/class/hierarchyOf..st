instance creation
hierarchyOf: classList
    | order classes indents results |
    order := SortedCollection
        sortBlock: [ :assoc1 :assoc2 | 
            | result chain1 chain2 max i |
            result := nil.
            chain1 := assoc1 key.
            chain2 := assoc2 key.
            max := chain1 size min: chain2 size.
            i := 1.
            [ result isNil and: [ i <= max ] ]
                whileTrue: [ 
                    (chain1 at: i) = (chain2 at: i)
                        ifTrue: [ i := i + 1 ]
                        ifFalse: [ result := (chain1 at: i) name < (chain2 at: i) name ] ].
            result isNil
                ifTrue: [ chain1 size < chain2 size ]
                ifFalse: [ result ] ].
    classes := Set new.
    classList
        do: [ :cl | 
            classes addAll: cl allSuperclasses.
            classes add: cl.
            classes addAll: cl allSubclasses ].
    classes
        do: [ :cl | 
            | supersChain |
            supersChain := cl withAllSuperclasses reversed.
            supersChain removeAllSuchThat: [ :class | (classes includes: class) not ].
            order add: supersChain contents -> cl ].
    indents := IdentityDictionary new.
    order do: [ :assoc | indents at: assoc value put: assoc key size - 1 ].
    classes := classes asArray sorted: [ :a :b | a name <= b name ].
    results := OrderedCollection new.
    order
        do: [ :assoc | 
            | cl element |
            cl := assoc value.
            element := TZClassElement new
                elementClass: cl;
                elementClassName: cl name;
                indent: (indents at: cl);
                inExtensionClassList: false;
                yourself.
            results add: element ].
    ^ results asArray