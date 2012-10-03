toolbuilder
buildWith: builder
	| windowSpec textSpec |
	windowSpec := builder pluggableWindowSpec new.
	windowSpec model: self.
	windowSpec label: self label.
	windowSpec children: OrderedCollection new.

	textSpec := builder pluggableTextSpec new.
	textSpec 
		model: self;
		menu: #codePaneMenu:shifted:;
		frame: (0@0corner: 1@1).
	windowSpec children add: textSpec.

	^builder build: windowSpec