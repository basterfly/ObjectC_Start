//
//  EKDirector.m
//  ObjectiveCStudy
//
//  Created by Egor on 03.05.17.
//  Copyright © 2017 Yegor Kozlovskiy. All rights reserved.
//

#import "EKDirector.h"

@interface EKDirector ()

@end

@implementation EKDirector
- (void)makeProfit {
    NSLog(@"%@: I am waiting for money from accountant", self.name);
}

- (NSUInteger)giveMoney {
    [self doesNotRecognizeSelector:_cmd];
    return 0;
}

- (void)performWorkWithObject:(id<EKMoneyTransfer>)accountant {
    [self makeProfit];
}

- (void)finishWorkWithObject {
    NSLog(@"%@: was counted my profit: %lu", self.name, self.money);
}

@end
