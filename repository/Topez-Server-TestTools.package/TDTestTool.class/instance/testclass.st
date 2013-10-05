as yet unclassified
testclass
  "test class <class-name> [ <class-name> ... ]"

  | classNames |
  classNames := tokens copyFrom: 2 to: tokens size.
  ^ self testclass: classNames