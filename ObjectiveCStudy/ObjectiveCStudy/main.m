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

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        [EKTests creatureTests];
        
        EKCarWash *carWash = [[EKCarWash new] autorelease];
        for (NSUInteger i = 0; i < 10; i++) {
            EKCar *car = [[EKCar new] autorelease];
            [carWash addCar:car];
        }
        [carWash washing];
    }
    
    return 0;
}
