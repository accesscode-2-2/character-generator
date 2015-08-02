//
//  ViewController.m
//  CharacterGenerator
//
//  Created by Michael Kavouras on 8/2/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "ViewController.h"
#import "characterModel.h"

@interface ViewController ()
@property (nonatomic) characterModel * model;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.model = [[characterModel alloc]init];
    [self.model initializeCharacters];
    

    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
