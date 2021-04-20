//
//  Calculator.m
//  homework5
//
//  Created by macbook on 20.04.2021.
//

#import "Calculator.h"

@implementation Calculator

- (instancetype)init {
    if(self) {
        NSLog(@"Calculator object created");
    }
    return  self;
}

- (CGFloat) calculate: (enum OperationType) operationType firstNumber:(CGFloat) firstNumber secondNumber:(CGFloat) secondNumber {
    switch (operationType) {
        case sum:
            return (firstNumber + secondNumber);
        case diff:
            return (firstNumber - secondNumber);
        case multi:
            return (firstNumber * secondNumber);
        case division:
            if (secondNumber == 0) {
                return 0;
            } else {
                return (firstNumber / secondNumber);
            }
        case reminder:
            if (secondNumber == 0) {
                return 0;
            } else {
                return (CGFloat)((NSInteger)firstNumber % (NSInteger)secondNumber);
            }
        default:
            break;
    }
}

-(void)dealloc {
    NSLog(@"Calculator object destroyed");
    [super dealloc];
}

@end
