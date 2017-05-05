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

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        [EKTests creatureTests];
        
        EKCarWash *carWash = [[EKCarWash new] autorelease];
        NSMutableArray *buildings = [NSMutableArray array];
        NSMutableArray *cars = [NSMutableArray array];
        buildings = @[carWashBuilding, office];
    }
    
    return 0;
}
