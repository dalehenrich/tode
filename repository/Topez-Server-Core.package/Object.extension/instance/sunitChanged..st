*topez-server-core
sunitChanged: aTestCase
  "for tODE, just set a session temp to hold the test that is currently running"

  SessionTemps current at: #'TODE_SUNIT_CURRENT_TEST_CASE' put: aTestCase