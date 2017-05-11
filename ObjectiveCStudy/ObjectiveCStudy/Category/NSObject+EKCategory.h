//
//  NSObject+EKCategory.h
//  ObjectiveCStudy
//
//  Created by Egor on 27.04.17.
//  Copyright © 2017 Yegor Kozlovskiy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSArray+EKBlock.h"

@interface NSObject (EKCategory)

+ (instancetype)object;
+ (NSArray *)objectsWithCount:(NSUInteger)count;

@end
