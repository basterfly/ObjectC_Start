//
//  EKAccountant.m
//  ObjectiveCStudy
//
//  Created by Egor on 03.05.17.
//  Copyright © 2017 Yegor Kozlovskiy. All rights reserved.
//

#import "EKAccountant.h"

@implementation EKAccountant

- (void)calculateMoney {
    NSLog(@"%@: I am calculating money", self.name);
}

- (void)performWorkWithObject:(id<EKMoneyTransfer>)washer {
    [self calculateMoney];
}

- (void)finishWorkWithObject {
    NSLog(@"%@: money was counted = %lu", self.name, self.money);
}

@end
