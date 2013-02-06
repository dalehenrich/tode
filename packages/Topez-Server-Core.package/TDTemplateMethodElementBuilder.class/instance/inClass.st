as yet unclassified
inClass
  | cls |
  cls := self methodClass.
  self isMeta
    ifTrue: [ cls := cls class ].
  ^ cls