as yet unclassified
fromString: manPage commandPath: commandPath sourceMethod: sourceMethod
  | summaryIndex synopsisIndex descriptIndex |
  summaryIndex := 'NAME' size.
  synopsisIndex := manPage indexOfSubCollection: 'SYNOPSIS'.
  descriptIndex := manPage indexOfSubCollection: 'DESCRIPTION'.
  ^ self new
    summary: (manPage copyFrom: summaryIndex + 1 to: synopsisIndex - 1) trimBoth;
    synopsis:
        (manPage copyFrom: synopsisIndex + 'SYNOPSIS' size to: descriptIndex - 1)
            trimBoth;
    description:
        (manPage copyFrom: descriptIndex + 'DESCRIPTION' size to: manPage size) trimBoth;
    commandPath: commandPath;
    sourceMethod: sourceMethod;
    yourself