//
//  ResultsPageViewController.m
//  CharacterGenerator
//
//  Created by Jamaal Sedayao on 8/3/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "ResultsPageViewController.h"
#import "weekendPlans.h"
#import "CreatePageTableViewController.h"
#import "WendPlanCharacter.h"

@interface ResultsPageViewController ()

@end

@implementation ResultsPageViewController
- (IBAction)buttonTapped:(UIButton *)sender { //Home Button tapped

    [self.navigationController popToRootViewControllerAnimated:YES];

}

- (void)viewDidLoad {
    [super viewDidLoad];

    //WendPlanCharacter *planCharacter = [[WendPlanCharacter alloc]init];
    
    //self.labelPlans.text = self.planCharacter.planString;
    self.labelPlans.text = self.character.planString;
    self.labelCeleb.text = self.character.celebString;
    self.labelFood.text = self.character.foodString;
    self.labelAlcohol.text = self.character.alcoholString;
    
//    self.pokemonNameLabel.text = self.pokemonName;
//    self.pokemonImageView.image = [UIImage imageNamed:self.pokemonImageName];
    
    [self.view reloadInputViews]; 

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
