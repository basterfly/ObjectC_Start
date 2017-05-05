//
//  EKBuilding.m
//  ObjectiveCStudy
//
//  Created by Egor on 03.05.17.
//  Copyright © 2017 Yegor Kozlovskiy. All rights reserved.
//

#import "EKBuilding.h"

@interface EKBuilding ()
@property (nonatomic, retain) NSMutableArray *mutableRooms;

@end

@implementation EKBuilding

@dynamic rooms;

- (NSArray *)rooms {
    
    return [[self.mutableRooms copy] autorelease];
}

- (instancetype)init {
    self = [super init];
    self.mutableRooms = [NSMutableArray array];
    
    return self;
}

- (void)dealloc {
    self.mutableRooms = nil;
    [super dealloc];
}

- (void)addRoom:(EKRoom *)room {
    if (0 != room) {
    [self.mutableRooms addObject:room];
    NSLog(@"room was added");
    }
}

- (void)removeRoom:(EKRoom *)room {
    [self.mutableRooms removeObject:room];
    NSLog(@"room was removed");
}

- (EKWorker *)findAWorker:(Class)worker {
    
}

@end
