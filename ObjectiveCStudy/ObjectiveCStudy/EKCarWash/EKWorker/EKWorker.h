//
//  EKWorker.h
//  ObjectiveCStudy
//
//  Created by Egor on 03.05.17.
//  Copyright © 2017 Yegor Kozlovskiy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "EKCarWashProtocol.h"

@interface EKWorker : NSObject <EKCarWashProtocol>
@property (nonatomic, readonly) NSString    *name;
@property (nonatomic, assign)   NSUInteger  salary;
@property (nonatomic, assign)   NSUInteger  experience;

@end
