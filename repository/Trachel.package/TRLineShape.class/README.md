TRLineShape describes a line. Consider the following example:

-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
c := TRCanvas new.

l := TRLineShape new.
l from: 0 @ 0 to: 50 @ 50.
l color: Color red.

c addShape: l.

c
-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

Another example:
-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
c := TRCanvas new.

radius := 80.

0 to: 360 by: 10 do: [ :angle |
	l := TRLineShape new.
	l from: 0 @ 0 to: (radius * (angle degreesToRadians cos)) @ (radius * (angle degreesToRadians sin)).
	l color: Color random.

	c addShape: l.
].

c
-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=