//
//  EKCarWashRoom.m
//  ObjectiveCStudy
//
//  Created by Egor on 18.05.17.
//  Copyright © 2017 Yegor Kozlovskiy. All rights reserved.
//

#import "EKCarWashRoom.h"

@interface EKCarWashRoom ()
@property (nonatomic, assign)   NSUInteger      roomCapacity;
@property (nonatomic, retain)   NSMutableArray  *carsForCleanup;

@end

@implementation EKCarWashRoom

@synthesize roomCapacity = _roomCapacity;

@dynamic cars;
- (NSArray *)cars {
    return [[self.carsForCleanup copy] autorelease];
}

- (instancetype)init {
    self = [super init];
    self.carsForCleanup = [NSMutableArray array];
    
    return self;
}

- (void)dealloc {
    self.carsForCleanup = nil;
    
    [super dealloc];
}

- (void)addCarToWashRoom:(EKCar *)car {
    if (car) {
        [self.carsForCleanup addObject:car];
        self.roomCapacity ++;
        NSLog(@"car in carWashRoom room CAPACiTY = %lu", self.roomCapacity);
    }
}

- (void)removeCarFromWashRoom:(EKCar *)car {
    [self.carsForCleanup removeObject:car];
    self.roomCapacity --;
    NSLog(@"car removed from carWashRoom room CAPACiTY = %lu", self.roomCapacity);
}
@end
