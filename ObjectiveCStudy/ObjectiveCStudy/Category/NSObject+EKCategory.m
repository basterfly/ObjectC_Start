//
//  NSObject+EKCategory.m
//  ObjectiveCStudy
//
//  Created by Egor on 27.04.17.
//  Copyright © 2017 Yegor Kozlovskiy. All rights reserved.
//

#import "NSObject+EKCategory.h"

@implementation NSObject (EKCategory)

+ (instancetype)object {
    return [[[self alloc] init] autorelease];
}

@end
