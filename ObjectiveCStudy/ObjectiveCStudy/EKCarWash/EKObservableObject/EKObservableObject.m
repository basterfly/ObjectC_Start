//
//  EKObservableObject.m
//  ObjectiveCStudy
//
//  Created by Egor on 02.06.17.
//  Copyright © 2017 Yegor Kozlovskiy. All rights reserved.
//

#import "EKObservableObject.h"

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
    return [[self.mutableObserverSet copy] autorelease];
}

- (void)setState:(NSUInteger)state {
    if (state != _state) {
        state = _state;
        [self notifyOfstateChangeWithSelector:[self selectorForState:state]];
    }
}

#pragma mark
#pragma mark Public

- (void)addObserver:(id)observer {
    if (observer) {
        [self.mutableObserverSet addObject:observer];
        NSLog(@"observer was added");
    }

}

- (void)removeObserver:(id)observer {
    [self.mutableObserverSet removeObject:observer];
    NSLog(@"observer was removed");
}

- (void)isObservedByObject:(id)observer {
    /////////////////////////////////////////////
}

#pragma mark -
#pragma mark Private

- (SEL)selectorForState:(NSUInteger)state {
    [self doesNotRecognizeSelector:_cmd];
    
    return NULL;
}

- (void)notifyOfstateChangeWithSelector:(SEL)selector {
    NSMutableSet *observerSet = self.mutableObserverSet;
    for (id observer in observerSet) {
        if ([observer respondsToSelector:selector]) {
            [observer performSelector:selector withObject:self];
        }
    }
}

@end
