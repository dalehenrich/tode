browse
filterBrowseList: list
  options
    at: 'select'
    ifPresent: [ :filterSpec | 
      | selectBlock |
      selectBlock := self resolveFilterSpec: filterSpec.
      ^ list select: selectBlock ].
  ^ list