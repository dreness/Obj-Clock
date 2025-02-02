//
//  ViewController.h
//  Obj-Clock
//
//  Created by Andre LaBranche on 9/22/24.
//

#import <Cocoa/Cocoa.h>

@interface ViewController : NSViewController

@property (assign) IBOutlet NSView *skView;
@property (weak) IBOutlet NSTextField *timeLabel;

@end

