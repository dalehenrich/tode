as yet unclassified
parseSourceConflictsOn: fileStream
  "By default, git uses the same style as that is used by merge program from the RCS suite to present such a conflicted hunk, like this:

           Here are lines that are either unchanged from the common
           ancestor, or cleanly resolved because only one side changed.
           <<<<<<< yours:sample.txt
           Conflict resolution is hard;
           let's go shopping.
           =======
           Git makes conflict resolution easy.
           >>>>>>> theirs:sample.txt
           And here is another line that is cleanly resolved or unmodified.

       The area where a pair of conflicting changes happened is marked with markers <<<<<<<, =======, and >>>>>>>. The part before the ======= is
       typically your side, and the part afterwards is typically their side."

  | head commonAncestor merge target hasCommonAncestor |
  head := WriteStream on: String new.
  commonAncestor := WriteStream on: String new.
  merge := WriteStream on: String new.
  target := #'all'.
  hasCommonAncestor := false.
  [ fileStream atEnd ]
    whileFalse: [ 
      | line skip |
      line := fileStream nextLine.
      skip := false.
      (line beginsWith: '<<<<<<<')
        ifTrue: [ 
          target := #'head'.
          skip := true ].
      (line beginsWith: '|||||||')
        ifTrue: [ 
          target := #'commonAncestor'.
          hasCommonAncestor := skip := true ].
      (line beginsWith: '=======')
        ifTrue: [ 
          target := #'merge'.
          skip := true ].
      (line beginsWith: '>>>>>>>')
        ifTrue: [ 
          target := #'all'.
          skip := true ].
      skip
        ifFalse: [ 
          (target == #'head' or: [ target == #'all' ])
            ifTrue: [ head nextPutAll: line ].
          (target == #'commonAncestor' or: [ target == #'all' ])
            ifTrue: [ commonAncestor nextPutAll: line ].
          (target == #'merge' or: [ target == #'all' ])
            ifTrue: [ merge nextPutAll: line ] ] ].
  ^ {(head contents).
  (hasCommonAncestor
    ifTrue: [ commonAncestor contents ]
    ifFalse: [ nil ]).
  (merge contents)}