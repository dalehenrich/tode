client callbacks
serializeObjectsUsing: protocolSignatureArray
  objectSerializer := TodeObjectSerializer
    serializeUsing: protocolSignatureArray.
  ^ nil