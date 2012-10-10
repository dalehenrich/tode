accessing
nativeIn: topez
    native ifNil: [ native := topez session library localFor: (topez session asOopType: self oop) ].
    ^ native