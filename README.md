
## What

A handy NSView category for disabling & enabling views in a Cocoa App.

## How

### Install

Simply add *NSView+DisableSubviews.h* and *NSView+DisableSubviews.m* files to your Xcode project and import *NSView+DisableSubviews.h* header file wherever you want to call one of the *disableSubviews:* methods.

    #import "NSView+DisableSubviews.h"

### Use

Disable all subviews in an *NSWindow*:

    [self.window.contentView disableSubviews:YES];

Disable all *NSTextField* items in an *NSWindow*:

    [self.window.contentView disableSubviews:YES
                                      ofType:[NSTextField class]];

## License

Licensed under the Apache License, Version 2.0 (the "License").  
See LICENSE.txt or visit http://www.apache.org/licenses/LICENSE-2.0 for more information.
