//
//  Bird.h
//  homework5
//
//  Created by macbook on 20.04.2021.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Bird : NSObject

- (instancetype) initWithNumber:(NSNumber *)number;
@property (nonatomic, strong) NSNumber *number;
@end

NS_ASSUME_NONNULL_END
