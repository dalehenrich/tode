as yet unclassified
theBehavior
  | cls |
  cls := self theClass.
  cls ifNil: [ ^ nil ].
  self isMeta
    ifTrue: [ cls := cls class ].
  ^ cls