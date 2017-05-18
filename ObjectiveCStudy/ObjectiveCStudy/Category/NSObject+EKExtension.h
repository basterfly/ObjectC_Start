//
//  NSObject+EKExtension.h
//  ObjectiveCStudy
//
//  Created by Egor on 18.05.17.
//  Copyright © 2017 Yegor Kozlovskiy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSArray+EKBlock.h"

@interface NSObject (EKExtension)

+ (instancetype)object;
+ (NSArray *)objectsWithCount:(NSUInteger)count;

@end
