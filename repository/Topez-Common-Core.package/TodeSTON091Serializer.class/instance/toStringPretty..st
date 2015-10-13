serialization
toStringPretty: anObject
  ^ (super toStringPretty: anObject) encodeAsUTF8intoString