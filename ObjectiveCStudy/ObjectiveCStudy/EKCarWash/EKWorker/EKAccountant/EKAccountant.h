//
//  EKAccountant.h
//  ObjectiveCStudy
//
//  Created by Egor on 03.05.17.
//  Copyright © 2017 Yegor Kozlovskiy. All rights reserved.
//

#import "EKWorker.h"

typedef NS_ENUM(NSUInteger, EKAccountantState) {
    EKAccountantCount,
    EKAccountantNotCount
};

@interface EKAccountant : EKWorker

@end
