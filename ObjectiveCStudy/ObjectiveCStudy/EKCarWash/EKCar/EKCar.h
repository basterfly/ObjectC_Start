//
//  EKCar.h
//  ObjectiveCStudy
//
//  Created by Egor on 03.05.17.
//  Copyright © 2017 Yegor Kozlovskiy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "EKMoneyTransfer.h"

@interface EKCar : NSObject <EKMoneyTransfer>
@property (nonatomic, assign) BOOL dirty;

@end
