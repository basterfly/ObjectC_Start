//
//  main.m
//  ObjectiveCStudy
//
//  Created by Egor on 21.04.17.
//  Copyright © 2017 Yegor Kozlovskiy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "EKCreature.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
       
        NSMutableArray *array = [NSMutableArray array];
        for (int index = 0; index < 9; index++) {
            EKCreature *creature = [[EKCreature new] autorelease];
            for (int index = 0; index < 2; index++) {
                EKCreature *child = [[EKCreature new] autorelease];
                [creature addChild:child];
            }
            
            [array addObject:creature];
        }
        
        
        for (EKCreature *creature in array) {
            [creature sayHello];
            if(creature.gender == EKCreatureGenderMale) {
                [creature fight];
            } else {
                [creature birth];
            }
        }
    }
    return 0;
}
