//
//  EKCreature.m
//  ObjectiveCStudy
//
//  Created by Egor on 21.04.17.
//  Copyright © 2017 Yegor Kozlovskiy. All rights reserved.
//

#import "EKCreature.h"

@interface EKCreature ()
@property (nonatomic, retain) NSMutableArray *mutableChildren;

@end

@implementation EKCreature

@dynamic children;

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.age = arc4random_uniform(100);
        self.gender = arc4random_uniform(2);
        self.weight = arc4random_uniform(100);
        self.name = [NSString stringWithFormat:@"id name: %d", arc4random()];
        self.mutableChildren = [NSMutableArray array];
    }
    return self;
}

- (NSArray *)children {
    return [[self.mutableChildren copy] autorelease];
}

- (void)fight{
    NSLog(@"Fight!");
}

- (EKCreature *)birth{
    NSLog(@"Was born ne child.");
    return [[[EKCreature alloc] init] autorelease];
}

- (void)addChild:(EKCreature*)child{
    [self.mutableChildren addObject:child];
}

- (void)removeChild:(EKCreature*)child{
    [self.mutableChildren removeObject:child];
}

- (void)sayHello{
    NSLog(@"Hello");
    if ([self.mutableChildren count] != 0)
        for (EKCreature *child in self.children) {
            [child sayHello];
        }
}

@end
