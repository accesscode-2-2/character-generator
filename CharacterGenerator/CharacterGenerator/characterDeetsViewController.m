//
//  characterDeetsViewController.m
//  CharacterGenerator
//
//  Created by Henna on 8/2/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "characterDeetsViewController.h"

@interface characterDeetsViewController ()
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *pushupsLabel;
@property (weak, nonatomic) IBOutlet UILabel *fightLabel;
@property (weak, nonatomic) IBOutlet UILabel *beerLabel;

@end

@implementation characterDeetsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.nameLabel.text = self.characterName;
    self.pushupsLabel.text = [NSString stringWithFormat:@"%d",self.pushupLimit];
    if(self.canFight){
        
        self.fightLabel.text = @"Yes";
    
    }
    else {
        self.fightLabel.text = @"No";
    }
    self.beerLabel.text = [NSString stringWithFormat:@"%d",self.beerLimit];
    
//    @property (nonatomic) int pushupLimit;
//    @property (nonatomic) BOOL canFight;
//    @property (nonatomic) int beerLimit;
    
    
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
