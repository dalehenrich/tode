metacello
elementCache
    elementCache ifNil: [ elementCache := RcIdentityBag new: 10 ].
    ^ elementCache