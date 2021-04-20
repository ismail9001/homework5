//
//  Calculator.h
//  homework5
//
//  Created by macbook on 20.04.2021.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger, OperationType) {
    sum = 0,
    diff,
    multi,
    division,
    reminder
};

NS_ASSUME_NONNULL_BEGIN

@interface Calculator : NSObject

- (CGFloat) calculate: (enum OperationType) operationType firstNumber:(CGFloat) firstNumber secondNumber:(CGFloat) secondNumber;

@end

NS_ASSUME_NONNULL_END
