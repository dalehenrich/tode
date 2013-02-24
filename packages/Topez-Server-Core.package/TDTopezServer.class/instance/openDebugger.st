accessing
openDebugger
  self ensureSessionMethodsEnabled.
  self evaluateTokens: #('debug') objIn: objIn value.
  ^ nil