//
//  EKObservableObject.h
//  ObjectiveCStudy
//
//  Created by Egor on 02.06.17.
//  Copyright © 2017 Yegor Kozlovskiy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface EKObservableObject : NSObject
@property (nonatomic, assign)   NSUInteger  state;
@property (nonatomic, readonly) NSSet       *observerSet;

- (void)addObserver:(id)observer;
- (void)removeObserver:(id)observer;
- (void)isObservedByObject:(id)observer;

- (SEL)selectorForState:(NSUInteger)state;

@end
