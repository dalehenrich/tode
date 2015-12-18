utility
createParentMenu: aTitle background: aColor

	^ self createParentMenu: aTitle background: aColor highlightColor: (aColor alpha: (aColor alpha + 0.2)).