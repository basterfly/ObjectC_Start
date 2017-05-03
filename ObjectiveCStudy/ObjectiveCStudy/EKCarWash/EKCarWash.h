//
//  EKCarWash.h
//  ObjectiveCStudy
//
//  Created by Egor on 28.04.17.
//  Copyright © 2017 Yegor Kozlovskiy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "EKCar.h"
#import "EKBuilding.h"

@interface EKCarWash : NSObject

@property (nonatomic, copy)     NSArray *car;
@property (nonatomic, readonly) NSArray *building;

- (void)addCar:(EKCar *)car;

- (void)removeCar:(EKCar *)car;

- (void)addBuilding:(EKBuilding *)building;

- (void)removeBuilding:(EKBuilding *)building;

@end
