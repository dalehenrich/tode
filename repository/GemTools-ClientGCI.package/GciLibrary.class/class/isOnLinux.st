login
isOnLinux

	^Smalltalk os platformName = 'unix' and: [SmalltalkImage current osVersion beginsWith: 'linux'].
	