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
#import "EKCarWashRoom.h"
#import "EKWasher.h"
#import "EKAccountant.h"
#import "EKDirector.h"

#import "NSObject+EKExtension.h"
#import "NSArray+EKExtensions.h"

@interface EKCarWash ()
@property (nonatomic, retain) NSMutableArray *carsQueue;
@property (nonatomic, retain) NSMutableArray *mutableBuildings;

@end

@implementation EKCarWash

@dynamic cars;
@dynamic buildings;

- (NSArray *)cars {
    return [[self.carsQueue copy] autorelease];
}

- (NSArray *)building {
    return [[self.mutableBuildings copy] autorelease];
}

- (instancetype)init {
    self = [super init];
    self.carsQueue = [NSMutableArray array];
    self.mutableBuildings = [NSMutableArray array];
    [self setupCarWashHierarchy];
    
    return self;
}

- (void)dealloc {
    self.carsQueue = nil;
    self.mutableBuildings = nil;
    
    [super dealloc];
}

- (void)addCar:(EKCar *)car {
    if (car) {
        [self.carsQueue addObject:car];
        NSLog(@"car was added to queue");
    }
}

- (void)removeCar:(EKCar *)car {
    [self.carsQueue removeObject:car];
    NSLog(@"car was removed");
}

- (void)addBuilding:(EKBuilding *)building {
    if (building) {
        [self.mutableBuildings addObject:building];
        NSLog(@"building was added");
    }
}

- (void)removeBuilding:(EKBuilding *)building {
    [self.mutableBuildings removeObject:building];
    NSLog(@"building was removed");
}

- (NSArray *)findEmployeesOfClass:(Class)class {
    NSMutableArray *employees = [NSMutableArray object];
    for (EKBuilding *building in self.mutableBuildings) {
        [employees addObjectsFromArray:[building workersOfClass:class]];
    }
    
    return [NSArray arrayWithArray:employees];
}

- (EKWorker *)employeeWithClass:(Class)cls {
    return [[self findEmployeesOfClass:cls] firstObject];
}

- (EKCarWashRoom *)freeCarWashRoom:(Class)class {
    for (EKBuilding *building in self.mutableBuildings) {
        EKCarWashRoom *carWashRoom = [building roomOfClass:class];
        if (carWashRoom) {
            return carWashRoom;
        }
    }
    
    return nil;
}

- (void)setupCarWashHierarchy {
    EKWasher *washer = [EKWasher object];
    EKAccountant *accountant = [EKAccountant object];
    EKDirector *director = [EKDirector object];
    
    EKBuilding *buildingCarWash = [EKBuilding object];
    EKBuilding *office = [EKBuilding object];
    
    EKCarWashRoom *carWashRoom = [EKCarWashRoom object];
    EKRoom *officeRoom = [EKRoom object];
    
    [self addBuilding:buildingCarWash];
    [self addBuilding:office];
    
    [buildingCarWash addRoom:carWashRoom];
    [office addRoom:officeRoom];
    
    [carWashRoom addWorker:washer];
    [officeRoom addWorker:accountant];
    [officeRoom addWorker:director];
}

- (void)startWashing {
    EKWorker *washer = [self employeeWithClass:[EKWasher class]];
    EKWorker *accountant = [self employeeWithClass:[EKAccountant class]];
    EKWorker *director = [self employeeWithClass:[EKDirector class]];
    for (EKCar *car in self.carsQueue) {
        EKCarWashRoom *carWashRoom = [EKCarWashRoom object];
        carWashRoom = [self freeCarWashRoom:[EKCarWashRoom class]];
        [carWashRoom addCarToWashRoom:car];
        [washer processObject:car];
        [carWashRoom removeCarFromWashRoom:car];
        [accountant processObject:washer];
        [director processObject:accountant];
    }
}

@end
