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

NSString *EKRandomName() {
    NSString *letter = nil;
    NSString *name = @" ";
    for (NSUInteger i = 0; i < 5; i++) {
        letter = [NSString stringWithFormat:@"%c", arc4random_uniform(26) + 'a'];
        name = [name stringByAppendingString:letter];
    }
    return [[name capitalizedString] substringFromIndex:1];
}
