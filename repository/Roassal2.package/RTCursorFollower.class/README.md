A decorator that add lines that follow the mouse cursor
-=-=-=-=

| b ds |
b := RTGrapher new.

ds := RTDataSet new.
ds points: #(5 10 6 2 -2.5).
b add: ds.

b addDecorator: RTCursorFollower new.
b build.
^ b view
-=-=-=-=