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

- (void)processWithObject:(id<EKMoneyTransfer>)Accountant {
    [super processWithObject:Accountant];
    [self performSpecificOperationWithObject];
}

- (NSUInteger)giveMoney {
    return 0;
}

- (void)performSpecificOperationWithObject {
    NSLog(@"Director was counted his profit: %lu", self.money);
}

@end
