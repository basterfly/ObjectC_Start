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
    [self setupCarWashHierarchy];
    
    return self;
}

- (void)dealloc {
    self.mutableCars = nil;
    self.mutableBuildings = nil;
    
    [super dealloc];
}

- (void)addCar:(EKCar *)car {
    if (car) {
        [self.mutableCars addObject:car];
        NSLog(@"car was added");
    }
}

- (void)removeCar:(EKCar *)car {
    [self.mutableCars removeObject:car];
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

- (EKWorker *)findEmployeeOfClass:(Class)class {
    for (EKBuilding *building in self.mutableBuildings) {
        EKWorker *worker = [building findWorkerOfClass:class];
        if (worker) {
            return worker;
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
    
    [buildingCarWash addRoom:carWashRoom];
    [office addRoom:officeRoom];
    
    [carWashRoom addObjectToRoom:washer];
    [officeRoom addObjectToRoom:accountant];
    [officeRoom addObjectToRoom:director];
    
    [self addBuilding:buildingCarWash];
    [self addBuilding:office];
}

- (void)startWashing {
    EKWorker *washer = [self findEmployeeOfClass:[EKWasher class]];
    EKWorker *accountant = [self findEmployeeOfClass:[EKAccountant class]];
    EKWorker *director = [self findEmployeeOfClass:[EKDirector class]];
    for (EKCar *car in self.mutableCars) {
        [washer performSpecificOperationWithObject:car];
        [accountant performSpecificOperationWithObject:washer];
        [director performSpecificOperationWithObject:accountant];
    }
}

@end
