as yet unclassified
suiteNode: parentNode suite: suite
  ^ (suite asTDObjectNode: parentNode topez: self topez aspect: #'test')
    name: 'suite';
    yourself