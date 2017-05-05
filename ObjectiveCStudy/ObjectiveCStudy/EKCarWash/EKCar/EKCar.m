//
//  EKCar.m
//  ObjectiveCStudy
//
//  Created by Egor on 03.05.17.
//  Copyright © 2017 Yegor Kozlovskiy. All rights reserved.
//

#import "EKCar.h"

@interface EKCar ()
@property (nonatomic, assign) NSUInteger money;

@end

@implementation EKCar

- (instancetype)init {
    self = [super init];
    self.dirty = YES;
    self.money = (NSUInteger) 100;
    
    return self;
}

- (NSUInteger)giveMoney {
    NSUInteger tempMoney = self.money;
    self.money = 0;
    
    return tempMoney;
}

@end
