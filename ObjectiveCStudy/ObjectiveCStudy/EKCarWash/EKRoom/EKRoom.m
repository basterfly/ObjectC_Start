//
//  EKRoom.m
//  ObjectiveCStudy
//
//  Created by Egor on 03.05.17.
//  Copyright © 2017 Yegor Kozlovskiy. All rights reserved.
//

#import "EKRoom.h"

@interface EKRoom ()
@property (nonatomic, readwrite) NSUInteger         *roomCapacity;
@property (nonatomic, retain)    NSMutableArray     *mutableWorkers;

@end

@implementation EKRoom

- (instancetype)init {
    self = [super init];
    self.mutableWorkers = [NSMutableArray array];
    
    return self;
}

- (void)dealloc {
    self.mutableWorkers = nil;
    [super dealloc];
}

- (void)addWorker:(EKWorker *)worker {
    if (0 != worker) {
        [self.mutableWorkers addObject:worker];
        NSLog(@"worker was added");
    }
}

- (void)removeWorker:(EKWorker *)worker {
    [self.mutableWorkers removeObject:worker];
    NSLog(@"worker was removed");
}

@end
