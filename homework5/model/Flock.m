//
//  Flock.m
//  homework5
//
//  Created by macbook on 20.04.2021.
//

#import "Flock.h"

@implementation Flock

- (instancetype)init
{
    self = [super init];
    if (self) {
        NSLog(@"Create flock");
    }
    return self;
}
- (void)configWithBirds:(NSArray *)birds {
    [birds retain];
    [birds release];
    _birds = birds;
    for (Bird *bird in birds) {
        NSLog(@"Add birds (%@) in flock", bird.number);
    }
}
- (void)remove {
    NSLog(@"Remove bird from flock");
    for (Bird *bird in _birds) {
        [bird release];
    }
    [_birds release];
}
- (void)dealloc {
    [self remove];
    NSLog(@"Dealloc flock");
    [super dealloc];
}
@end
