//
//  EKCreatureMale.m
//  ObjectiveCStudy
//
//  Created by Egor on 22.04.17.
//  Copyright © 2017 Yegor Kozlovskiy. All rights reserved.
//

#import "EKCreatureMale.h"
#import "EKRandom.h"

static const NSString *kEKPrintStringFight = @"Fight!";

@implementation EKCreatureMale

- (void)performGenderSpecificOperation {
    NSLog(@"%@", kEKPrintStringFight);
}

@end
