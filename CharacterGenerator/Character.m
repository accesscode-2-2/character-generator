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
    self.superPower = self.determineSuperPower;
}

- (NSString *) determineSuperPower {
    
    if (self.canFight) {
        if (self.beerLimit>10) {
            if (self.pushupLimit>10) {
                return @"Wolverine";
            }
            else{
                return @"CatWoman";
            }
            
        }
        else{
            if (self.pushupLimit>10) {
                return @"Superman";
            }
            else{
                return @"Captain America";
            }
            
        }
    }
    else {
        if (self.beerLimit>10) {
            if (self.pushupLimit>10) {
                return @"Wimpy Robin";
            }
            else{
                return @"Professor X";
            }
            
        }
        else{
            if (self.pushupLimit>10) {
                return @"Wimpy Storm";
            }
            else{
                return @"Wimpy Spiderman";
            }
            
        }
    }
}

@end
