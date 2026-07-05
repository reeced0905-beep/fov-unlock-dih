package com.mistycalpi.infinizoom.compat;

import com.mistycalpi.infinizoom.config.ZoomConfigScreen;
import com.terraformersmc.modmenu.api.ConfigScreenFactory;
import com.terraformersmc.modmenu.api.ModMenuApi;

// TODO: ModMenu integration disabled due to Minecraft 26.1.2 API incompatibility
// The ConfigScreenFactory uses obfuscated Minecraft classes that aren't available
// public class ModMenuIntegration implements ModMenuApi {
//
//     @Override
//     public ConfigScreenFactory<?> getModConfigScreenFactory() {
//         return (parent) -> new ZoomConfigScreen(parent);
//     }
// }

public class ModMenuIntegration {
}
