accessing
activeWindowModel
    (activeWindowIndex < 1 or: [ activeWindowIndex > windows size ])
        ifTrue: [ ^ nil ].
    ^ (windows at: activeWindowIndex) model