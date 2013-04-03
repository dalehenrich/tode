private
do: doBlock validate: validationBlock
    ^ self doNoError: [ validationBlock value: (doBlock value: self topez) ]