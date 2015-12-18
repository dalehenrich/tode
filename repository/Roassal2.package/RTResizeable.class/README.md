A RTResizeable is an interaction to enable resizing element.
Here is an example:
-=-=-=-=
v := RTView new.

s := RTBox new color: Color blue; width: [ :c | c numberOfVariables * 5 ]; height: #numberOfMethods.
e := s elementOn: RTView.

e @ RTResizeable.
v add: e.
-=-=-=-=
