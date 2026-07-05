package com.mistycalpi.infinizoom.mixin;

import net.minecraft.client.MouseHandler;
import org.spongepowered.asm.mixin.Mixin;

// Scroll wheel no longer adjusts the zoom/FOV amount. Scrolling always behaves
// like vanilla (e.g. hotbar selection), even while the zoom key is held.
@Mixin(MouseHandler.class)
public class ScrollMixin {
}
