//
//  EKCarWashRoom.h
//  ObjectiveCStudy
//
//  Created by Egor on 18.05.17.
//  Copyright © 2017 Yegor Kozlovskiy. All rights reserved.
//

#import "EKRoom.h"

#import "EKCar.h"

@interface EKCarWashRoom : EKRoom
@property (nonatomic, readonly) NSArray *cars;

- (void)addCarToWashRoom:(EKCar *)car;
- (void)removeCarFromWashRoom:(EKCar *)car;

@end
