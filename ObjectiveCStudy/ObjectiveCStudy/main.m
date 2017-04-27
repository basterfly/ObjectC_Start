//
//  main.m
//  ObjectiveCStudy
//
//  Created by Egor on 21.04.17.
//  Copyright © 2017 Yegor Kozlovskiy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "EKCreature.h"
#import "EKCreatureMale.h"
#import "EKCreatureFemale.h"

static const NSUInteger kEKCreatureCount = 3;
static const NSUInteger kEKCreatureChildrenCount = 3;

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableArray *array = [NSMutableArray array];
        for (int index = 0; index < kEKCreatureCount; index++) {
            EKCreature *creature = [[[EKCreature alloc] init] autorelease];
            for (int index = 0; index < kEKCreatureChildrenCount; index++) {
                EKCreature *child = [[EKCreature new] autorelease];
                [creature addChild:child];
            }
            
            [array addObject:creature];
        }
        
        EKCreature *creature = [[EKCreature new] autorelease];
        NSMutableArray *mutableArrayOfChildren = [[NSMutableArray new] autorelease];
        for (NSUInteger i = 0; i < kEKCreatureCount; i++) {
            EKCreature *creature = [[EKCreature new] autorelease];
            [mutableArrayOfChildren addObject:creature];
        }
        
        [creature addChildren:mutableArrayOfChildren];
        NSLog(@"~~~~~~~~~~~~~~~~~~~~~~");
        [creature sayHello];
        [creature removeChildren:mutableArrayOfChildren];
        NSLog(@"~~~~~~~~~~~~~~~~~~~~~~");
        [creature sayHello];
        EKCreatureMale *creatureMale = [[EKCreatureMale new] autorelease];
        [creatureMale sayHello];
        [creatureMale performGenderSpecificOperation];
        EKCreatureFemale *creatureFemale = [[EKCreatureFemale new] autorelease];
        [creatureFemale sayHello];
        [creatureFemale performGenderSpecificOperation];
        NSLog(@"~~~~~~~~~~~~~~~~~~~~~~");
        NSMutableArray *arrayWithBothCreatures = [[NSMutableArray new] autorelease];
        for (NSUInteger i = 0; i < 7; i++) {
            EKCreatureFemale *creatureFemale = [[EKCreatureFemale new] autorelease];
            EKCreatureMale *creatureMale = [[EKCreatureMale new] autorelease];
            [arrayWithBothCreatures addObject:creatureMale];
            [arrayWithBothCreatures addObject:creatureFemale];
        }
        
        for (NSUInteger i = 0; i < [arrayWithBothCreatures count]; i++) {
            [[arrayWithBothCreatures objectAtIndex:i] performGenderSpecificOperation];
        }
    }
    return 0;
}
