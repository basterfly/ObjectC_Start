//
//  EKMoneyTransfer.h
//  ObjectiveCStudy
//
//  Created by Egor on 12.05.17.
//  Copyright © 2017 Yegor Kozlovskiy. All rights reserved.
//

#import <Foundation/Foundation.h>

@class EKWorker;

@protocol EKMoneyTransfer <NSObject>
@property (nonatomic, readonly) NSUInteger money;

- (NSUInteger)giveMoney;

- (void)takeMoney:(NSUInteger)money;

@optional
- (void)takeMoneyFromObject:(id<EKMoneyTransfer>)object;

@end
