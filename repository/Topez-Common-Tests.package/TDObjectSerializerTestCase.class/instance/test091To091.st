tests
test091To091
  | serializer1 serializer2 |
  serializer1 := TodeObjectSerializer
    serializeUsing: self protocolSignatureFor091.
  serializer2 := TodeObjectSerializer
    serializeUsing: self protocolSignatureFor091.
  self
    assert:
      (serializer2 fromString: (serializer1 toString: self objectStructure))
        = self objectStructure