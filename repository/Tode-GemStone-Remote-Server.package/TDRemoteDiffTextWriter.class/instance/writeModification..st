writing
writeModification: ar
  stream
    nextPutAll:
        (Text
            string: 'Item was changed:'
            attributes:
              {(TextEmphasis bold).
              (TextColor blue)});
    cr.
  self
    writePatchFrom: (ar at: 4)
    to: (ar at: 5)
    type: (ar at: 3)
    label: (ar at: 1)