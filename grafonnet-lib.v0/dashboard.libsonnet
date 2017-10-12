{
    new(title, editable=true)::
        {
            title: title,
            editable: editable,
            timezone: "browser",
            templates:: [],
            templating: { list: [] },
            rows: [],
        },
    addTemplate(template):: {
        local t = self.templates,
        templates+: [template],
        templating: { list: t },
    },
    addRow(row):: {
        rows+: [row],
    },
}
