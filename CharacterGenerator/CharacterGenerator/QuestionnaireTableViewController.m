//
//  QuestionnaireTableViewController.m
//  CharacterGenerator
//
//  Created by Elber Carneiro on 8/5/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "QuestionnaireTableViewController.h"
#import "C4QStudent.h"
#import "C4QStudentManager.h"

@interface QuestionnaireTableViewController ()
@property (nonatomic, strong) IBOutletCollection(UILabel) NSArray *quirkLabels;
@property (nonatomic, strong) IBOutletCollection(UISwitch) NSArray *quirkSwitches;
@property (nonatomic) C4QStudentManager *manager;
@end

@implementation QuestionnaireTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.manager = [C4QStudentManager sharedC4QStudentManager];
    
    for (int i = 0; i < [self.manager.C4QMentorArray count]; i++) {
        [self.quirkLabels[i] setLineBreakMode:NSLineBreakByWordWrapping];
        [self.quirkLabels[i] setNumberOfLines:0];
        [self.quirkLabels[i] setFont:[UIFont systemFontOfSize:15.0]];
        [(UILabel *) self.quirkLabels[i]
            setText:[(C4QStudent *) self.manager.C4QMentorArray[i] quirk]];
    }
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 33;
}

- (IBAction)doneButtonTapped:(id)sender {
    NSMutableArray *questionnaireAnswers = [[NSMutableArray alloc]
                                            initWithCapacity:[self.manager.C4QMentorArray count]];
    
    for (UISwitch *s in self.quirkSwitches) {
        [questionnaireAnswers addObject:@(s.on)];
    }
    
    [self.manager pickMentor:questionnaireAnswers];
}


@end
