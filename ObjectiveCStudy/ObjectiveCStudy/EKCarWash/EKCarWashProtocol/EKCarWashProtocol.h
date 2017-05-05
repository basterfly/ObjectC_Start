//
//  EKCarWashProtocol.h
//  ObjectiveCStudy
//
//  Created by Egor on 04.05.17.
//  Copyright © 2017 Yegor Kozlovskiy. All rights reserved.
//

#import <Foundation/Foundation.h>

@class EKWorker;

@protocol EKCarWashProtocol <NSObject>
@property (nonatomic, readonly) NSUInteger money;

@required
- (NSUInteger)giveMoney;

@optional
- (void)takeMoneyFromWorker:(EKWorker *)worker;

@end
