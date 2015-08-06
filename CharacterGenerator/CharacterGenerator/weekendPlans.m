//
//  weekendPlans.m
//  CharacterGenerator
//
//  Created by Jamaal Sedayao on 8/5/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "weekendPlans.h"

@implementation weekendPlans

-(void) initializeData {
    
    [self initializeWeekendPlans];
    [self initializeCelebrity];
    [self initializeFood];
    [self initializeAlcohol];
    [self initializeTitles]; 
}

-(void) initializeWeekendPlans {
    
    self.weekendPlans = @[
                          @"You will hang out at the library.",
                          @"You will go to the beach.",
                          @"You will go on a road trip!",
                          @"Your grandma will call and ask you to help her clean the house. Lame.",
                          @"You will stay home and binge on Netflix",
                          @"You will hit up the hottest club in the city!"
                        ];
    
}


-(void) initializeCelebrity {
    
    self.celebrity = @[
                       @"Guess what? Shia Lebouf wants to come along. Uh oh. This might be crazy...",
                       @"Whoa! J-Law just sent you a text and wants to chill! Noice!",
                       
                       @"Steve Yeun just Slacked you - he's bored and needs a buddy! He's coming to hang!",
                       @"Yo! Lupita Nyong'o wants to tag along!",
                       @"Dwayne Johnson wants to chill! The Rock?! Sweet!",
                       @"Sofia Vergara just hit you up on the iMessage, 'aye dios mio I'm bored. Lez cheel!'",
                    ];
    
}

- (void) initializeFood {
    
    self.food = @[
                  @"Then you remember you have a whole jug of Nutela. Not bad.",
                  @"Surprise! They brough you mac N cheese! What a buddy!",
                  @"You have nothing but sandwiches to eat, though. Great...",
                  @"First, you pick up some artichoke pizza...amazing.",
                  @"Nothing but kale in the fridge...make KALE CHIPS!",
                  @"You both suddenly crave Chipotle. You get distracted from your plans. Chipotle is now priority.",
                ];
    
    
}

- (void) initializeAlcohol {
    
    self.alcohol = @[
                       @"You two just quietly read your books until the library closes. Yay...",
                       @"And you two have a nice sober time at the beach...",
                       @"And nobody brought beer. Good. Because driving and booze are a no-no.",
                       @"Your grandma appreciates no drinking in her living. Good grandchild.",
                       @"You guys watch House Of Cards which is already pretty boring without alcohol...",
                       @"Wow...you're at Pacha and you're not having a cocktail?! SMH.",
                        @"You sneaked in a little flask to the library. After a few swigs both of you are laughing loudly and getting shushed! You two dance on the tables, and that's when the librarian kicks you out!",
                        @"You brought a cooler full of Natty Ice on the beach. Nothing like surfing tipsy! Woo!",
                        @"Don't drink and drive! Just don't.",
                        @"Both of you bust open grandma's little liquor cabinet and party! Sometimes Grandma likes to let loose - it reminds her of the 50's!",
                        @"You crack open some Coronas and you have yourself a Jean-Claude Van Damme-a-thon! Bloodsport!",
                        @"You just dropped $200 on drinks. Dang should've pre-gamed. Reminder: clubs are wack.",
                    ];
}

-(void) initializeTitles {
    self.titles = @[
                    @"Read a book",
                    @"Beach",
                    @"Road trip",
                    @"Grandma",
                    @"Netflix",
                    @"Party"
                    ];
}


@end
