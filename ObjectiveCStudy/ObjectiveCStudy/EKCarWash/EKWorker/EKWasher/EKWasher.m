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

- (void)performWorkWithObject:(EKCar *)object {
    NSLog(@"%@: start washing", self.name);
    [self washCar:object];
}

- (void)washCar:(EKCar *)object {
    NSLog(@"%@: washing car", self.name);
    object.state = EKcarStateClean;
}

- (void)finishWorkWithObject {
    NSLog(@"%@: wash finished, give money %lu", self.name, self.money);
}

@end
