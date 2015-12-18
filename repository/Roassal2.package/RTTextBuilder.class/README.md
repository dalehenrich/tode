A RTTextBuilder parses a text and displays it on a RTView.

It uses textTokenizer for splitting text into lines and lines into words. For each word an RTElement is created. It allows to have different shape or/and interaction on each word. User can define how to split text by implementing a textTokenizer; by default RTTextTokenizer. 

All the RTElements representing words are nested to a main RTElement object with padding.

On each word, wordShapeBuilder and wordInteractionBuilder are applied. 

Before applying shape and interaction builders on any RTElement object, hook for main element and wordHook for wor elements are called. It allows to make extra customization for each element.

Instance Variables
	hook:						<BlockClosure>
	padding:					<Integer>
	textTokenizer:				<RTTextTokenizer>
	wordHook:					<BlockClosure>
	wordInteractionBuilder:		<RTInteractionBuilder>
	wordShapeBuilder:			<RTShapeBuilder>

hook
	- is one-orgument-block which receives a main RTElement object; the RTElement object nests all the other objects for a displayed text. It is called before any element initialization. 

padding
	- number of pixes between main RTElement object and nested text.

textTokenizer
	- is responsible for splitting a text into lines and lines into words.

wordHook
	- is two-argument-block which receives a word element and interval of a word in the original text

wordInteractionBuilder
	- interaction builder applied on each word element

wordShapeBuilder
	- shape builder applied on each word element
