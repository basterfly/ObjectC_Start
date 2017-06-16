//
//  EKWorker.m
//  ObjectiveCStudy
//
//  Created by Egor on 03.05.17.
//  Copyright © 2017 Yegor Kozlovskiy. All rights reserved.
//

#import "EKWorker.h"

@interface EKWorker ()
@property (nonatomic, retain) NSString      *name;
@property (nonatomic, assign) NSUInteger    money;

@end

@implementation EKWorker

- (instancetype)init {
    self = [super init];
    self.name = NSStringFromClass([self class]);
    
    return self;
}

- (void)takeMoneyFromObject:(id<EKMoneyTransfer>)object {
    [self takeMoney:[object giveMoney]];
}

- (void)takeMoney:(NSUInteger)money {
    self.money += money;
}

- (NSUInteger)giveMoney {
    NSUInteger receiveMoney = self.money;
    self.money = 0;
    
    return receiveMoney;
}

- (void)processObject:(id<EKMoneyTransfer>)object {
    self.state = EKworkerStateBusy;
    NSLog(@"%@: State Busy", self.name);
    [self performWorkWithObject:object];
    
    [self takeMoneyFromObject:object];
    [self finishWorkWithObject];
    
    self.state = EKworkerStateFree;
//    self.state = EKworkerReadyForProcessing;
    NSLog(@"%@: State Free", self.name);
}

- (void)performWorkWithObject:(id<EKMoneyTransfer>)object {
    
}

- (void)finishWorkWithObject {
    
}

- (void)notifyForObserver {
//    notifyOfstateChangeWithSelector
}

- (void)employeeDidFinishWork:(id <EKMoneyTransfer>)worker {    //employeeDidBecomeBusy
    [self processObject:worker];
}
- (void)employeeDidBecomeFree:(id <EKMoneyTransfer>)worker{
    NSLog(@"%@ - employeeDidBecomeFree", self.name);
}

@end
