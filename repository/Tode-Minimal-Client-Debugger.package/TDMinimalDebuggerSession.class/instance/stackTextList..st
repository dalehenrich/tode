accessing
stackTextList: textList
	1 to: textList size do: [ :frameIndex | (stack at: frameIndex) frameText: (textList at: frameIndex) ]