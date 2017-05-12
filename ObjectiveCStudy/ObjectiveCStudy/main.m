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

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //[EKTests creatureTests];
        
        EKCarWash *carWash = [EKCarWash object];
        for (NSUInteger i = 0; i < 2; i++) {
            EKCar *car = [EKCar object];
            [carWash addCar:car];
        }
        [carWash startWashing];
    }
    
    return 0;
}
