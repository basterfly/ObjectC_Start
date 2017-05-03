//
//  EKBuilding.m
//  ObjectiveCStudy
//
//  Created by Egor on 03.05.17.
//  Copyright © 2017 Yegor Kozlovskiy. All rights reserved.
//

#import "EKBuilding.h"

@interface EKBuilding ()

@property (nonatomic, retain) NSMutableArray *mutableRoom;

@end

@implementation EKBuilding

@dynamic rooms;

- (NSArray *)rooms {
    return [[self.mutableRoom copy] autorelease];
}

- (instancetype)init
{
    self = [super init];
    self.mutableRoom = [NSMutableArray array];
    return self;
}

- (void)addRoom:(EKRoom *)room {
    [self.mutableRoom addObject:room];
    NSLog(@"room was added");
}

- (void)removeRoom:(EKRoom *)room {
    [self.mutableRoom removeObject:room];
    NSLog(@"room was removed");
}

@end
