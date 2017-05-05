//
//  EKWorker.m
//  ObjectiveCStudy
//
//  Created by Egor on 03.05.17.
//  Copyright © 2017 Yegor Kozlovskiy. All rights reserved.
//

#import "EKWorker.h"

@interface EKWorker ()
@property (nonatomic, retain) NSString  *name;
@property (nonatomic, assign) NSUInteger money;

@end

@implementation EKWorker

- (instancetype)init
{
    self = [super init];
    self.name = NSStringFromClass([self class]);
    
    return self;
}

- (void)takeMoneyFromWorker:(EKWorker *)worker {
    self.money = [worker giveMoney];
}

- (NSUInteger)giveMoney {
    NSUInteger tempMoney = self.money;
    self.money = 0;
    
    return tempMoney;
}

@end
