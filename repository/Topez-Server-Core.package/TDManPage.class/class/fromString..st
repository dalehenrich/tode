instance creation
fromString: manPageString
  "see http://pubs.opengroup.org/onlinepubs/009695399/basedefs/xbd_chap12.html for tips on documenting command syntax"

  | summaryIndex synopsisIndex descriptIndex optionsIndex exampleIndex manPage seeAlsoIndex |
  summaryIndex := 'NAME' size.
  synopsisIndex := manPageString indexOfSubCollection: 'SYNOPSIS'.
  descriptIndex := manPageString indexOfSubCollection: 'DESCRIPTION'.
  optionsIndex := manPageString indexOfSubCollection: 'OPTIONS'.
  exampleIndex := manPageString indexOfSubCollection: 'EXAMPLES'.
  seeAlsoIndex := manPageString indexOfSubCollection: 'SEE ALSO'.
  seeAlsoIndex == 0
    ifTrue: [ seeAlsoIndex := manPageString size ].
  exampleIndex == 0
    ifTrue: [ exampleIndex := seeAlsoIndex ].
  optionsIndex == 0
    ifTrue: [ optionsIndex := exampleIndex ].
  descriptIndex == 0
    ifTrue: [ descriptIndex := optionsIndex ].
  synopsisIndex == 0
    ifTrue: [ synopsisIndex := descriptIndex ].
  manPage := self new
    summary:
        (manPageString copyFrom: summaryIndex + 1 to: synopsisIndex - 1) trimBoth;
    synopsis:
        (manPageString copyFrom: synopsisIndex + 'SYNOPSIS' size to: descriptIndex - 1)
            trimBoth;
    description:
        (manPageString copyFrom: descriptIndex + 'DESCRIPTION' size to: optionsIndex - 1)
            trimBoth;
    options:
        (manPageString copyFrom: optionsIndex + 'OPTIONS' size to: exampleIndex - 1)
            trimBoth;
    examples:
        (manPageString copyFrom: exampleIndex + 'EXAMPLES' size to: seeAlsoIndex - 1)
            trimBoth;
    seeAlso:
        (manPageString copyFrom: seeAlsoIndex + 'SEE ALSO' size to: manPageString size)
            trimBoth;
    yourself.
  ^ manPage