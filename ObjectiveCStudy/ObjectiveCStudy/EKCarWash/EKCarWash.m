//
//  EKCarWash.m
//  ObjectiveCStudy
//
//  Created by Egor on 28.04.17.
//  Copyright © 2017 Yegor Kozlovskiy. All rights reserved.
//

#import "EKCarWash.h"

@interface EKCarWash ()

@property (nonatomic, retain) NSMutableArray *mutableCar;
@property (nonatomic, retain) NSMutableArray *mutableBuilding;

@end

@implementation EKCarWash

@dynamic car;
@dynamic building;

- (NSArray *)car {
    return [[self.mutableCar copy] autorelease];
}

- (NSArray *)building {
    return [[self.mutableBuilding copy] autorelease];
}

- (instancetype)init
{
    self = [super init];
    self.mutableCar = [NSMutableArray array];
    self.mutableBuilding = [NSMutableArray array];
    return self;
}

- (void)addCar:(EKCar *)car {
    [self.mutableCar addObject:car];
    NSLog(@"car was added");
}

- (void)removeCar:(EKCar *)car {
    [self.mutableCar removeObject:car];
    NSLog(@"car was removed");
}

- (void)addBuilding:(EKBuilding *)building {
    [self.mutableBuilding addObject:building];
    NSLog(@"building was added");
}

- (void)removeBuilding:(EKBuilding *)building {
    [self.mutableBuilding removeObject:building];
    NSLog(@"building was removed");
}

@end
