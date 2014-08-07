*topez-pharo-common
tzListRenderOn: aCanvas atRow: aRow bounds: bounds color: color backgroundColor: backgroundColor from: aMorph
	"Method extracted from LazyListMorph"
	| attrs useDefaultFont f itemBounds textColor|
	
	attrs := self attributesAt: 1.
	useDefaultFont := true.
	attrs
		do: [:att | att
				forFontInStyle: aMorph font textStyle
				do: [:fon | useDefaultFont := false]].
	f := useDefaultFont
				ifTrue: [ aMorph font]
				ifFalse: [ self fontAt: 1 withStyle: aMorph font textStyle ].
	itemBounds := bounds withHeight: f height.
	itemBounds := itemBounds align: itemBounds leftCenter with: bounds leftCenter.
	"center the item if the font height is different to that of our font"
	textColor := color.
	(self colorAt: 1) ifNotNil: [:aColor | textColor := aColor].
	aCanvas
		drawString: self
		in: itemBounds
		font: (f emphasized: (self emphasisAt: 1))
		color: textColor
		underline: ((self emphasisAt: 1)
				bitAnd: 4)
				> 0
		underlineColor: textColor
		strikethrough: ((self emphasisAt: 1)
				bitAnd: 16)
				> 0
		strikethroughColor: textColor