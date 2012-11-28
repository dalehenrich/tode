as yet unclassified
addBlock
    ^ [ :node :commandName :block | self parent addBlock value: node parent value: commandName value: block ]