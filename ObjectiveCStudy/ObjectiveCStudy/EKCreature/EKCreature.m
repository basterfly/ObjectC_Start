//
//  EKCreature.m
//  ObjectiveCStudy
//
//  Created by Egor on 21.04.17.
//  Copyright © 2017 Yegor Kozlovskiy. All rights reserved.
//

#import "EKCreature.h"
#import "EKRandom.h"

static const NSString   *kEKMyNameIdIs      = @"My name-id is:";
static const NSString   *kEKHello           = @"Hello!";
static const NSRange    kEKAgeRange         = {1, 80};
static const NSRange    kEKWeightRange      = {3, 100};
static const NSRange    kEKNameRange        = {111111, 111111};

@interface EKCreature ()
@property (nonatomic, retain) NSMutableArray *mutableChildren;
@property (nonatomic, copy)   NSString       *name;

@end

@implementation EKCreature

@dynamic children;

- (NSArray *)children {
    return [[self.mutableChildren copy] autorelease];
}

- (void)dealloc {
    self.name = nil;
    self.mutableChildren = nil;
    
    [super dealloc];
}

- (instancetype)init {
    self = [super init];
    self.age = EKRandomInRange(kEKAgeRange);
    self.weight = EKRandomInRange(kEKWeightRange);
    self.name = [NSString stringWithFormat:@"%@ %lu", kEKMyNameIdIs, EKRandomInRange(kEKNameRange)];
    self.mutableChildren = [NSMutableArray array];
    
    return self;
}

- (void)addChild:(EKCreature *)child {
    if (0 != child) {
        [self.mutableChildren addObject:child];
    }
}

- (void)removeChild:(EKCreature *)child {
    [self.mutableChildren removeObject:child];
}

- (void)sayHello {
    NSLog(@"%@, %@ weight: %f, age: %lu", kEKHello, self.name, self.weight, (unsigned long)self.age);
    for (EKCreature *child in self.children) {
        [child sayHello];
    }
}

- (void)addChildren:(NSArray *)children {
    [self.mutableChildren addObjectsFromArray:children];
}

- (void)removeChildren:(NSArray *)children {
    [self.mutableChildren removeObjectsInArray:_mutableChildren];
}

- (void)performGenderSpecificOperation {
    
}

@end
