//
//  ResultsPageViewController.m
//  CharacterGenerator
//
//  Created by Jamaal Sedayao on 8/3/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "ResultsPageViewController.h"


@interface ResultsPageViewController ()

@end

@implementation ResultsPageViewController
- (IBAction)buttonTapped:(UIButton *)sender {
    
    [self.navigationController popToRootViewControllerAnimated:YES];

    
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.labelPlans.text = self.planOne;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
