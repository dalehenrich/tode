writing
writeAddition: ar
  stream
    nextPutAll:
        (Text
            string: 'Item was added:'
            attributes:
              {(TextEmphasis bold).
              (TextColor color: Color brown)});
    cr.
  self
    writePatchFrom: ''
    to: (ar at: 4)
    type: (ar at: 3)
    label: (ar at: 1)