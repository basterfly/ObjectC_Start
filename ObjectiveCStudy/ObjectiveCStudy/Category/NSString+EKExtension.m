//
//  NSString+EKExtension.m
//  ObjectiveCStudy
//
//  Created by Egor on 19.05.17.
//  Copyright © 2017 Yegor Kozlovskiy. All rights reserved.
//

#import "NSString+EKExtension.h"

#import "EKRandom.h"

static const NSString *EKAlphabet = @"abcdefghijklmnopqrstuvwxyz";
static const NSString *EKNumeric = @"1234567890";

@implementation NSString (EKExtension)

+ (NSString *)randomStringWithString:(NSString *)string length:(NSUInteger)length {
    NSMutableString *mutableString = [NSMutableString string];
    NSUInteger stringLength = [string length];
    for (NSUInteger index = 0; index < length; index += 1) {
        NSUInteger randomIndex = EKRandomValueTillLocation(stringLength);
        unichar letter = [string characterAtIndex:randomIndex];
        [mutableString appendFormat:@"%c", letter];
    }
    
    return mutableString;
}

+ (NSString *)uppercaseRandomStringWithLength:(NSUInteger)length {
    return [[self randomStringWithString:[[EKAlphabet copy] autorelease] length:(NSUInteger)length] uppercaseString];
}

+ (NSString *)alphabetRandomStringWithLength:(NSUInteger)length {
    return [self randomStringWithString:[[EKAlphabet copy] autorelease] length:(NSUInteger)length];
}

+ (NSString *)numericRandomStringWithLength:(NSUInteger)length {
    return [self randomStringWithString:[[EKNumeric copy] autorelease] length:(NSUInteger)length];
}

+ (NSString *)numericAlphabetRandomStringWithLength:(NSUInteger)numericLength charactersLength:(NSUInteger)charactersLength {
    NSString *numericString = [self randomStringWithString:[[EKNumeric copy] autorelease] length:numericLength];
    NSString *charactersString = [self randomStringWithString:[[EKAlphabet copy] autorelease] length:charactersLength];
    return [numericString stringByAppendingString:charactersString];
}
@end
