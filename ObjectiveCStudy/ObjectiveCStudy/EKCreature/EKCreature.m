//
//  EKCreature.m
//  ObjectiveCStudy
//
//  Created by Egor on 21.04.17.
//  Copyright © 2017 Yegor Kozlovskiy. All rights reserved.
//

#import "EKCreature.h"
#import "EKRandom.h"

static const NSString *kEKPrintStringMyNameIdIs = @"My name-id is:";
static const NSString *kEKPrintStringHello = @"Hello!";

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
    self.age = EKRandom(NSMakeRange(1, 80));
    self.weight = EKRandom(NSMakeRange(10, 60));
    self.name = [NSString stringWithFormat:@"%@ %lu", kEKPrintStringMyNameIdIs, EKRandom(NSMakeRange(111111, 111111))];
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
    NSLog(@"%@, %@ weight: %f, age: %lu", kEKPrintStringHello, self.name, self.weight, (unsigned long)self.age);
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
