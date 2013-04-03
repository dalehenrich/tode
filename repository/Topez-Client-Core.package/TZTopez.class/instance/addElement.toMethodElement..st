coding
addElement: anElement toMethodElement: methodElement
    "Poor man's double dispatching ... pasting method on instance or class side"

    self flag: #'hack'.	"deserves place in clickBlock land"
    (#('TZMethodElement' 'TZMessageElement') includes: anElement asTopezProxy proxyClassName)
        ifFalse: [ ^ false ].
    ^ self addMethodElement: anElement toElement: methodElement isMeta: methodElement isMeta