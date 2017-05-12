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
#import "NSObject+EKCategory.h"

static const NSUInteger EKCount = 5;

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        [EKTests creatureTests];
        
        EKCarWash *carWash = [EKCarWash object];
        for (NSUInteger i = 0; i < EKCount; i++) {
            [carWash addCar:[EKCar object]];
        }
        
        [carWash startWashing];
    }
    
    return 0;
}
