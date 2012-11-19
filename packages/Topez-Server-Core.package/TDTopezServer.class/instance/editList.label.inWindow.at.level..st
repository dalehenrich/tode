accessing
editList: list label: label inWindow: windowId at: windowName level: level
    self topezClientForwarder
        editStonList: (self toString: list level: level)
        label: label
        inWindow: windowId
        at: windowName