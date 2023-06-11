#include "include/doc_saver/doc_saver_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "doc_saver_plugin.h"

void DocSaverPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  doc_saver::DocSaverPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
