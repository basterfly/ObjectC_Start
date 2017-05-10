//
//  EKCreatureMale.m
//  ObjectiveCStudy
//
//  Created by Egor on 22.04.17.
//  Copyright © 2017 Yegor Kozlovskiy. All rights reserved.
//

#import "EKCreatureMale.h"
#import "EKRandom.h"

static const NSString *kEKFight = @"Fight!";

@implementation EKCreatureMale

- (void)performGenderSpecificOperation {
    [self sayHello];
    NSLog(@"%@", kEKFight);
}

@end
