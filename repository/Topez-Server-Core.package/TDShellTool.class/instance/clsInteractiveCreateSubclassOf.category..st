cls
clsInteractiveCreateSubclassOf: superClassName category: category
  ^ self
    clsInteractiveCreateSubclassWithTemplate:
      (Class templateForSubclassOf: superClassName category: category)