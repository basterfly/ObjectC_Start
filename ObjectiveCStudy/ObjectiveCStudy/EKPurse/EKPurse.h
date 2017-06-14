//
//  EKPurse.h
//  ObjectiveCStudy
//
//  Created by Egor on 11.06.17.
//  Copyright © 2017 Yegor Kozlovskiy. All rights reserved.
//

#import "EKObservableObject.h"

@class EKPurse;

typedef NS_ENUM(NSUInteger, EKPurseState) {
    EKPurseEmpty,
    EKPurseNonEmpty
};

@protocol EKPurseObserver <NSObject>

@optional
- (void)purseDidBecomeEmpty:(EKPurse *)purse;
- (void)purseDidBecomeNonEmpty:(EKPurse *)purse;
//- (void)purse:(EKPurse *)purse didFailToSetMoneyWithError:(NSError *)error;

@end

@interface EKPurse : EKObservableObject
@property (nonatomic, assign)   NSUInteger  money;

@end
