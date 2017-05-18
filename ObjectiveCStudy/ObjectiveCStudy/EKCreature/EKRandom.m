//
//  EKRandom.m
//  ObjectiveCStudy
//
//  Created by Egor on 25.04.17.
//  Copyright © 2017 Yegor Kozlovskiy. All rights reserved.
//

#import "EKRandom.h"

static const NSUInteger EKEngAlphabetLength = 26;

NSUInteger EKRandomInRange(NSRange range) {
    return arc4random_uniform((uint32_t)range.length) + range.location;
}

BOOL EKRandomBool() {
    return arc4random_uniform(2);
    
}

NSString *EKRandomName(NSUInteger nameLength) {
    NSMutableString *name = [NSMutableString string];
    for (NSUInteger index = 0; index < nameLength; index +=1) {
        NSMutableString *letter = [NSMutableString stringWithFormat:@"%c", arc4random_uniform(EKEngAlphabetLength) + 'a'];
        [name appendFormat:@"%@", letter];
    }
    
    return [name capitalizedString];
}
