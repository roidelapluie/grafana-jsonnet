{
    new(height=250):: {
        collapse: false,
        height: height,
        panels: [],
        repeat: null,
        repeatIteration: null,
        repeatRowId: null,
        showTitle: false,
        title: "Dashboard Row",
        titleSize: "h6",
    },
    addPanel(panel):: {
        panels+: [panel],
    },
    equalizePanels():: {
        local panelNr = std.length(super.panels),
        panels: std.map(function(x) x { span: std.floor(12 / panelNr) }, super.panels),
    },
}
