//
//  EKCreatureFemale.m
//  ObjectiveCStudy
//
//  Created by Egor on 22.04.17.
//  Copyright © 2017 Yegor Kozlovskiy. All rights reserved.
//

#import "EKCreatureFemale.h"

static const NSString *kEKWasBorn = @"Was born new child.";

@implementation EKCreatureFemale

- (void)performGenderSpecificOperation {
    [self sayHello];
    NSLog(@"%@", kEKWasBorn);
}

@end
