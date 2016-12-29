client callbacks
serializeObjectsUsing: protocol version: protocolVersionString
  self objectSerializer: (TodeObjectSerializer serializeUsing: {protocol.
          protocolVersionString}).
  ^ nil