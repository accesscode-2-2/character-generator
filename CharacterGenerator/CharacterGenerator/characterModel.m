//
//  characterModel.m
//  CharacterGenerator
//
//  Created by Henna on 8/2/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "characterModel.h"
#import "Character.h"

@implementation characterModel

-(void) initializeCharacters {

    Character *Henna = [[Character alloc] init];
    int pushup = 3;
    int beer = 0;
    [Henna initializeName:@"Henna" pushups:pushup fighter:NO andBeer:beer];
    NSLog(@"%@", Henna);
    
    
    Character *Artur = [[Character alloc] init];
    pushup = 10;
    beer = 2;
    [Artur initializeName:@"Artur" pushups:pushup fighter:YES andBeer:beer];
    NSLog(@"%@", Artur);
    
    
    Character *Brian = [[Character alloc] init];
    pushup = 20;
    beer = 0;
    [Brian initializeName:@"Brian" pushups:pushup fighter:YES andBeer:beer];
    NSLog(@"%@", Brian);

}

@end
