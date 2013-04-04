as yet unclassified
writeRemoval: aRemoval
  stream
    nextPutAll:
        (Text
            string: 'Item was removed:'
            attributes:
              {(TextEmphasis bold).
              (TextColor red)});
    cr.
  self writePatchFrom: aRemoval definition to: nil