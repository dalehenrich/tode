public - configuring - animation
useAnimation
	"When bar have to be removed, there is an animation to translate the bars"
	layoutTranslator := RTSmoothLayoutTranslator new.
	layoutTranslator nbCycles: 0.2.
	layoutTranslator view: self view