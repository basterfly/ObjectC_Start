//
//  EKWorker.h
//  ObjectiveCStudy
//
//  Created by Egor on 03.05.17.
//  Copyright © 2017 Yegor Kozlovskiy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "EKMoneyTransfer.h"

typedef NS_ENUM(NSUInteger, EKWorkerState) {
    EKworkerStateFree,
    EKworkerStateBusy
};

@class EKCar;

@interface EKWorker : NSObject <EKMoneyTransfer>
@property (nonatomic, readonly) NSString    *name;
@property (nonatomic, assign)   NSUInteger  salary;
@property (nonatomic, assign)   NSUInteger      experience;
@property (nonatomic, assign)   EKWorkerState  state;

- (void)processObject:(id<EKMoneyTransfer>)object;
- (void)startSpecificOperation:(id<EKMoneyTransfer>)object;
- (void)finishSpecificOperation;


@end
