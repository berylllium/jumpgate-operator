use godot::prelude::*;

struct GdExtension;

#[gdextension]
unsafe impl ExtensionLibrary for GdExtension {}
