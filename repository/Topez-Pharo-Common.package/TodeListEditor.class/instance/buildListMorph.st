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
    keystrokeSelector: #'listKeystroke:';
    handleBasicKeys: true;
    autoDeselect: true;
    yourself