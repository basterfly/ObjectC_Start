//
//  EKAccountant.m
//  ObjectiveCStudy
//
//  Created by Egor on 03.05.17.
//  Copyright © 2017 Yegor Kozlovskiy. All rights reserved.
//

#import "EKAccountant.h"

@implementation EKAccountant

- (void)performSpecificOperationWithObject:(id<EKMoneyTransfer>)washer {
    [super processWithObject:washer];
    NSLog(@"%@: money was counted = %lu", self.name, self.money);
}

@end
