//
//  EKTests.m
//  ObjectiveCStudy
//
//  Created by Egor on 27.04.17.
//  Copyright © 2017 Yegor Kozlovskiy. All rights reserved.
//

#import "EKTests.h"

#import "EKCreature.h"
#import "EKCreatureMale.h"
#import "EKCreatureFemale.h"
#import "EKRandom.h"
#import "EKCarWash.h"
#import "EKCar.h"

#import "NSObject+EKExtension.h"
#import "NSString+EKExtension.h"

static const NSUInteger EKCount = 5;

static const NSUInteger kEKCreatureCount = 4;
static const NSUInteger kEKChildrenCount = 3;

@implementation EKTests

+ (void)creatureTests {
    NSLog(@"EKTests");
    
    NSArray *creatures = [NSArray objectsWithCount:kEKCreatureCount factoryBlock:^id{
        EKCreature *creature = EKRandomBool() ? [EKCreatureMale object] : [EKCreatureFemale object];
    
        NSArray *children = [NSArray objectsWithCount:kEKChildrenCount factoryBlock:^id{
            return EKRandomBool() ? [EKCreatureMale object] : [EKCreatureFemale object];
        }];
                             
        [creature addChildren:children];
                             
        return creature;
    }];
    
    for (EKCreature *creature in creatures) {
        [creature performGenderSpecificOperation];
        
    }
}

+ (void)carWashTests {
    EKCarWash *carWash = [EKCarWash object];
    for (NSUInteger i = 0; i < EKCount; i++) {
        [carWash addCar:[EKCar object]];
    }
    
    [carWash startWashing];

}

+ (void)stringTest {
    NSLog(@"%@", EKRandomName(7));
    uint abc = arc4random_uniform(26) + 'a';
    NSLog(@"abc = %c",abc);
    
    NSString *string = @"abcdefghijklmnopqrstuvwxyz";
    NSString *returnedString = [NSString randomStringFromString:string length:25];
    NSLog(@"%@", returnedString);
    
    NSString *numbers = @"1234567890";
    NSString *returnedNumbers = [NSString randomStringFromString:numbers length:15];
    NSLog(@"%@", returnedNumbers);
    
    returnedString = [NSString uppercaseRandomString:string length:27];
    NSLog(@"%@", returnedString);
}

@end
