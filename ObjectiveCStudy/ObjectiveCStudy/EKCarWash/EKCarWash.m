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

static const NSUInteger EKCountOfWashers = 3;

@interface EKCarWash ()
@property (nonatomic, retain)   NSMutableArray  *carsQueue;
@property (nonatomic, retain)   NSMutableArray  *washers;
@property (nonatomic, retain)   EKAccountant    *accountant;
@property (nonatomic, retain)   EKDirector      *director;

@end

@implementation EKCarWash

@dynamic cars;
@dynamic workers;

- (NSArray *)cars {
    return [[self.carsQueue copy] autorelease];
}

- (NSArray *)workers {
    return [[self.washers copy] autorelease];
}

- (instancetype)init {
    self = [super init];
    self.carsQueue = [NSMutableArray array];
    self.washers = [NSMutableArray object];
    [self setupCarWashHierarchy];
    
    return self;
}

- (void)dealloc {
    self.carsQueue = nil;
    self.washers = nil;
    self.accountant = nil;
    self.director = nil;
    
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
        [self.washers addObject:worker];
        NSLog(@"worker was added"); //, room capacity = %lu", self.roomCapacity
    }
}

- (void)removeWorker:(EKWorker *)worker {
    [self.washers removeObject:worker];
    NSLog(@"worker was removed");
}

- (NSArray *)workersOfClass:(Class)cls {
    return [self.washers filteredObjectsWithClass:cls];
}

- (EKWorker *)freeEmployeeWithClass:(Class)cls {
    for (EKWorker *worker in [self workersOfClass:cls]) {
        if (worker.state == EKworkerStateFree) {
            return worker;
        }
    }
//    [[self workersOfClass:cls] firstObject];
    return nil;
}

- (void)setupCarWashHierarchy {
    [self.washers addObjectsFromArray:[EKWasher objectsWithCount:EKCountOfWashers]];
    self.accountant = [EKAccountant object];
    self.director = [EKDirector object];
    
    for (EKWasher *washer in self.washers) {
        [washer addObserver:self.accountant];
        [washer addObserver:self];
    }
    
    [self.accountant addObserver:self.director];
}

- (void)startWashing {
    for (EKCar *car in self.carsQueue) {
        EKWorker *washer = [self freeEmployeeWithClass:[EKWasher class]];
        if (washer) {
            [washer processObject:car];
        } else {
            [self.carsQueue addObject:car];
        }
        
        [self.accountant processObject:washer];
        [self.director processObject:self.accountant];  ///////////////////////???????????????
    }
}

- (void)employeeDidFinishWork:(id)employee {
    if (self.carsQueue.count > 0) {
        EKCar *car = [[[self.carsQueue firstObject] retain] autorelease];
        [self.carsQueue removeObject:car];  //2 times self.carsQueue
        [employee processObject:car];
    }
}
- (void)employeeDidBecomeBusy:(id)employee {
    NSLog(@"become busy: %@", employee);
}
@end
