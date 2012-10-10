as yet unclassified
topez: topez
    self client at: #'topez' put: topez.
    self named values do: [ :proxy | proxy topez: topez ].
    self indexed do: [ :proxy | proxy topez: topez ]