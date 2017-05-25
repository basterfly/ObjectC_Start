//
//  EKBuilding.h
//  ObjectiveCStudy
//
//  Created by Egor on 03.05.17.
//  Copyright © 2017 Yegor Kozlovskiy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "EKRoom.h"
#import "EKCarWashRoom.h"

@interface EKBuilding : NSObject
@property(nonatomic, readonly) NSArray *rooms;

- (void)addRoom:(EKRoom *)room;
- (void)removeRoom:(EKRoom *)room;
- (NSArray *)workersOfClass:(Class)cls;
- (EKCarWashRoom *)roomOfClass:(Class)roomClass;

@end
