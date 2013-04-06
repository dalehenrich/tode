as yet unclassified
fromString: manPage
  | summaryIndex synopsisIndex descriptIndex |
  summaryIndex := 'NAME' size.
  synopsisIndex := manPage indexOfSubCollection: 'SYNOPSIS'.
  descriptIndex := manPage indexOfSubCollection: 'DESCRIPTION'.
  ^ self new
    summary:
        (manPage copyFrom: summaryIndex + 1 to: synopsisIndex - 1) trimWhiteSpace;
    synopsis:
        (manPage copyFrom: synopsisIndex + 'SYNOPSIS' size to: descriptIndex - 1)
            trimWhiteSpace;
    description:
        (manPage copyFrom: descriptIndex + 'DESCRIPTION' size to: manPage size)
            trimWhiteSpace;
    yourself