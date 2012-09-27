login
isOnLinux

	^SmalltalkImage current platformName = 'unix' and: [SmalltalkImage current osVersion beginsWith: 'linux'].
	