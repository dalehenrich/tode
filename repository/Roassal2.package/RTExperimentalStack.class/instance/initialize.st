as yet unclassified
initialize
	| zero |
	super initialize.
	values := #yourself.
	xblock := [ :p | p x ].
	yblock := [ :p | p y ].
	order := [ :data | (1 to: data size) asArray ].
	zero := [ :data | (1 to: data first size ) collect: [ :d| 0 ] ].
	offset := zero.
	out := [ :d :y0 | d y0: y0 ].
	stackOffsets := Dictionary new.
	stackOffsets 
		at: #wiggle put: [ :data| self wiggle: data ];
		at: #silhouette put: [ :data| self silhouette: data ];
		at: #expand put: [ :data| self expand: data ];
		at: #zero put: zero.