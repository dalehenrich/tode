initialization
buildListMorph
	^ TZPluggableListMorph new
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		on: self
			list: #list
			selected: #listIndex
			changeSelected: #listIndex:
			menu: #listMenu:
			keystroke: nil;
		keystrokeSelector: #listKeystroke:;
		handleBasicKeys: true;
		autoDeselect: true;
		disallowKeyMapping;
		resetListSelector: #resetMultiListSelection;
		getSelectionListSelector: #multiSelectionAt:;
		setSelectionListSelector: #multiSelectionAt:put:;
		yourself