coding
addElement: element toMethodElement: methodElement
    "Poor man's double dispatching ... pasting method on instance or class side"

    | sourceMethodElement |
    self flag: #'hack'.	"deserves place in clickBlock land"
    (#('TZMethodElement' 'TZMessageElement') includes: element asTopezProxy proxyClassName)
        ifFalse: [ ^ false ].
    sourceMethodElement := element copy.
    sourceMethodElement isMeta: methodElement isMeta.
    ^ self addMethodElement: sourceMethodElement toElement: methodElement