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

- (NSUInteger)giveMoney {
    return 0;
}

- (void)specificOperationsOfObject:(id<EKMoneyTransfer>)accountant {
    NSLog(@"%@: was counted his profit: %lu", self.name, self.money);
}

@end
