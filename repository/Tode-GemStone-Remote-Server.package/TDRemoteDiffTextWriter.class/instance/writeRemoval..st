writing
writeRemoval: ar
  stream
    nextPutAll:
        (Text
            string: 'Item was removed:'
            attributes:
              {(TextEmphasis bold).
              (TextColor red)});
    cr.
  self
    writePatchFrom: (ar at: 4)
    to: ''
    type: (ar at: 3)
    label: (ar at: 1)