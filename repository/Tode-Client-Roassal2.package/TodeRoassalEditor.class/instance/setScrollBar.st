private
setScrollBar
	b1 := RTScrollBarBuilder new.
	b1 view: self roassalView.
	b1 orientation: #vertical.
	b1 fixedPosition: [ :v | (v view canvas extent x - (v width / 2)) @ (v view canvas extent y / 2) ].
	b1 movable: #isFixed.
	b1 size: [ :v | v view canvas extent y ].
	b1 barShape: #aBox.
	b1 build.
	b2 := RTScrollBarBuilder new.
	b2 view: self roassalView.
	b2 fixedPosition: [ :v | (v view canvas extent x / 2) @ (v view canvas extent y - (v width / 2)) ].
	b2 movable: #isFixed.
	b2 size: [ :v | v view canvas extent x ].
	b2 barShape: #aBox.
	b2 build