//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <doc_saver/doc_saver_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) doc_saver_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "DocSaverPlugin");
  doc_saver_plugin_register_with_registrar(doc_saver_registrar);
}
