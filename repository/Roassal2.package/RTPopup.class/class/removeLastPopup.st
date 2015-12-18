lastPopup
removeLastPopup
    self lastPopup ifNil: [ ^ self ].
    self lastPopup first view isNotNil ifTrue: [ self lastPopup do: #remove ].
    self resetLastPopup