//
//  EKCarWash.h
//  ObjectiveCStudy
//
//  Created by Egor on 28.04.17.
//  Copyright © 2017 Yegor Kozlovskiy. All rights reserved.
//

#import <Foundation/Foundation.h>

@class EKCar;

@interface EKCarWash : NSObject
@property (nonatomic, copy)     NSArray *cars;
@property (nonatomic, readonly) NSArray *workers;

- (void)addCar:(EKCar *)car;
- (void)removeCar:(EKCar *)car;
- (void)startWashing;

//- (void)addWorker:(EKWorker *)worker;
//- (void)removeWorker:(EKWorker *)worker;

@end
