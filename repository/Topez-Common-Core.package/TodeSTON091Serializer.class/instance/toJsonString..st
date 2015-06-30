serialization
toJsonString: anObject
  ^ (super toJsonString: anObject) encodeAsUTF8intoString