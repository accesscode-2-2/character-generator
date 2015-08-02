//
//  Character.m
//  CharacterGenerator
//
//  Created by Henna on 8/2/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "Character.h"

@implementation Character

- (void) initializeName: (NSString *) name pushups: (int) pushupLimit fighter: (BOOL) canFight andBeer: (int) beerLimit{
    
    self.name = name;
    self.pushupLimit = pushupLimit;
    self.canFight = canFight;
    self.beerLimit = beerLimit;
}

@end
