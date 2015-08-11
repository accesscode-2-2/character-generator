//
//  QuestionDetail.m
//  modal
//
//  Created by Fatima Zenine Villanueva on 8/2/15.
//  Copyright (c) 2015 apps. All rights reserved.
//

#import "QuestionDetail.h"
#import "ResultsViewController.h"
#import "Athlete.h"
#import "AthleteManager.h"
#import "ListTableViewController.h"

@interface QuestionDetail ()
@property (nonatomic) Athlete *model;
@property (weak, nonatomic) IBOutlet UICollectionView *pickAColor;
@property (weak, nonatomic) IBOutlet UIButton *pinkButton;
@property (weak, nonatomic) IBOutlet UIButton *yellowButton;
@property (weak, nonatomic) IBOutlet UIButton *purpleButton;
@property (weak, nonatomic) IBOutlet UIButton *aButtonWorkout;
@property (weak, nonatomic) IBOutlet UIButton *bButtonWorkout;
@property (weak, nonatomic) IBOutlet UIButton *cButtonWorkout;
@property (weak, nonatomic) IBOutlet UIButton *dButtonWorkout;
@property (weak, nonatomic) IBOutlet UISwitch *switchButtonPick;

@end

@implementation QuestionDetail 


- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.athleteArray = [[NSMutableArray alloc]init];
    self.model = [[Athlete alloc]init];

}



- (IBAction)liftBroSwitch:(UISwitch *)sender {
    if([self.switchButtonPick isOn]){
        self.model.liftBro = @"YES";
        NSLog(@"%@", self.athleteArray);
        NSLog(@"Switch is ON");
    } else{
        self.model.liftBro = @"NO";
        NSLog(@"%@", self.athleteArray);
        NSLog(@"Switch is OFF");
    }
}


- (IBAction)closeQuestionOne:(UIButton *)sender {
    
    [self.presentingViewController dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)enterNameButton:(UIButton *)sender {
    
    self.name = self.nameInput.text;
    
    self.model.name = self.name;
    
    [self.athleteArray addObject:self.model.name];
    
    NSLog(@"%@", self.model.name);
    
    
}

- (IBAction)goButton:(UIButton *)sender {
    
    AthleteManager *sharedManager = [AthleteManager sharedManager];
    
    [sharedManager.athletes addObject:self.model];

    
    NSLog(@"%@",sharedManager.athletes);
    
}

- (IBAction)pickColorPink:(UIButton *)sender {
    self.model.color = @"pink";
    self.purpleButton.enabled = false;
    self.yellowButton.enabled = false;
    self.pinkButton.enabled = false;
    NSLog(@"%@", self.athleteArray);
}

- (IBAction)pickColorYellow:(UIButton *)sender {
    self.model.color = @"yellow";
    self.purpleButton.enabled = false;
    self.yellowButton.enabled = false;
    self.pinkButton.enabled = false;
     NSLog(@"%@", self.athleteArray);
}

- (IBAction)pickColorPurple:(UIButton *)sender {
    self.model.color = @"purple";
    self.purpleButton.enabled = false;
    self.yellowButton.enabled = false;
    self.pinkButton.enabled = false;
     NSLog(@"%@", self.athleteArray);
}

- (IBAction)workoutA:(UIButton *)sender {
    self.model.workout = @"Running";
    self.aButtonWorkout.enabled = false;
    self.bButtonWorkout.enabled = false;
    self.cButtonWorkout.enabled = false;
    self.dButtonWorkout.enabled = false;
    NSLog(@"%@", self.athleteArray);
}

- (IBAction)workoutB:(UIButton *)sender {
    self.model.workout = @"Wrestling";
    self.aButtonWorkout.enabled = false;
    self.bButtonWorkout.enabled = false;
    self.cButtonWorkout.enabled = false;
    self.dButtonWorkout.enabled = false;
    NSLog(@"%@", self.athleteArray);
}
- (IBAction)workoutC:(UIButton *)sender {
    self.model.workout = @"Cross-Fit";
    self.aButtonWorkout.enabled = false;
    self.bButtonWorkout.enabled = false;
    self.cButtonWorkout.enabled = false;
    self.dButtonWorkout.enabled = false;
    NSLog(@"%@", self.athleteArray);
}

- (IBAction)workoutD:(UIButton *)sender {
    self.model.workout = @"Yoga";
    self.aButtonWorkout.enabled = false;
    self.bButtonWorkout.enabled = false;
    self.cButtonWorkout.enabled = false;
    self.dButtonWorkout.enabled = false;
    NSLog(@"%@", self.athleteArray);
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    NSLog(@"Preparing...");

    if([segue.identifier isEqualToString:@"Results"])
    {
        ResultsViewController *resultsVC = segue.destinationViewController;
        
        resultsVC.resultsOfCharacter = self.model;
        
        NSLog(@"%@", self.model.name);
        
    }
    
}

@end
