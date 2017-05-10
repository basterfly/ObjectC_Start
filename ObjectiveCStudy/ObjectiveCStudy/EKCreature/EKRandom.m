//
//  EKRandom.m
//  ObjectiveCStudy
//
//  Created by Egor on 25.04.17.
//  Copyright © 2017 Yegor Kozlovskiy. All rights reserved.
//

#import "EKRandom.h"

NSUInteger EKRandomInRange(NSRange range) {
    return arc4random_uniform((uint32_t)range.length) + range.location;
}

BOOL EKRandomBool() {
    return arc4random_uniform(2);
}
