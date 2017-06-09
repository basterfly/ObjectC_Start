//
//  EKReference.m
//  ObjectiveCStudy
//
//  Created by Egor on 09.06.17.
//  Copyright © 2017 Yegor Kozlovskiy. All rights reserved.
//

#import "EKReference.h"

@interface EKReference ()
@property(nonatomic, assign) id target;

@end

@implementation EKReference

@dynamic target;

#pragma mark -
#pragma mark Class Methods

+ (instancetype)referenceWithTarget:(id)target {
    return [[[self alloc] initWithTarget:target] autorelease];
}

#pragma mark -
#pragma mark Initializations and Dealocations

- (void)dealloc {
    self.target = nil;
    
    [super dealloc];
}

- (instancetype)initWithTarget:(id)target {
    self = [super init];
    if (self) {
        self.target = target;
    }
    
    return self;
}

#pragma mark -
#pragma mark Public Methods

- (NSUInteger)hash {
    return (NSUInteger)self.target ^ (NSUInteger)[self class];
}

- (BOOL)isEqual:(id)object {
    if (nil == object) {
        return NO;
    }
    if (self == object) {
        return YES;
    }
    if ([object isMemberOfClass:[self class]]) {
        return [self isEqualToReference:object];
    }
    
    return NO;
}

- (BOOL)isEqualToReference:(EKReference *)reference {
    return self.target == reference.target;
}

#pragma mark -
#pragma mark NSCopying

- (id)copyWithZone:(NSZone *)zone {
    return [[[self class] alloc] initWithTarget:self.target];
}

@end
