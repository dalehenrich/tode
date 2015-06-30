client callbacks
serializeObjectsUsing: protocol version: protocolVersionString
  objectSerializer := TodeObjectSerializer
    serializeUsing:
      {protocol.
      protocolVersionString}.
  ^ nil