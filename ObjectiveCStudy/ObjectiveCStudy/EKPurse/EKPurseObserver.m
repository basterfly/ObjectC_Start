//
//  EKPurseObserver.m
//  ObjectiveCStudy
//
//  Created by Egor on 11.06.17.
//  Copyright © 2017 Yegor Kozlovskiy. All rights reserved.
//

#import "EKPurseObserver.h"

@implementation EKPurseObserver

#pragma mark -
#pragma mark Initializations and Dealocations

- (void)dealloc {
    self.purse = nil;
    
    [super dealloc];
}

#pragma mark -
#pragma mark Accessors

- (void)setPurse:(EKPurse *)purse {
    if (_purse != purse) {
        [_purse removeObserver:self];
        
        [_purse release];
        _purse = [purse retain];
        
        [purse addObserver:self];
    }
}

#pragma mark -
#pragma mark EKPurseObserver

- (void)purseDidBecomeEmpty:(EKPurse *)purse {
    if (self.purse == purse) {
        NSLog(@"purse: %@ is empty", purse);
    }
}

- (void)purseDidBecomeNonEmpty:(EKPurse *)purse {
    if (self.purse == purse) {
     NSLog(@"purse: %@ is not empty", purse);
    }
}

@end
