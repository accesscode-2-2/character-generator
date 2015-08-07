//
//  QuestionnaireTableViewController.m
//  CharacterGenerator
//
//  Created by Elber Carneiro on 8/5/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "QuestionnaireTableViewController.h"
#import "C4QStudent.h"

@interface QuestionnaireTableViewController ()

@property (nonatomic,strong) IBOutletCollection(UILabel) NSArray *quirkLabels;

@end

@implementation QuestionnaireTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    for (int i = 0; i < 32; i++) {
        [self.quirkLabels[i] text];
    }
    
    for (int i = 0; i < 32; i++) {
        [(UILabel *) self.quirkLabels[i] setText:[(C4QStudent *) self.C4QMentorArray[i] quirk]];
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return 33;
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
