actions
addedIn: trachelCanvas
	"We make sure that there is no existing resize animation in the animation queue."
	| conflictingAnimations |
	conflictingAnimations := trachelCanvas animations 
					select: [ :anim | (anim class == self class 
										and: [ anim element == element ])
										and: [ self ~~ anim ] ].
	trachelCanvas animationsRemoveAll: conflictingAnimations. 
