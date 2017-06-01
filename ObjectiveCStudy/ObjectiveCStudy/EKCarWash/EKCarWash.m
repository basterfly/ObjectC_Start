//
//  EKCarWash.m
//  ObjectiveCStudy
//
//  Created by Egor on 28.04.17.
//  Copyright © 2017 Yegor Kozlovskiy. All rights reserved.
//

#import "EKCarWash.h"

#import "EKCar.h"
#import "EKWasher.h"
#import "EKAccountant.h"
#import "EKDirector.h"

#import "NSObject+EKExtension.h"
#import "NSArray+EKExtensions.h"

@interface EKCarWash ()
@property (nonatomic, retain) NSMutableArray *carsQueue;
@property (nonatomic, retain) NSMutableArray *mutableWorkers;

@end

@implementation EKCarWash

@dynamic cars;
@dynamic workers;

- (NSArray *)cars {
    return [[self.carsQueue copy] autorelease];
}

- (NSArray *)workers {
    return [[self.mutableWorkers copy] autorelease];
}

- (instancetype)init {
    self = [super init];
    self.carsQueue = [NSMutableArray array];
    self.mutableWorkers = [NSMutableArray array];
    [self setupCarWashHierarchy];
    
    return self;
}

- (void)dealloc {
    self.carsQueue = nil;
    self.mutableWorkers = nil;
    
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

- (void)addWorker:(EKWorker *)worker {
    if (worker) {
        [self.mutableWorkers addObject:worker];
        NSLog(@"worker was added"); //, room capacity = %lu", self.roomCapacity
    }
}

- (void)removeWorker:(EKWorker *)worker {
    [self.mutableWorkers removeObject:worker];
    NSLog(@"worker was removed");
}

- (NSArray *)workersOfClass:(Class)cls {
    return [self.mutableWorkers filteredObjectsWithClass:cls];
}

- (EKWorker *)employeeWithClass:(Class)cls {
    for (EKWorker *worker in [self workersOfClass:cls]) {
        if (worker.state == EKworkerStateFree) {
            return worker;
        }
    }
//    [[self workersOfClass:cls] firstObject];
    return nil;
}

- (void)setupCarWashHierarchy {
    EKWasher *washer = [EKWasher object];
    EKAccountant *accountant = [EKAccountant object];
    EKDirector *director = [EKDirector object];
    
    [self.mutableWorkers addObject:washer];
    [self.mutableWorkers addObject:accountant];
    [self.mutableWorkers addObject:director];
}

- (void)startWashing {
    EKWorker *accountant = [self employeeWithClass:[EKAccountant class]];
    EKWorker *director = [self employeeWithClass:[EKDirector class]];
    for (EKCar *car in self.carsQueue) {
        EKWorker *washer = [self employeeWithClass:[EKWasher class]];
        [washer processObject:car];
        [accountant processObject:washer];
        [director processObject:accountant];
    }
}

@end
