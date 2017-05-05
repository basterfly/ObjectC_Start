//
//  EKCar.h
//  ObjectiveCStudy
//
//  Created by Egor on 03.05.17.
//  Copyright © 2017 Yegor Kozlovskiy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "EKCarWashProtocol.h"

@interface EKCar : NSObject <EKCarWashProtocol>

@property(nonatomic, readonly) BOOL dirty;
@property (nonatomic, readonly) NSUInteger money;

@end
