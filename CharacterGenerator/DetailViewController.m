//
//  DetailViewController.m
//  CharacterGenerator
//
//  Created by Brian Blanco on 8/2/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()
@property (weak, nonatomic) IBOutlet UILabel *characterName;
@property (weak, nonatomic) IBOutlet UIImageView *characterImage;

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.characterName.text = self.name;
    // Do any additional setup after loading the view.
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
