ston
toString: object withOptions: options
    ^ String streamContents: [ :stream | self put: object onStream: stream withOptions: options ]