accessing
topez: topez visited: visited
    (visited includes: self oop)
        ifTrue: [ ^ self ].
    visited add: self oop.
    self client at: #'topez' put: topez.
    self named values do: [ :proxy | proxy topez: topez visited: visited ].
    self indexed do: [ :proxy | proxy topez: topez visited: visited ]