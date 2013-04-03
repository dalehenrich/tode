as yet unclassified
writeModification: aModification
  stream
    nextPutAll:
        (Text
            string: 'Item was changed:'
            attributes:
              {(TextEmphasis bold).
              (TextColor blue)});
    cr.
  self writePatchFrom: aModification obsoletion to: aModification definition