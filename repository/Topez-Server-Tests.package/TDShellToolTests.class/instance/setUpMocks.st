as yet unclassified
setUpMocks
  | mockClass |
  mockClass := self createMockClass.
  mockClass
    addCategory: 'instance-side';
    comment: self mockClassComment.
  mockClass class addCategory: 'class-side'