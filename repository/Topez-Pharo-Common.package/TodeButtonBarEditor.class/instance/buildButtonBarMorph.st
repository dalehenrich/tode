framework
buildButtonBarMorph
	| row switches |
	switches := OrderedCollection new.
	1 to: self switchSpecs size do: [ :index | 
		| switch switchSpec switchLabel switchBalloonText |
		switchSpec := self switchSpecs at: index.
		switchLabel := switchSpec at: 3.
		switchBalloonText := switchSpec at: 4.
		switch := (TZPluggableButtonMorph on: self getState: #switchState: action: nil )
			stateSelectorArgument: index;
			actionBlock: [self switchAction: index];
			label: switchLabel;
			setBalloonText: switchBalloonText;
			borderWidth: 1;
			borderColor: Color gray;
			yourself.
		switches add: switch ].
	row := AlignmentMorph newRow
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		cellInset: 0;
		borderWidth: 0;
		layoutInset: 0;
		yourself.
	switches do: [ :switch | row addMorphBack: switch ].
	row color: Color white.
	switches
		do: [ :switch | 
			switch
				color: Color transparent;
				hResizing: #spaceFill;
				vResizing: #spaceFill ].
	^ OverflowRowMorph new
		baseMorph: row;
		height: row minExtent y