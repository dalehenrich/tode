as yet unclassified
breakSet: behavior selector: selector step: stepPoint
  | meth |
  meth := behavior compiledMethodAt: selector.
  ^ self breakSet: meth step: stepPoint