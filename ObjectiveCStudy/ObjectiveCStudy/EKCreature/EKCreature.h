//
//  EKCreature.h
//  ObjectiveCStudy
//
//  Created by Egor on 21.04.17.
//  Copyright © 2017 Yegor Kozlovskiy. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, EKCreatureGender) {
    EKCreatureGenderMale,
    EKCreatureGenderFemale
};

@interface EKCreature : NSObject
@property (nonatomic, assign)       EKCreatureGender    gender;
@property (nonatomic, readonly)     NSString            *name;
@property (nonatomic, assign)       NSUInteger          age;
@property (nonatomic, assign)       float               weight;
@property (nonatomic, readonly)     NSArray             *children;

- (void)fight;
- (EKCreature *)giveBirth;
- (void)addChild:(EKCreature *)child;
- (void)removeChild:(EKCreature *)child;
- (void)sayHello;
- (void)addChildren:(NSArray *)children;
- (void)removeChildren:(NSArray *)children;

@end
