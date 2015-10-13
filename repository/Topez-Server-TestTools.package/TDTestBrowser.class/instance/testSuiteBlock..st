initialization
testSuiteBlock: aBlock
  self initResults.
  testSuiteBlock := aBlock.
  self testSuite	"trigger initial evaluation"