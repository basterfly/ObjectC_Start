//
//  NSString+EKExtension.h
//  ObjectiveCStudy
//
//  Created by Egor on 19.05.17.
//  Copyright © 2017 Yegor Kozlovskiy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (EKExtension)

+ (NSString *)randomStringFromString:(NSString *) string length:(NSUInteger) length;
+ (NSString *)uppercaseRandomString:(NSString *)string length:(NSUInteger)length;


@end
