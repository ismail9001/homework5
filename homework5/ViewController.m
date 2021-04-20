//
//  ViewController.m
//  homework5
//
//  Created by macbook on 20.04.2021.
//

#import "ViewController.h"
#import "Flock.h"
#import "Bird.h"
#import "Calculator.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Calculator *calc = [[Calculator alloc]init];
    
    CGFloat firstNumber = 6.0;
    CGFloat secondNumber = 4.0;
    OperationType operType = sum;
    NSLog(@"%f", [calc calculate:operType firstNumber:firstNumber secondNumber:secondNumber]);
    operType = diff;
    NSLog(@"%f", [calc calculate:operType firstNumber:firstNumber secondNumber:secondNumber]);
    operType = multi;
    NSLog(@"%f", [calc calculate:operType firstNumber:firstNumber secondNumber:secondNumber]);
    operType = division;
    NSLog(@"%f", [calc calculate:operType firstNumber:firstNumber secondNumber:secondNumber]);
    operType = reminder;
    NSLog(@"%f", [calc calculate:operType firstNumber:firstNumber secondNumber:secondNumber]);
    
    [calc release];
    
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
