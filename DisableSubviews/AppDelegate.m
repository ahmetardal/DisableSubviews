//
//  AppDelegate.m
//  DisableSubviews
//
//  Created by Ahmet Ardal on 5/6/12.
//  Copyright (c) 2012 SpinningSphere Labs. All rights reserved.
//

#import "AppDelegate.h"
#import "NSView+DisableSubviews.h"

@implementation AppDelegate

@synthesize window = _window;

- (void) dealloc
{
    [super dealloc];
}

- (void) applicationDidFinishLaunching:(NSNotification *)aNotification
{
}


#pragma mark -
#pragma mark Helpers

- (BOOL) toggleDisableButtonTitle:(NSButton *)button
{
    NSString *title = [button title];
    BOOL disable = [title hasPrefix:@"Dis"];

    if (disable) {
        button.title = [title stringByReplacingOccurrencesOfString:@"Disable"
                                                        withString:@"Enable"];
    }
    else {
        button.title = [title stringByReplacingOccurrencesOfString:@"Enable"
                                                        withString:@"Disable"];
    }

    return disable;
}


#pragma mark -
#pragma mark Action Handlers

- (IBAction) toggleAll:(id)sender
{
    BOOL disable = [self toggleDisableButtonTitle:sender];
    [formView disableSubviews:disable];
}

- (IBAction) toggleTextFields:(id)sender
{
    BOOL disable = [self toggleDisableButtonTitle:sender];
    [formView disableSubviews:disable ofType:[NSTextField class]];
}

- (IBAction) toggleButtons:(id)sender
{
    BOOL disable = [self toggleDisableButtonTitle:sender];
    [formView disableSubviews:disable ofType:[NSButton class]];
}

- (IBAction) toggleInfoBox:(id)sender
{
    BOOL disable = [self toggleDisableButtonTitle:sender];
    [infoBox disableSubviews:disable];
}

- (IBAction) toggleOptionsBox:(id)sender
{
    BOOL disable = [self toggleDisableButtonTitle:sender];
    [optionsBox disableSubviews:disable];
}

- (IBAction) toggleEmptyTextFields:(id)sender
{
    BOOL disable = [self toggleDisableButtonTitle:sender];
    [formView disableSubviews:disable
                       filter:^BOOL (NSView *v) {
                           return [v isKindOfClass:[NSTextField class]] &&
                                  (((NSTextField *) v).stringValue.length < 1);
                       }];
}

- (IBAction) toggleViewsInSomeTagRange:(id)sender
{
    BOOL disable = [self toggleDisableButtonTitle:sender];
    [formView disableSubviews:disable startTag:3 endTag:7];
}

- (IBAction) toggleViewsWithTags:(id)sender
{
    BOOL disable = [self toggleDisableButtonTitle:sender];
    [formView disableSubviews:disable
                     withTags:[NSArray arrayWithObjects:
                               [NSNumber numberWithInt:2],
                               [NSNumber numberWithInt:5],
                               [NSNumber numberWithInt:8], nil]];
}

@end
