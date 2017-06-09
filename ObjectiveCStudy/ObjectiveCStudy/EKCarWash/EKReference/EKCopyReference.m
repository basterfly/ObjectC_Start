//
//  EKCopyReference.m
//  ObjectiveCStudy
//
//  Created by Egor on 09.06.17.
//  Copyright © 2017 Yegor Kozlovskiy. All rights reserved.
//

#import "EKCopyReference.h"

@interface EKCopyReference ()
@property(nonatomic, copy) id target;

@end

@implementation EKCopyReference

@synthesize target = _target;

@end
