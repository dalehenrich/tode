accessing
topezClient: topez
    self client at: #'topezClient' put: topez.
    self named values do: [ :proxy | proxy topezClient: topez ].
    self indexed do: [ :proxy | proxy topezClient: topez ]