//
//  NSString+EKExtension.m
//  ObjectiveCStudy
//
//  Created by Egor on 19.05.17.
//  Copyright © 2017 Yegor Kozlovskiy. All rights reserved.
//

#import "NSString+EKExtension.h"

#import "EKRandom.h"

@implementation NSString (EKExtension)

+ (NSString *)randomStringFromString:(NSString *)string length:(NSUInteger)length {
    NSMutableString *mutableString = [NSMutableString string];
    NSUInteger stringLength = [string length];
    for (NSUInteger index = 0; index < length; index += 1) {
        NSUInteger randomIndex = EKRandomValueTillLocation(stringLength);
        unichar letter = [string characterAtIndex:randomIndex];
        [mutableString appendFormat:@"%c", letter];
    }
    
    return mutableString;
}

+ (NSString *)uppercaseRandomString:(NSString *)string length:(NSUInteger)length {
    return [[self randomStringFromString:(NSString *)string length:(NSUInteger)length] uppercaseString];
}
@end
