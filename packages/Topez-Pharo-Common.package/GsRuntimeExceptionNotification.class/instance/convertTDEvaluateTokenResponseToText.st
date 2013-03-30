accessing
convertTDEvaluateTokenResponseToText
  ^ Text
    string: self description
    attributes:
      {(TextEmphasis italic).
      (TextEmphasis bold)}