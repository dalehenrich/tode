private
compiledMethodAt: selector
  ^ (self class whichClassIncludesSelector: selector) compiledMethodAt: selector