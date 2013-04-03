as yet unclassified
writeAddition: anAddition
  stream
    nextPutAll:
        (Text
            string: 'Item was added:'
            attributes:
              {(TextEmphasis bold).
              (TextColor color: Color brown)});
    cr.
  self writePatchFrom: nil to: anAddition definition