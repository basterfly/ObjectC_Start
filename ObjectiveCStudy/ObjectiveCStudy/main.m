//
//  main.m
//  ObjectiveCStudy
//
//  Created by Egor on 21.04.17.
//  Copyright © 2017 Yegor Kozlovskiy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "EKTests.h"

#import "EKCarWash.h"
#import "EKCar.h"
#import "EKRandom.h"

#import "NSObject+EKExtension.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        [EKTests creatureTests];
//        [EKTests carWashTests];
        
        
        
        
        NSLog(@"%@", EKRandomName(7));
        
        //NSString *string = arc4random_uniform(26) + 'a';
        NSString *abc = @"this is test";
        
        abc = [NSString stringWithFormat:@"%@%@",[[abc substringToIndex:1] uppercaseString],[abc substringFromIndex:1] ];
        NSLog(@"abc = %@",abc);
        
    }
    
    return 0;
}
