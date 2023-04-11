model_tags_source = files(
    'Model/FormattedText.vala',
    'Model/FormattingTag.vala',
    'Model/Note.vala',
    'Model/NoteEntry.vala',
)

app_dependencies = [
    global_dependencies,
    dependency('gtk4'),
    libadwaita,
    dependency('granite-7'),
]

app_sources = [
    files('Application.vala', 'MainWindow.vala'),
    model_tags_source,
    config_file,
]
