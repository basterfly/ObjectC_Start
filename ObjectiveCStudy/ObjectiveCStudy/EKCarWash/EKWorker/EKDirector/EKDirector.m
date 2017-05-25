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

- (void)startSpecificOperation:(id<EKMoneyTransfer>)accountant {
    
}

- (void)finishSpecificOperation {
    NSLog(@"%@: was counted his profit: %lu", self.name, self.money);
}

@end
