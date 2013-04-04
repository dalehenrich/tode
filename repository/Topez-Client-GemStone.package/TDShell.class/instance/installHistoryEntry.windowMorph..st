evaluator engine
installHistoryEntry: historyLine windowMorph: windowMorph
  | editor |
  editor := windowMorph textMorph editor.
  editor
    selectInvisiblyFrom: windowMorph inputMark + 1
    to: windowMorph text size.
  editor replaceSelectionWith: historyLine