instance creation
buildMorph
	morph := self morphClass new
		canvas: self;
		extent: self canvas extent.
	^ morph