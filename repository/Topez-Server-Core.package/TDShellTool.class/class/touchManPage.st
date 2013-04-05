as yet unclassified
touchManPage
  | page |
  page := WriteStream on: String new.
  page
    nextPutAll:
      'NAME
  touch - create new leaf node

SYNOPSIS
  touch type path

DESCRIPTION
  Create the new leaf node at the location specified by the `path`.

  `type` may be:
'.
  (((TDLeafNode allSubclasses
    select: [ :cl | cl theMetaClass selectors includes: #'typeSignature' ])
    collect: [ :cl | cl typeSignature -> cl ]) asArray
    sort: [ :a :b | a key <= b key ])
    do: [ :assoc | 
      page
        nextPutAll: '    ';
        nextPutAll: '`' , assoc key , '` ';
        nextPutAll: ' to produce a ';
        nextPutAll: assoc value name asString;
        cr ].
  ^ page contents