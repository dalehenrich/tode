accessing
theBehavior
  | cls |
  cls := self theClass.
  self isMeta
    ifTrue: [ cls := cls class ].
  ^ cls