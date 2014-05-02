TEMPLATE = subdirs

SUBDIRS += qt_app file_commander_core qtutils plugininterface imageviewerplugin textviewerplugin

qtutils.subdir = qtutils

plugininterface.subdir = plugininterface

file_commander_core.subdir = file-commander-core
file_commander_core.depends = qtutils plugininterface

qt_app.subdir  = qt-app
qt_app.depends = file_commander_core qtutils

imageviewerplugin.subdir = plugins/viewer/imageviewer
imageviewer.depends = core plugininterface

textviewerplugin.subdir = plugins/viewer/textviewer
textviewerplugin.depends = core plugininterface