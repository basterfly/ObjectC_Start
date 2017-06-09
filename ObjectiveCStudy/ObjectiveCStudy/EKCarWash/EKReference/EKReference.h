//
//  EKReference.h
//  ObjectiveCStudy
//
//  Created by Egor on 09.06.17.
//  Copyright © 2017 Yegor Kozlovskiy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface EKReference : NSObject <NSCopying>
@property(nonatomic, readonly) id target;

+ (instancetype)referenceWithTarget:(id)target;

- (instancetype)initWithTarget:(id)target;

- (BOOL)isEqualToReference:(EKReference *)reference;

@end
