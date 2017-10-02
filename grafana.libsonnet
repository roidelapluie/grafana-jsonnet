{
    dashboard:: {
        new(title, editable=true)::
            {
                title: title,
                editable: editable,
                rows: [],
            },
        addRow(row):: {
            rows+: [row],
        },
    },
    row:: {
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
    },
    panel:: {
        new(title):: {
            title: title,
            targets: [],
        },
        addTarget(target):: {
            targets+: [target],
        },
    },
    graphPanel:: self.panel {
        new(title):: {
            title: title,
            type: "graph",
        },
    },
    target:: {
        new(expr, legend=null):: {
            expr: expr,
            legendFormat: legend,
        },
    },
}
