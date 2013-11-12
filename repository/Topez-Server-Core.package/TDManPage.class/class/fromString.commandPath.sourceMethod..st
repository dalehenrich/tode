as yet unclassified
fromString: manPage commandPath: commandPath sourceMethod: sourceMethod
  "see http://pubs.opengroup.org/onlinepubs/009695399/basedefs/xbd_chap12.html for tips on documenting command syntax"

  | summaryIndex synopsisIndex descriptIndex exampleIndex |
  summaryIndex := 'NAME' size.
  synopsisIndex := manPage indexOfSubCollection: 'SYNOPSIS'.
  descriptIndex := manPage indexOfSubCollection: 'DESCRIPTION'.
  exampleIndex := manPage indexOfSubCollection: 'EXAMPLES'.
  ^ self new
    summary: (manPage copyFrom: summaryIndex + 1 to: synopsisIndex - 1) trimBoth;
    synopsis:
        (manPage copyFrom: synopsisIndex + 'SYNOPSIS' size to: descriptIndex - 1)
            trimBoth;
    description:
        (manPage copyFrom: descriptIndex + 'DESCRIPTION' size to: exampleIndex - 1)
            trimBoth;
    examples:
        (manPage copyFrom: exampleIndex + 'EXAMPLES' size to: manPage size) trimBoth;
    commandPath: commandPath;
    sourceMethod: sourceMethod;
    yourself