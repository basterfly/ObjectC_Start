//
//  EKCreature.h
//  ObjectiveCStudy
//
//  Created by Egor on 21.04.17.
//  Copyright © 2017 Yegor Kozlovskiy. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    EKCreatureGenderMale,
    EKCreatureGenderFemale
}EKCreatureGender;

@interface EKCreature : NSObject
@property (nonatomic, assign)       EKCreatureGender    gender;
@property (nonatomic, copy)         NSString            *name;
@property (nonatomic, assign)       NSUInteger          age;
@property (nonatomic, assign)       float               weight;
@property (nonatomic, readonly)     NSArray             *children;

- (void)fight;
- (EKCreature *)birth;
- (void)addChild:(EKCreature*)child;
- (void)removeChild:(EKCreature*)child;
- (void)sayHello;

@end
