//
//  NSArray+EKExtensions.h
//  ObjectiveCStudy
//
//  Created by Egor on 21.05.17.
//  Copyright © 2017 Yegor Kozlovskiy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSObject+EKExtension.h"

typedef id(^EKFactoryBlock)(void);

@interface NSArray (EKExtensions)

+ (instancetype)objectsWithCount:(NSUInteger)count factoryBlock:(EKFactoryBlock)block;

@end
