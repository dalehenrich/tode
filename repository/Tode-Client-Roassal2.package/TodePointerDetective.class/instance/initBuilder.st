private
initBuilder
	| lineShape |
	builder view: self view.
	lineShape := RTArrowedLine new
		color: (Color lightGray alpha: 0.5);
		width: 1.5.
	lineShape withShorterDistanceAttachPoint.
	lineShape inverted.
	builder shape circle
		borderWidth: 0.02;
		size: 40;
		color: (Color blue alpha: 0.5).
	builder lineShape: lineShape.
	builder
		layout:
			(RTHorizontalTreeLayout new
				horizontalGap: 80;
				verticalGap: 20).
	builder
		onLeftClickServerDo: [ :exploraNode | 
					| nde |
					nde := exploraNode element.
					exploraNode expandDirection: #LeftClick -> #From with: (self showPointersTo: nde model).
					nde model wrapper isNonTerminal
						ifTrue: [ exploraNode element color: (Color blue alpha: 0.5) ] ]
			with: [ :nde | self showPointersTo: nde ];
		withPopup: [ :nde | self labelForNode: nde ];
		onRightClickMenu:
				{('center'
						-> [ :exploraNode | 
							self view canvas camera translateTo: exploraNode element encompassingRectangle center.
							self view canvas signalUpdate ]).
					('inspect' -> [ :exploraNode | self topez inspectRoassalObject: exploraNode element model wrapper ])}.
	builder dragChildren