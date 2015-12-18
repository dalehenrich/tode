public - sticking
fix: aShape for: anotherShape
	"When anotherShape is moved, then move aShape"
	| b |

	b := [ :shape :step | aShape translateBy: step ].
	anotherShape addCallback: (TRTranslationCallback block: b).

	