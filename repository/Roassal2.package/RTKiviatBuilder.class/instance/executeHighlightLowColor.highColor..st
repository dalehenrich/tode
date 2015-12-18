as yet unclassified
executeHighlightLowColor: lowColor highColor: highColor
| titles |
"define the alpha values of the highlighted and others chart nodes to the view"
	
	( axisTitle = #activated ) ifTrue: [ 
		"for now this way to recover the axis Titles elements in the view is not really clean, but because of using RTAxisRenderer to create the axis and titles in the same time I did not found a way to get only the title element from it."
		titles := OrderedCollection new.
		self kiviatMetrics do: [ :m | titles add: (view elements detect: [ :e |  (e shape isKindOf: RTLabel) and: [ (e trachelShape text) = (m named) ] ])].
		 ].

	((kiviatNodes flatCollect: [ :kn | kn nodeKiviatElements]) asGroup) do: [  :e | 
		e @ (RTShowLabel new labelledInteraction: (RTLabelled new text: [ :el | el kiviatNode named])).
		].
	
	((kiviatNodes flatCollect: [ :kn | kn nodeKiviatElements]) asGroup)  when: TRMouseEnter do: [  :evt | 
		(kiviatNodes select: [ :kn | kn named = evt element model kiviatNode named ]) do: [ :kn |
			
			kn nodeKiviatElements do: [ :e | self recordElement: e. e trachelShape color: (e trachelShape color alpha: highColor)].
			kn edgeKiviatElements do: [ :e | self recordElement: e. e trachelShape color: (e trachelShape color alpha: highColor)].
			].
		(kiviatNodes select: [ :kn | kn named ~= evt element model kiviatNode named ]) do: [ :kn |
			kn nodeKiviatElements do: [ :e | self recordElement: e. e trachelShape color: (e trachelShape color alpha: lowColor)].
			kn edgeKiviatElements do: [ :e | self recordElement: e. e trachelShape color: (e trachelShape color alpha: lowColor)]
			].
		( axisTitle = #activated ) ifTrue: [ titles do: [ :t | t trachelShape color: (t trachelShape color alpha: 0)]].
		view signalUpdate.
		].
	
	((kiviatNodes flatCollect: [ :kn | kn nodeKiviatElements]) asGroup) when: TRMouseLeave do: [  :evt | 
		kiviatNodes do: [ :kn |
			kn nodeKiviatElements do: [ :e | e trachelShape color: (e attributes at: #originalColor)].
			kn edgeKiviatElements do: [ :e | e trachelShape color: (e attributes at: #originalColor)].
			view signalUpdate].
		( axisTitle = #activated ) ifTrue: [ titles do: [ :t | t trachelShape color: (t trachelShape color alpha: 1)]].
		view signalUpdate.
		]. 