initialization
buildListMorph
    ^ TZPluggableListMorph new
        hResizing: #'spaceFill';
        vResizing: #'spaceFill';
        on: self
            list: #'list'
            selected: #'listIndex'
            changeSelected: #'listIndex:'
            menu: nil
            keystroke: nil;
        getListElementSelector: #'listAt:';
        keystrokeSelector: #'listKeystroke:';
        doubleClickSelector: #'ok';
        yourself