//
//  NSObject+EKExtension.m
//  ObjectiveCStudy
//
//  Created by Egor on 18.05.17.
//  Copyright © 2017 Yegor Kozlovskiy. All rights reserved.
//

#import "NSObject+EKExtension.h"

@implementation NSObject (EKExtension)

+ (instancetype)object {
    
    return [[[self alloc] init] autorelease];
}

+ (NSArray *)objectsWithCount:(NSUInteger)count {
    return [NSArray objectsWithCount:count factoryBlock:^id{
        return [self object];
    }];
}

@end
