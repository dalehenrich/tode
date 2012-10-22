accessing
setFindText: aStringOrText
    FindReplaceService default
        findText: aStringOrText isRegex: false;
        changed: #'newFinding'