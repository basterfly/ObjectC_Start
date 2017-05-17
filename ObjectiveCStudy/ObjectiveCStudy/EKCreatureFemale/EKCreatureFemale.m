//
//  EKCreatureFemale.m
//  ObjectiveCStudy
//
//  Created by Egor on 22.04.17.
//  Copyright © 2017 Yegor Kozlovskiy. All rights reserved.
//

@class EKCreatureMale;

#import "EKCreatureFemale.h"

//#import "EKCreatureMale.h"
#import "EKRandom.h"
#import "NSObject+EKCategory.h"

static const NSString *kEKWasBorn = @"Was born new child.";

@implementation EKCreatureFemale

- (EKCreature *)giveBirth{
    NSLog(@"%@", kEKWasBorn);
    EKCreature *creature = EKRandomBool() ? [EKCreatureFemale object] : [EKCreatureMale object];
    [self addChild:creature];
    return creature;
}

- (void)performGenderSpecificOperation {
    [self giveBirth];
    [self sayHello];
}

@end
