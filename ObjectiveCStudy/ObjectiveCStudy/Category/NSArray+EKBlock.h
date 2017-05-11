//
//  NSArray+EKBlock.h
//  ObjectiveCStudy
//
//  Created by Egor on 11.05.17.
//  Copyright © 2017 Yegor Kozlovskiy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSObject+EKCategory.h"

typedef id(^EKFactoryBlock)(void);

@interface NSArray (EKBlock)

+ (instancetype)objectsWithCount:(NSUInteger)count factoryBlock:(EKFactoryBlock)block;

@end
