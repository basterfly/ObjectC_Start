//
//  EKRoom.h
//  ObjectiveCStudy
//
//  Created by Egor on 03.05.17.
//  Copyright © 2017 Yegor Kozlovskiy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "EKWorker.h"

@interface EKRoom : NSObject
@property (nonatomic, readonly) NSUInteger  roomCapacity;
@property (nonatomic, readonly) NSArray     *workers;

- (void)addWorker:(EKWorker *)worker;
- (void)removeWorker:(EKWorker *)worker;

@end
