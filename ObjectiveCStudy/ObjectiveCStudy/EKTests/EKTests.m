//
//  EKTests.m
//  ObjectiveCStudy
//
//  Created by Egor on 27.04.17.
//  Copyright © 2017 Yegor Kozlovskiy. All rights reserved.
//

#import "EKTests.h"
#import "EKCreature.h"
#import "EKCreatureMale.h"
#import "EKCreatureFemale.h"
#import "NSObject+EKCategory.h"

static const NSUInteger kEKCreatureCount = 3;
static const NSUInteger kEKCreatureChildrenCount = 3;
static const NSUInteger kEKCreatureGenderCount = 7;

@implementation EKTests

+ (void)creatureTests {
    NSLog(@"EKTests");
    NSMutableArray *array = [NSMutableArray object];
    for (int index = 0; index < kEKCreatureCount; index++) {
        EKCreature *creature = [EKCreature object];
        for (int index = 0; index < kEKCreatureChildrenCount; index++) {
            EKCreature *child = [EKCreature object];
            [creature addChild:child];
        }
        
        [array addObject:creature];
    }
    
    EKCreature *creature = [[EKCreature new] autorelease];
    NSMutableArray *mutableArrayOfChildren = [NSMutableArray object];
    for (NSUInteger i = 0; i < kEKCreatureCount; i++) {
        EKCreature *creature = [EKCreature object];
        [mutableArrayOfChildren addObject:creature];
    }
    
    [creature addChildren:mutableArrayOfChildren];
    NSLog(@"~~~~~~~~~~~~~~~~~~~~~~");
    [creature sayHello];
    [creature removeChildren:mutableArrayOfChildren];
    NSLog(@"~~~~~~~~~~~~~~~~~~~~~~");
    [creature sayHello];
    EKCreatureMale *creatureMale = [EKCreatureMale object];
    [creatureMale sayHello];
    [creatureMale performGenderSpecificOperation];
    EKCreatureFemale *creatureFemale = [EKCreatureFemale object];
    [creatureFemale sayHello];
    [creatureFemale performGenderSpecificOperation];
    NSLog(@"~~~~~~~~~~~~~~~~~~~~~~");
    NSMutableArray *arrayWithBothCreatures = [NSMutableArray object];
    for (NSUInteger i = 0; i < kEKCreatureGenderCount; i++) {
        EKCreatureFemale *creatureFemale = [EKCreatureFemale object];
        EKCreatureMale *creatureMale = [EKCreatureMale object];
        [arrayWithBothCreatures addObject:creatureMale];
        [arrayWithBothCreatures addObject:creatureFemale];
    }
    
    for (EKCreature *creature in arrayWithBothCreatures) {
        [creature performGenderSpecificOperation];
    }
}

@end
