accessing
nextAvailableWindowId
    1 to: windows size do: [ :index | (windows at: index) ifNil: [ ^ index ] ].
    self error: 'No slots available for windows'