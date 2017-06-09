//
//  EKWorker.h
//  ObjectiveCStudy
//
//  Created by Egor on 03.05.17.
//  Copyright © 2017 Yegor Kozlovskiy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "EKMoneyTransfer.h"

#import "EKObservableObject.h"

typedef NS_ENUM(NSUInteger, EKWorkerState) {
    EKworkerStateFree,
    EKworkerStateBusy
};

@class EKCar;

@interface EKWorker : EKObservableObject <EKMoneyTransfer>
@property (nonatomic, readonly) NSString    *name;
@property (nonatomic, assign)   NSUInteger  salary;
@property (nonatomic, assign)   NSUInteger  experience;

- (void)processObject:(id<EKMoneyTransfer>)object;
- (void)performWorkWithObject:(id<EKMoneyTransfer>)object;
- (void)finishWorkWithObject;

@end
