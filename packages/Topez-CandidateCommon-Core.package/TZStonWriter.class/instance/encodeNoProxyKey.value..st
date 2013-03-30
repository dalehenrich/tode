private
encodeNoProxyKey: key value: value
    | oldNoProxy |
    oldNoProxy := noProxy.
    noProxy := true.
    self nextPut: key.
    noProxy := oldNoProxy.
    self prettyPrintSpace.
    writeStream nextPut: $:.
    self prettyPrintSpace.
    self nextPut: value