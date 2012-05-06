
## What

A handy NSView category for disabling & enabling UI elements in Cocoa apps.  

Questions and comments are welcome - http://twitter.com/ardalahmet or ardalahmet(at)gmail.com

## How

### Install

Simply add *NSView+DisableSubviews.h* and *NSView+DisableSubviews.m* files to your Xcode project and import *NSView+DisableSubviews.h* header file wherever you want to call one of the *disableSubviews:* methods.

    #import "NSView+DisableSubviews.h"

### Use

Disable all subviews in an NSWindow:

    [self.window.contentView disableSubviews:YES];

Disable all NSTextFields in an NSWindow:

    [self.window.contentView disableSubviews:YES
                                      ofType:[NSTextField class]];

Disable all empty NSTextFields in an NSWindow:

    [self.window.contentView disableSubviews:YES
                                      filter:^BOOL (NSView *v) {
                                          return [v isKindOfClass:[NSTextField class]] &&
                                                 (((NSTextField *) v).stringValue.length < 1);
                                      }];

Disable views in a specified tag range in an NSWindow:

    [self.window.contentView disableSubviews:YES
                                    startTag:3
                                      endTag:7];

Disable views with specified tags in an NSWindow:

    [self.window.contentView disableSubviews:YES
                                    withTags:[NSArray arrayWithObjects:
                                              [NSNumber numberWithInt:2],
                                              [NSNumber numberWithInt:5],
                                              [NSNumber numberWithInt:8], nil]];

You can group certain UI elements using NSBoxes or NSViews and call *disableSubviews:* methods on them to obtain more flexibility, if you need.

## License

Licensed under the Apache License, Version 2.0 (the "License").  
See LICENSE.txt or visit http://www.apache.org/licenses/LICENSE-2.0 for more information.
