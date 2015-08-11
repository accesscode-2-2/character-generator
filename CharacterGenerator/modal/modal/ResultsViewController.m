//
//  ResultsViewController.m
//  modal
//
//  Created by Fatima Zenine Villanueva on 8/4/15.
//  Copyright (c) 2015 apps. All rights reserved.
//

#import "ResultsViewController.h"
#import "Athlete.h"
#import "QuestionDetail.h"
#import "AthleteManager.h"

@interface ResultsViewController ()

@property (nonatomic) Athlete *model;
@property (weak, nonatomic) IBOutlet UILabel *characterResults;
@property (weak, nonatomic) IBOutlet UILabel *colorResults;
@property (weak, nonatomic) IBOutlet UILabel *workoutResults;

@end

@implementation ResultsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    if ([self.resultsOfCharacter.color isEqualToString:@"yellow"] && [self.resultsOfCharacter.workout isEqualToString:@"Wrestling"] && [self.resultsOfCharacter.liftBro isEqualToString:@"YES"]){
        self.colorResults.text = @"You wrestle with your yellow spandex shorts, you buff person, you. They call you 'The Tiger'.";
    } else if ([self.resultsOfCharacter.color isEqualToString:@"yellow"] && [self.resultsOfCharacter.workout isEqualToString:@"Wrestling"] && [self.resultsOfCharacter.liftBro isEqualToString:@"NO"]){
        self.colorResults.text = @"You wrestle with your yellow spandex shorts with your stuffed teddybear as you watch WWE. They call you 'The Twinkie'";
    }  else if ([self.resultsOfCharacter.color isEqualToString:@"pink"] && [self.resultsOfCharacter.workout isEqualToString:@"Wrestling"] && [self.resultsOfCharacter.liftBro isEqualToString:@"YES"]){
        self.colorResults.text = @"You like drinking pink lemonade before jumping in the ring because you read an artice from Health magazine that it calms your muscles, but we all know that's not true. They call you 'The Kool-Aid'";
    } else if ([self.resultsOfCharacter.color isEqualToString:@"pink"] && [self.resultsOfCharacter.workout isEqualToString:@"Wrestling"] && [self.resultsOfCharacter.liftBro isEqualToString:@"NO"]){
        self.colorResults.text = @"Your hair is pink and you always bite your pinky right before a match because you're always anxious, but you won't be as anxious if you lift bro. They call you 'The Twitch'";
    } else if ([self.resultsOfCharacter.color isEqualToString:@"purple"] && [self.resultsOfCharacter.workout isEqualToString:@"Wrestling"] && [self.resultsOfCharacter.liftBro isEqualToString:@"YES"]){
        self.colorResults.text = @"In the ring, you have green hair and purple shorts--nuff said. No one wants to mess with a dinosaur. They call you 'Barney'";
    }
    
    self.characterResults.text = self.resultsOfCharacter.name;
    
    
    self.workoutResults.text = self.resultsOfCharacter.workout;
    
}


@end
