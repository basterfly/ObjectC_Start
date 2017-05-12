//
//  EKWasher.m
//  ObjectiveCStudy
//
//  Created by Egor on 03.05.17.
//  Copyright © 2017 Yegor Kozlovskiy. All rights reserved.
//

#import "EKWasher.h"

#import "EKCar.h"

@implementation EKWasher

- (void)processWithObject:(EKCar *)object {
    [self performSpecificOperationWithObject:object];
    [super processWithObject:object];
    [self washfinished];
}

- (void)performSpecificOperationWithObject:(EKCar *)object {
    NSLog(@"start washing");
    object.state = EKcarStateClean;
}

- (void)washfinished {
    NSLog(@"wash finished, give money %lu", self.money);
}

@end
