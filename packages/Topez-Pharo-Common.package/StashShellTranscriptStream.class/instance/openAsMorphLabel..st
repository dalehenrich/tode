initialization
openAsMorphLabel: labelString
    "Build a morph viewing this transcriptStream"

    | window textMorph |
    window := (TZSystemWindow labelled: labelString) model: self.
    textMorph := StashShellWindowMorph
        on: self
        text: nil
        accept: nil
        readSelection: nil
        menu: #'codePaneMenu:shifted:'.
    textMorph acceptOnCR: true.
    window addMorph: textMorph frame: (0 @ 0 corner: 1 @ 1).
    self prompt.
    ^ window
        openInWorld;
        bounds: (self cliShell topezClientClass bounds at: #'evaluator');
        yourself