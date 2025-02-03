//
//  ViewController.m
//  Obj-Clock
//
//  Created by Andre LaBranche on 9/22/24.
//

#import "ViewController.h"

@interface ViewController ()

@property (strong, nonatomic) dispatch_source_t timer;

@end

// re-use a NSDateFormatter instead of making a new one every time
NSDateFormatter *formatter;

// update interval in milliseconds
static const uint64_t interval = 32;

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    formatter = [[NSDateFormatter alloc] init];
    [self startClock];
}

- (void)startClock {
    // Create a dispatch timer to update the clock
    self.timer = dispatch_source_create(DISPATCH_SOURCE_TYPE_TIMER, 0, 0, dispatch_get_main_queue());
    dispatch_source_set_timer(self.timer, dispatch_walltime(NULL, 0), interval * NSEC_PER_MSEC, 1 * NSEC_PER_MSEC);
    dispatch_source_set_event_handler(self.timer, ^{
        [self updateClock];
    });
    
    // Start the timer
    dispatch_resume(self.timer);
}

- (void)updateClock {
    NSDate *currentDate = [NSDate date];
    //NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"HH:mm:ss.SS"];
    
    NSString *timeString = [formatter stringFromDate:currentDate];
    [self.timeLabel setStringValue:timeString];
}

@end
