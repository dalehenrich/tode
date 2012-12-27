accessing
renderAttribute
    renderAttribute ifNil: [ renderAttribute := #'basic' ].
    ^ renderAttribute