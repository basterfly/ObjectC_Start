//
//  EKWorker.h
//  ObjectiveCStudy
//
//  Created by Egor on 03.05.17.
//  Copyright © 2017 Yegor Kozlovskiy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "EKMoneyTransfer.h"

@class EKCar;

@interface EKWorker : NSObject <EKMoneyTransfer>
@property (nonatomic, readonly) NSString    *name;
@property (nonatomic, assign)   NSUInteger  salary;
@property (nonatomic, assign)   NSUInteger  experience;

- (void)processObject:(id<EKMoneyTransfer>)object;
- (void)specificOperationsOfObject:(id<EKMoneyTransfer>)object;

@end
