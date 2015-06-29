serialization
toString: anObject
  ^ (super toString: anObject) encodeAsUTF8intoString