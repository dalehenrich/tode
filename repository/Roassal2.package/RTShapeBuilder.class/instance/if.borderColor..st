shapes
if: conditionBlock borderColor: colorBlock
	"If conditionBlock is evaluated at true, then colorBlock is used to set the color of the node. Both conditionBlock and colorBlock are evaluated with the model value of the node."
	| oldBlockOrValue |
	oldBlockOrValue := self borderColor.
	^self borderColor: [ :aModel | (conditionBlock rtValue: aModel)
									ifTrue: [ colorBlock rtValue: aModel ] 
									ifFalse: [ 
										"Having to create a new element is rather ugly. 
										Ideally, the oldBlockOrValue has to be 'unwrapped' for the translation"
										oldBlockOrValue rtValue: (RTElement on: aModel) ]].
							
						
