sources
exampleMonth

| b |
b := RTCalendarBuilder new.
b dates: (Month current to: Month current next).
b build.
^ b view

