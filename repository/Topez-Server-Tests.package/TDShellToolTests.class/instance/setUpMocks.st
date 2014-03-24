as yet unclassified
setUpMocks
  | mockClass |
  mockClass := self createMockClass.
  mockClass
    addCategory: 'instance-side';
    classComment: self mockClassComment stamp: nil.
  mockClass class addCategory: 'class-side'