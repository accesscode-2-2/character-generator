//
//  HomeScreenViewController.m
//  CharacterGenerator
//
//  Created by Chris David on 8/8/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "HomeScreenViewController.h"

@interface HomeScreenViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *c4qLogo;

@end

@implementation HomeScreenViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.c4qLogo.layer.cornerRadius = 10.0;
    self.c4qLogo.layer.masksToBounds = YES;
    self.c4qLogo.layer.borderWidth = 1.5;
    self.c4qLogo.layer.borderColor =  [[UIColor colorWithRed:122/255.0 green:123/255.0 blue:124/255.0 alpha:1.0] CGColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
  
}



@end
