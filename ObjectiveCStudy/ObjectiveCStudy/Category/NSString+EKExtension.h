//
//  NSString+EKExtension.h
//  ObjectiveCStudy
//
//  Created by Egor on 19.05.17.
//  Copyright © 2017 Yegor Kozlovskiy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (EKExtension)

+ (NSString *)uppercaseRandomStringWithLength:(NSUInteger)length;
+ (NSString *)alphabetRandomStringWithLength:(NSUInteger)length;
+ (NSString *)numericRandomStringWithLength:(NSUInteger)length;
+ (NSString *)numericAlphabetRandomStringWithLength:(NSUInteger)numericLength
                                   charactersLength:(NSUInteger)charactersLength;

@end
