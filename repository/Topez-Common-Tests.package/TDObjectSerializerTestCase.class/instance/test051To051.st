tests
test051To051
  | serializer1 serializer2 |
  serializer1 := TodeObjectSerializer
    serializeUsing: self protocolSignatureFor051.
  serializer2 := TodeObjectSerializer
    serializeUsing: self protocolSignatureFor051.
  self
    assert:
      (serializer2 fromString: (serializer1 toString: self objectStructure))
        = self objectStructure