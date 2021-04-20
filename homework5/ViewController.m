//
//  ViewController.m
//  homework5
//
//  Created by macbook on 20.04.2021.
//

#import "ViewController.h"
#import "Flock.h"
#import "Bird.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Flock *flock = [[Flock alloc] init];
    NSMutableArray *birds = [NSMutableArray array];
   
    for (int i = 0; i < 10; i++) {
        Bird *bird = [[Bird alloc] initWithNumber:[NSNumber numberWithInt:i]];
        [birds addObject:bird];
    }
    
    [flock configWithBirds:birds];

    [flock release];
}

@end
