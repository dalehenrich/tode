instance creation
openContents: stringOrText label: aLabel
    "Open a new workspace with the given contents"

    ^ self new
        openLabel: aLabel;
        contents: stringOrText;
        changed: #'contents';
        yourself