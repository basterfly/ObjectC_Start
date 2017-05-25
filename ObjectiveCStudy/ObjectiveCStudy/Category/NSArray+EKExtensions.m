//
//  NSArray+EKExtensions.m
//  ObjectiveCStudy
//
//  Created by Egor on 21.05.17.
//  Copyright © 2017 Yegor Kozlovskiy. All rights reserved.
//

#import "NSArray+EKExtensions.h"

@implementation NSArray (EKExtensions)

+ (instancetype)objectsWithCount:(NSUInteger)count factoryBlock:(EKFactoryBlock)block {
    if (!block) {
        return nil;
    }
    
    NSMutableArray *objects = [NSMutableArray object];
    for (NSUInteger i = 0; i < count; i += 1) {
        [objects addObject:block()];
    }
    
    return [self arrayWithArray:objects];
}

- (NSArray *)filteredObjectsWithClass:(Class)cls {
    NSMutableArray *result = [NSMutableArray array];
    for (NSObject *object in self) {
        if ([object isMemberOfClass:cls]) {
            [result addObject:object];
        }
    }
    
    return [NSArray arrayWithArray:result];
}

@end
