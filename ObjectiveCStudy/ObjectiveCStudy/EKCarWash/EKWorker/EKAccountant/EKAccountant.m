//
//  EKAccountant.m
//  ObjectiveCStudy
//
//  Created by Egor on 03.05.17.
//  Copyright © 2017 Yegor Kozlovskiy. All rights reserved.
//

#import "EKAccountant.h"

@implementation EKAccountant

- (void)specificOperationsOfObject:(id<EKMoneyTransfer>)washer {
    NSLog(@"%@: money was counted = %lu", self.name, self.money);
}

@end
