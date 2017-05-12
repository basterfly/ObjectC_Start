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

- (void)performSpecificOperationWithObject:(EKCar *)object {
    NSLog(@"start washing");
    object.dirty = NO;
    [super performSpecificOperationWithObject:object];
    NSLog(@"wash finished, give money %lu", self.money);
}

@end
