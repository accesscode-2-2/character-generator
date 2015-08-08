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

+ (characterModel *)sharedInstance
{
    static dispatch_once_t once;
    static id sharedInstance;
    dispatch_once(&once, ^{
        sharedInstance = [[self alloc] init];
    });
    return sharedInstance;
}


//+ (characterModel *)sharedModel {
//    static characterModel *sharedMyManager = nil;
//    static dispatch_once_t onceToken;
//    dispatch_once(&onceToken, ^{
//        sharedMyManager = [[self alloc] init];
//        sharedMyManager.characterData = [[NSMutableArray alloc] init];
//    });
//    return sharedMyManager;
//}



-(void) initializeCharacters {
    
    self.allCharacters = [[NSMutableArray alloc]init];

    Character *Henna = [[Character alloc] init];
    int pushup = 3;
    int beer = 0;
    UIImage * image = [UIImage imageNamed:@"henna"];
    [Henna initializeName:@"Henna" pushups:pushup fighter:NO andBeer:beer withImage: image];
    

    [self.allCharacters addObject:Henna];
    
    
    Character *Artur = [[Character alloc] init];
    pushup = 10;
    beer = 2;
    image = [UIImage imageNamed:@"artur"];
    [Artur initializeName:@"Artur" pushups:pushup fighter:YES andBeer:beer withImage:image];

     [self.allCharacters addObject:Artur];

    
    Character *Brian = [[Character alloc] init];
    pushup = 20;
    beer = 0;
    image = [UIImage imageNamed:@"brian"];
    [Brian initializeName:@"Brian" pushups:pushup fighter:YES andBeer:beer withImage:image];

     [self.allCharacters addObject:Brian];

}

@end
