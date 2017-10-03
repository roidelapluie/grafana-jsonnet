{
    panel:: {
        new(title):: {
            title: title,
            targets: [],
            span: 3,
        },
        addTarget(target, name):: {
            targets+: [target],
        },
        setFormat(f):: {
            format: f,
        },
        uptime():: {
            format: "s",
            decimals: 1,
            postfix: "s",
            postfixFontSize: "80%",
        },
    },
    singleStatPanel:: self.panel {
        new(title):: super.new(title) {
            type: "singlestat",
            valueName: "current",
        },
    },
    graphPanel:: self.panel {
        new(title):: super.new(title) {
            type: "graph",
        },
    },
}
