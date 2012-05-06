//
//  AppDelegate.h
//  DisableSubviews
//
//  Created by Ahmet Ardal on 5/6/12.
//  Copyright (c) 2012 SpinningSphere Labs. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate: NSObject<NSApplicationDelegate>
{
    IBOutlet NSView *formView;
    IBOutlet NSBox *infoBox;
    IBOutlet NSBox *optionsBox;
}

@property (assign) IBOutlet NSWindow *window;

- (IBAction) toggleAll:(id)sender;
- (IBAction) toggleTextFields:(id)sender;
- (IBAction) toggleButtons:(id)sender;
- (IBAction) toggleInfoBox:(id)sender;
- (IBAction) toggleOptionsBox:(id)sender;
- (IBAction) toggleEmptyTextFields:(id)sender;
- (IBAction) toggleViewsInSomeTagRange:(id)sender;
- (IBAction) toggleViewsWithTags:(id)sender;

@end
