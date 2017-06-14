//
//  EKPurse.m
//  ObjectiveCStudy
//
//  Created by Egor on 11.06.17.
//  Copyright © 2017 Yegor Kozlovskiy. All rights reserved.
//

#import "EKPurse.h"

@implementation EKPurse

#pragma mark -
#pragma mark Accessors

- (void)setMoney:(NSUInteger)money {
    if (money != _money) {
        _money = money;
        self.state = (0 == _money) ? EKPurseEmpty : EKPurseNonEmpty;
    }
}

#pragma mark -
#pragma mark Overloaded Methods

- (SEL)selectorForState:(NSUInteger)state {
    switch (state) {
        case EKPurseEmpty:
            return @selector(purseDidBecomeEmpty:);
            
        case EKPurseNonEmpty:
            return @selector(purseDidBecomeNonEmpty:);
            
        default:
            return [super selectorForState:state];
    }
}

@end
