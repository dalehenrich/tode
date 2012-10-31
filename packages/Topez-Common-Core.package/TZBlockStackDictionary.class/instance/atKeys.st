accessing printing
atKeys
    | results |
    results := Set new.
    self keysAndValuesDo: [ :className :dict | results addAll: dict keys ].
    ^ results