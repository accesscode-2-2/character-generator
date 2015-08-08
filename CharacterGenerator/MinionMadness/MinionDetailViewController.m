//
//  MinionDetailViewController.m
//  MinionMadness
//
//  Created by Jovanny Espinal on 8/5/15.
//  Copyright (c) 2015 Jovanny Espinal. All rights reserved.
//

#import "MinionDetailViewController.h"
<<<<<<< HEAD
#import <AVFoundation/AVFoundation.h> //mp3
=======
#import <UIKit/UIKit.h>

@interface MinionDetailViewController()
>>>>>>> 312235131d88af965723bfa6c4061d6599bb40da

@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *eyesLabel;
@property (weak, nonatomic) IBOutlet UILabel *hairLabel;
@property (weak, nonatomic) IBOutlet UILabel *bodyTypeLabel;
@property (weak, nonatomic) IBOutlet UILabel *heightLabel;

@property (nonatomic) AVAudioPlayer *minionSong;

@end

@implementation MinionDetailViewController

- (void)viewWillAppear:(BOOL)animated {
    
    [self.minionSong play]; // insert this wherever you want minionsong to play!
    
}

- (void)viewDidLoad {
    [super viewDidLoad];

    NSString *path = [NSString stringWithFormat:@"%@/minionsong2.mp3", [[NSBundle mainBundle] resourcePath]];
    NSURL *soundUrl = [NSURL fileURLWithPath:path];
    
    
    self.minionSong = [[AVAudioPlayer alloc] initWithContentsOfURL:soundUrl error:nil];
    
    self.nameLabel.text = self.minionName;
    self.imageView.image = self.minionImage;
    
    self.eyesLabel.text = self.numberOfEyes;
    self.hairLabel.text = self.hairType;
    self.bodyTypeLabel.text = self.bodyType;
    self.heightLabel.text = [NSString stringWithFormat:@"%d", self.height];
    
    self.navigationItem.title = @"Minion";
   
}



@end
