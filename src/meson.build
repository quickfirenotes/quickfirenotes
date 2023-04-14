services_sources = files('Services/FileIOService.vala')

model_sources = files(
    'Model/FormattedText.vala',
    'Model/FormattingTag.vala',
    'Model/Note.vala',
    'Model/NoteEntry.vala',
    'Model/Notebook.vala',
)

app_dependencies = [
    global_dependencies,
    dependency('gtk4'),
    dependency('granite-7'),
]

app_sources = [
    files('Application.vala', 'MainWindow.vala'),
    model_sources,
    services_sources,
    config_file,
]
