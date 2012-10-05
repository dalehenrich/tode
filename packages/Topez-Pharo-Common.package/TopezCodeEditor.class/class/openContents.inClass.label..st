instance creation
openContents: stringOrText inClass: aBehavior label: aLabel
    "Open a new workspace with the given contents"

    ^ self new
        openLabel: aLabel;
        classOrMetaClass: aBehavior;
        contents: stringOrText;
        changed: #'contents';
        yourself