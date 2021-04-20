//
//  Bird.m
//  homework5
//
//  Created by macbook on 20.04.2021.
//

#import "Bird.h"

@implementation Bird

- (instancetype)initWithNumber:(NSNumber *)number {
    self = [super init];
    if (self) {
        [number retain];
        [number release];
        _number = number;
        NSLog(@"Create Bird %@", number);
    }
    return self;
}

- (void)dealloc {
    NSLog(@"Dealloc Bird - %@", _number);
    [_number release];
    [super dealloc];
}

@end
