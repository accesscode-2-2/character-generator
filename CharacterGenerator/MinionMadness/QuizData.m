//
//  QuizData.m
//  MinionMadness
//
//  Created by Jovanny Espinal on 8/5/15.
//  Copyright (c) 2015 Jovanny Espinal. All rights reserved.
//

#import "QuizData.h"

@implementation QuizData

-(void)initializeData {
    [self initializeArray];
    
    [self initializeDictionary];
}



-(void)initializeArray {

    self.allCharacters = [[NSMutableArray alloc] init];
    
    Character *dave = [[Character alloc] init];
    // Dave's Properties
    dave.height = 105;
    dave.eyes = @"Two";
    dave.hair = @"Flat, Center-Parted";
    dave.body = @"Slim";
    dave.name = @"Dave";
    
        [self.allCharacters addObject:dave];
    
    //Stuart's Properties
    Character *stuart = [[Character alloc] init];
    stuart.height = 94;
    stuart.eyes = @"One";
    stuart.hair = @"Flat, Center-parted";
    stuart.body = @"Slim";
    stuart.name = @"Stuart";
    
        [self.allCharacters addObject:stuart];
    
    
    // Jerry's Properties
    Character *jerry = [[Character alloc] init];
    jerry.height = 105;
    jerry.eyes = @"Two";
    jerry.hair = @"Spiky";
    jerry.body = @"Slim";
    jerry.name = @"Jerry";

    
    [self.allCharacters addObject:jerry];
    
    // Jorge's Properties
    Character *jorge = [[Character alloc] init];
    jorge.height = 96;
    jorge.eyes = @"Two";
    jorge.hair = @"Standing Straight Up";
    jorge.body = @"Fat";
    jorge.name = @"Jorge";
    
    
    [self.allCharacters addObject:jorge];
    
    
    // Tim's Properties
    Character *tim = [[Character alloc] init];
    tim.height = 120;
    tim.eyes = @"Two";
    tim.hair = @"A Tiny Clump of Hair";
    tim.body = @"Slim";
    tim.name = @"Tim";
  
    
    [self.allCharacters addObject:tim];
    
    
    
      // Mark's Properties
    Character *mark = [[Character alloc] init];
    mark.height = 105;
    mark.eyes = @"Two";
    mark.hair = @"Flat, Center-Parted";
    mark.body = @"Slim";
    mark.name = @"Mark";

    
    [self.allCharacters addObject:mark];
    
    
    
    //Phil's Properties
    Character *phil = [[Character alloc] init];
    phil.height = 95;
    phil.eyes = @"One";
    phil.hair = @"Flat, Center-Parted";
    phil.body = @"Slim";
    phil.name = @"Phil";

    
      [self.allCharacters addObject:phil];
    


    
}





-(void)initializeDictionary {
    
    
    
}

@end
