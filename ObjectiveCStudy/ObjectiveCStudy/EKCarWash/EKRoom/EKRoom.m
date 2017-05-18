//
//  EKRoom.m
//  ObjectiveCStudy
//
//  Created by Egor on 03.05.17.
//  Copyright © 2017 Yegor Kozlovskiy. All rights reserved.
//

#import "EKRoom.h"

@interface EKRoom ()
@property (nonatomic, assign)   NSUInteger         roomCapacity;
@property (nonatomic, retain)   NSMutableArray     *mutableWorkers;

@end

@implementation EKRoom

@dynamic workers;

- (NSArray *)workers {
    return [[self.mutableWorkers copy] autorelease];
}

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
    if (worker) {
        [self.mutableWorkers addObject:worker];
        self.roomCapacity +=1;
        NSLog(@"worker was added, room capacity = %lu", self.roomCapacity);
    }
}

- (void)removeWorker:(EKWorker *)worker {
    [self.mutableWorkers removeObject:worker];
    NSLog(@"worker was removed");
}

@end
