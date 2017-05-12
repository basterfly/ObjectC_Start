//
//  EKAccountant.m
//  ObjectiveCStudy
//
//  Created by Egor on 03.05.17.
//  Copyright © 2017 Yegor Kozlovskiy. All rights reserved.
//

#import "EKAccountant.h"

@implementation EKAccountant

- (void)processWithObject:(EKWorker *)washer {
    [super processWithObject:washer];
    [self performSpecificOperationWithObject];
}

- (void)performSpecificOperationWithObject {
    NSLog(@"%@: money was counted = %lu", self.name, self.money);
}

@end
