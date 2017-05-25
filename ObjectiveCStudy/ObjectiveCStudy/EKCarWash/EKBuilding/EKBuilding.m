//
//  EKBuilding.m
//  ObjectiveCStudy
//
//  Created by Egor on 03.05.17.
//  Copyright © 2017 Yegor Kozlovskiy. All rights reserved.
//

#import "EKBuilding.h"

#import "NSArray+EKExtensions.h"
#import "NSObject+EKExtension.h"
#import "EKCarWashRoom.h"

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
    if (room) {
        [self.mutableRooms addObject:room];
        NSLog(@"room %@ was added", room);
    }
}

- (void)removeRoom:(EKRoom *)room {
    [self.mutableRooms removeObject:room];
    NSLog(@"room was removed");
}

- (NSArray *)workersOfClass:(Class)cls {
    NSMutableArray *workers = [NSMutableArray object];
    for (EKRoom *room in self.mutableRooms) {
        [workers addObjectsFromArray:[room.workers filteredObjectsWithClass:cls]];
    }
    
    return [NSArray arrayWithArray:workers];
}

- (EKRoom *)roomOfClass:(Class)roomClass {
    for (EKRoom *carWashRoom in self.mutableRooms) {
        if ([carWashRoom isMemberOfClass:roomClass]) {
            return carWashRoom;
        }
    }
    
    return nil;
}

@end
