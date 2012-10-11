editting
activateWindow: windowId
    (self currentWindowId: windowId) ifNotNil: [:win | win activate]