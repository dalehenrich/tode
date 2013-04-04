initialization
initialize
  InQueryBlock := false.
  CascadedMessageInsideParentheses := false.
  FormatCommentWithStatements := true.
  IndentString := '  '.
  IndentsForKeywords := 1.
  KeepBlockInMessage := true.
  LineUpBlockBrackets := false.
  MaxLineLength := 80.
  MethodSignatureOnMultipleLines := false.
  MinimumNewLinesBetweenStatements := 1.
  MultiLineMessages := #(#'ifTrue:ifFalse:' #'ifFalse:ifTrue:' #'ifTrue:' #'ifFalse:' #'on:do:' #'ensure:' #'ifCurtailed:').
  NewLineAfterCascade := true.
  NewLineBeforeFirstCascade := true.
  NewLineBeforeFirstKeyword := false.
  NewLinesAfterMethodComment := 2.
  NewLinesAfterMethodPattern := 1.
  NewLinesAfterTemporaries := 1.
  NumberOfArgumentsForMultiLine := 4.
  OneLineMessages := #(#'to:' #'to:do:' #'to:by:' #'to:by:do:').
  PeriodsAtEndOfBlock := false.
  PeriodsAtEndOfMethod := false.
  RetainBlankLinesBetweenStatements := false.
  StringFollowingReturn := ' '.
  StringInsideBlocks := ' '.
  StringInsideParentheses := ''.
  TraditionalBinaryPrecedence := #(#($| $& $?) #($= $~ $< $>) #($- $+) #($* $/ $% $\) #($@)).
  UseTraditionalBinaryPrecedenceForParentheses := true