accessing
currentTestCase: aString
  ^ SessionTemps current at: #'TODE_SUNIT_CURRENT_TEST_CASE' put: aString