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
#import "EKRandom.h"

static const NSUInteger kEKCreatureCount = 4;
static const NSUInteger kEKChildrenCount = 3;

@implementation EKTests

+ (void)creatureTests {
    NSLog(@"EKTests");
    
    NSArray *creatures = [NSArray objectsWithCount:kEKCreatureCount factoryBlock:^id{
        EKCreature *creature = EKRandomBool() ? [EKCreatureMale object] : [EKCreatureFemale object];
    
        NSArray *children = [NSArray objectsWithCount:kEKChildrenCount factoryBlock:^id{
            return EKRandomBool() ? [EKCreatureMale object] : [EKCreatureFemale object];
        }];
                             
        [creature addChildren:children];
                             
        return creature;
    }];
    
    for (EKCreature *creature in creatures) {
        [creature performGenderSpecificOperation];
        
    }
}

@end
