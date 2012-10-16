settings
defaultSettingsOn: aBuilder
    <systemsettings>
    (aBuilder group: #'Editors')
        label: 'Editors' translated;
        description: 'Editors shortcuts' translated;
        parent: #'keymappings';
        with: [ self buildTopezEditorSettingsOn: aBuilder ]