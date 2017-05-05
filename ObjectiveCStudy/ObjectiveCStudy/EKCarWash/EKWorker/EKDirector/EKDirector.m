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

-(void)performSpecificOperationWithObject:(id<EKCarWashProtocol>)Accountant {
    [super performSpecificOperationWithObject:Accountant];
    NSLog(@"Director was counted his profit: %lu", self.money);
}

@end
