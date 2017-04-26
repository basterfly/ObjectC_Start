//
//  main.m
//  ObjectiveCStudy
//
//  Created by Egor on 21.04.17.
//  Copyright © 2017 Yegor Kozlovskiy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "EKCreature.h"

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
        
        for (EKCreature *creature in array) {
            [creature sayHello];
            if (creature.gender == EKCreatureGenderMale) {
                [creature fight];
            } else {
                [creature giveBirth];
            }
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
    }
    return 0;
}
