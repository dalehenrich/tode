accessing
currentTestCase
  ^ SessionTemps current at: #'TODE_SUNIT_CURRENT_TEST_CASE' ifAbsent: [ '' ]