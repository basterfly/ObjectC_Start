//
//  EKObservableObject.h
//  ObjectiveCStudy
//
//  Created by Egor on 02.06.17.
//  Copyright © 2017 Yegor Kozlovskiy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface EKObservableObject : NSObject                    //better to move to Extension in Private,
@property (nonatomic, assign)   NSUInteger  state;          //for readonly from outside
@property (nonatomic, readonly) NSSet       *observerSet;   //and assign in children

- (void)addObserver:(id)observer;
- (void)removeObserver:(id)observer;
- (BOOL)isObservedByObject:(id)observer;

//This method is intended for subclassing. Never call it directly.
- (SEL)selectorForState:(NSUInteger)state;

@end
