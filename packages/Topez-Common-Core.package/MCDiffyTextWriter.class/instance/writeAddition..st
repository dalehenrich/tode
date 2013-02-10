as yet unclassified
writeAddition: anAddition
  Text
    string: 'Item was added:'
      attributes:
        {(TextEmphasis bold).
          (TextColor green)};
    cr.
  self writePatchFrom: nil to: anAddition definition