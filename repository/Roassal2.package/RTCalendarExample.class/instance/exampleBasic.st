sources
exampleBasic

| b |
b := RTCalendarBuilder new.
b dates: (Date today to: Date today next next).
b build.
^ b view
