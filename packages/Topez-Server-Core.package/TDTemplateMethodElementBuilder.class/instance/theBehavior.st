as yet unclassified
theBehavior
  | cls |
  cls := self methodClass.
  self isMeta
    ifTrue: [ cls := cls class ].
  ^ cls