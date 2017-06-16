//
//  EKObservableObject.m
//  ObjectiveCStudy
//
//  Created by Egor on 02.06.17.
//  Copyright © 2017 Yegor Kozlovskiy. All rights reserved.
//

#import "EKObservableObject.h"

#import "EKAssignReference.h"

@interface EKObservableObject ()
@property (nonatomic, retain)   NSMutableSet    *mutableObserverSet;

- (void)notifyOfstateChangeWithSelector:(SEL)selector;

@end

@implementation EKObservableObject

#pragma mark -
#pragma mark Initializations and Deallocations

@dynamic observerSet;

- (void)dealloc {
    self.mutableObserverSet = nil;
    
    [super dealloc];
}

- (instancetype)init {
    self = [super init];
    if (self) {
        self.mutableObserverSet = [NSMutableSet set];
    }
    
    return self;
}

#pragma mark -
#pragma Accessors

- (NSSet *)observerSet {
    NSMutableSet *observerSet = self.mutableObserverSet;
    NSMutableSet *result = [NSMutableSet setWithCapacity:[observerSet count]];
    for (EKAssignReference *reference in observerSet) {
        [result addObject:reference.target];
    }
    return [[result copy] autorelease];
}

- (void)setState:(NSUInteger)state {
    if (state != _state) {
        _state = state;
        [self notifyOfstate:state];
    }
}

#pragma mark
#pragma mark Public

- (void)addObserver:(id)observer {
    [self.mutableObserverSet addObject:[EKAssignReference referenceWithTarget:observer]];
    NSLog(@"observer was added");
}

- (void)removeObserver:(id)observer {
    [self.mutableObserverSet removeObject:[EKAssignReference referenceWithTarget:observer]];
    NSLog(@"observer was removed");
}

- (BOOL)isObservedByObject:(id)observer {
    return [self.mutableObserverSet containsObject:[EKAssignReference referenceWithTarget:observer]];
}

- (void)notifyOfstate:(NSUInteger)state {
    [self notifyOfstateChangeWithSelector:[self selectorForState:state]];
}

#pragma mark -
#pragma mark Private

//This method is intended for subclassing. Never call it directly.
- (SEL)selectorForState:(NSUInteger)state {
//    [self doesNotRecognizeSelector:_cmd];
    
    return NULL;
}

- (void)notifyOfstateChangeWithSelector:(SEL)selector {
    NSMutableSet *observerSet = self.mutableObserverSet;
    for (EKReference *reference in observerSet) {
        if ([reference.target respondsToSelector:selector]) {
            [reference.target performSelector:selector withObject:self];
        }
    }
}

@end
