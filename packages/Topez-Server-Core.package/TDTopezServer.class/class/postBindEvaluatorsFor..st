as yet unclassified
postBindEvaluatorsFor: anNsc
  evaluator := self
    bindEvaluator: anNsc
    for: self path
    isRangeEqualityOperation: true.
  super postBindEvaluatorsFor: anNsc