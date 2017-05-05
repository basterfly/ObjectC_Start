//
//  EKCarWash.m
//  ObjectiveCStudy
//
//  Created by Egor on 28.04.17.
//  Copyright © 2017 Yegor Kozlovskiy. All rights reserved.
//

#import "EKCarWash.h"
#import "EKCar.h"
#import "EKBuilding.h"
#import "EKRoom.h"
#import "EKWasher.h"
#import "EKAccountant.h"
#import "EKDirector.h"

@interface EKCarWash ()
@property (nonatomic, retain) NSMutableArray *mutableCars;
@property (nonatomic, retain) NSMutableArray *mutableBuildings;

@end

@implementation EKCarWash

@dynamic cars;
@dynamic buildings;

- (NSArray *)car {
    
    return [[self.mutableCars copy] autorelease];
}

- (NSArray *)building {
    
    return [[self.mutableBuildings copy] autorelease];
}

- (instancetype)init {
    self = [super init];
    self.mutableCars = [NSMutableArray array];
    self.mutableBuildings = [NSMutableArray array];
    
    return self;
}

- (void)dealloc {
    self.mutableCars = nil;
    self.mutableBuildings = nil;
    [super dealloc];
}

- (void)addCar:(EKCar *)car {
    if (0 != car) {
        [self.mutableCars addObject:car];
        NSLog(@"car was added");
    }
}

- (void)removeCar:(EKCar *)car {
    [self.mutableCars removeObject:car];
    NSLog(@"car was removed");
}

- (void)addBuilding:(EKBuilding *)building {
    if (0 != building) {
    [self.mutableBuildings addObject:building];
    NSLog(@"building was added");
    }
}

- (void)removeBuilding:(EKBuilding *)building {
    [self.mutableBuildings removeObject:building];
    NSLog(@"building was removed");
}

- (void)carWashHierarchy {
    EKWasher *washer = [[EKWasher new] autorelease];
    EKAccountant *accountant = [[EKAccountant new] autorelease];
    EKDirector *director = [[EKDirector new] autorelease];
    
    EKBuilding *buildingCarWash = [[EKBuilding new] autorelease];
    EKBuilding *office = [[EKBuilding new] autorelease];
    
    EKRoom *carWashRoom = [[EKRoom new] autorelease];
    EKRoom *officeRoom = [[EKRoom new] autorelease];
    
    [buildingCarWash addRoom:carWashRoom];
    [office addRoom:officeRoom];
    
    [carWashRoom addWorker:washer];
    [officeRoom addWorker:accountant]; //array for workers add
    [officeRoom addWorker:director];
}

- (void)washing {
    EKWorker *worker = nil;
    for (EKBuilding *building in self.mutableBuildings) {
        EKWorker *findWorker = [building findAWorker:[EKWasher class]];
        if (0 != findWorker) 
    }
    for (EKCar *car in self.mutableCars) {
        [worker performSpecificOperationWithObject:car];
    }
}

@end
