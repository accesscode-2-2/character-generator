//
//  MInionManager.m
//  MinionMadness
//
//  Created by Jovanny Espinal on 8/8/15.
//  Copyright (c) 2015 Jovanny Espinal. All rights reserved.
//

#import "MinionManager.h"

@implementation MinionManager


+(id)sharedManager{
    static  MinionManager *sharedMyManager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedMyManager = [[self alloc] init];
    });
    return sharedMyManager;
}

- (id)init {
    if (self = [super init]) {
        self.mutableMinion = [NSMutableArray new];
        
        Character *dave = [[Character alloc] init];
        // Dave's Properties
        dave.height = 105;
        dave.eyes = @"Two";
        dave.hair = @"Flat, Center-Parted";
        dave.body = @"Slim";
        dave.name = @"Dave";
        dave.minionImage = [UIImage imageNamed:@"Dave"];
        
        [self.mutableMinion addObject:dave];
        
        //Stuart's Properties
        Character *stuart = [[Character alloc] init];
        stuart.height = 94;
        stuart.eyes = @"One";
        stuart.hair = @"Flat, Center-parted";
        stuart.body = @"Slim";
        stuart.name = @"Stuart";
        stuart.minionImage = [UIImage imageNamed:@"Stuart"];
        
        [self.mutableMinion addObject:stuart];
        
        
        // Jerry's Properties
        Character *jerry = [[Character alloc] init];
        jerry.height = 105;
        jerry.eyes = @"Two";
        jerry.hair = @"Spiky";
        jerry.body = @"Slim";
        jerry.name = @"Jerry";
        jerry.minionImage = [UIImage imageNamed:@"Jerry"];
        
        
        [self.mutableMinion addObject:jerry];
        
        // Jorge's Properties
        Character *jorge = [[Character alloc] init];
        jorge.height = 96;
        jorge.eyes = @"Two";
        jorge.hair = @"Standing Straight Up";
        jorge.body = @"Fat";
        jorge.name = @"Jorge";
        jorge.minionImage = [UIImage imageNamed:@"Jorge"];
        
        
        [self.mutableMinion addObject:jorge];
        
        
        // Tim's Properties
        Character *tim = [[Character alloc] init];
        tim.height = 120;
        tim.eyes = @"Two";
        tim.hair = @"A Tiny Clump of Hair";
        tim.body = @"Slim";
        tim.name = @"Tim";
        tim.minionImage = [UIImage imageNamed:@"Tim"];
        
        
        [self.mutableMinion addObject:tim];
        
        
        
        // Mark's Properties
        Character *mark = [[Character alloc] init];
        mark.height = 105;
        mark.eyes = @"Two";
        mark.hair = @"Flat, Center-Parted";
        mark.body = @"Slim";
        mark.name = @"Mark";
        mark.minionImage = [UIImage imageNamed:@"Mark"];
        
        
        [self.mutableMinion addObject:mark];
        
        
        
        //Phil's Properties
        Character *phil = [[Character alloc] init];
        phil.height = 95;
        phil.eyes = @"One";
        phil.hair = @"Flat, Center-Parted";
        phil.body = @"Slim";
        phil.name = @"Phil";
        phil.minionImage = [UIImage imageNamed:@"Phil"];
        
        
        [self.mutableMinion addObject:phil];
    }
    return self;
}

-(void)addMinion:(Character *)minion{
    [self.mutableMinion addObject:minion];
}

-(NSMutableArray *)allMinions{
    return self.mutableMinion;
}

@end
