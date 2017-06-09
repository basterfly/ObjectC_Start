//
//  EKRetainReference.m
//  ObjectiveCStudy
//
//  Created by Egor on 09.06.17.
//  Copyright © 2017 Yegor Kozlovskiy. All rights reserved.
//

#import "EKRetainReference.h"

@interface EKRetainReference ()
@property(nonatomic, retain) id target;

@end

@implementation EKRetainReference

@synthesize target = _target;

@end
