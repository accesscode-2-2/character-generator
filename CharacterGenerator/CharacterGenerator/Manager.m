//
//  Manager.m
//  CharacterGenerator
//
//  Created by Z on 8/6/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "Manager.h"

@implementation Manager

//singleton code
+ (instancetype)sharedInstance
{
    static Manager *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[Manager alloc] init];
        // Do any other initialisation stuff here
    });
    return sharedInstance;
}

-(void)addRecruit:(Soldier*)recruit{
    if (self.myRecruits == nil) {
        self.myRecruits = [[NSMutableArray alloc] init];
    }
    
    [self.myRecruits addObject:recruit];
}

-(Soldier*)recruitAtIndex:(NSInteger)index{
    Soldier *recruitToReturn = [self.myRecruits objectAtIndex:index];
    return recruitToReturn;
}

@end
