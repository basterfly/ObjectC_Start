//
//  EKPurseObserver.h
//  ObjectiveCStudy
//
//  Created by Egor on 11.06.17.
//  Copyright © 2017 Yegor Kozlovskiy. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "EKPurse.h"

@interface EKPurseObserver : NSObject <EKPurseObserver>
@property (nonatomic, retain)   EKPurse     *purse;

@end
