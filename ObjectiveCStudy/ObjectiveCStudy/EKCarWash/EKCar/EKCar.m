//
//  EKCar.m
//  ObjectiveCStudy
//
//  Created by Egor on 03.05.17.
//  Copyright © 2017 Yegor Kozlovskiy. All rights reserved.
//

#import "EKCar.h"

static const NSUInteger EKMoney = 100;

@interface EKCar ()
@property (nonatomic, assign) NSUInteger money;

@end

@implementation EKCar

- (instancetype)init {
    self = [super init];
//    self.state = EKcarStateDirty;
    self.money = EKMoney;
    
    return self;
}

- (void)takeMoney:(NSUInteger)money {
    self.money += money;
}

- (NSUInteger)giveMoney {
    NSUInteger recieveMoney = self.money;
    self.money = 0;
    
    return recieveMoney;
}

@end
