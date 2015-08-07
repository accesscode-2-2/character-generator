//
//  C4QStudentManager.m
//  CharacterGenerator
//
//  Created by Elber Carneiro on 8/7/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "C4QStudent.h"
#import "C4QStudentManager.h"
#import "C4QStudentArrayBuilder.h"

@interface C4QStudentManager ()
@property (nonatomic) C4QStudentArrayBuilder *SAB;
@end

@implementation C4QStudentManager

@synthesize C4QStudentArray;
@synthesize C4QMentorArray;

#pragma mark Singleton Methods

+ (id)sharedC4QStudentManager {
    static C4QStudentManager *sharedC4QStudentManager = nil;
    
    // this token and the dispatch_once method make sure that the singleton is
    // created only ONCE, so we can use it throughout the app.
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedC4QStudentManager = [[self alloc] init];
    });
    
    return sharedC4QStudentManager;
}

- (id)init {
    if (self = [super init]) {
        // initialize array properties

        self.SAB = [[C4QStudentArrayBuilder alloc] init];
        
        [self.SAB initializeMentorArray];
        self.C4QMentorArray = self.SAB.C4QMentorArray;
        
        [self.SAB initializeStudentArray];
        self.C4QStudentArray = self.SAB.C4QStudentArray;
    }
    return self;
}

- (void)dealloc {
    // Should never be called, but just here for clarity really.
}

// custom method to add student to the student array.
- (void)addNewStudentWithName:(NSString *)name
                       gender:(NSString *)gender
                    residence:(NSString *)residence
                 andImageName:(NSString *)imageName {

    C4QStudent *newStudent = [[C4QStudent alloc] init];
    newStudent.name = name;
    newStudent.gender = gender;
    newStudent.residence = residence;
    newStudent.imageName = imageName;
    
    [self.C4QStudentArray addObject:newStudent];
}

// This method picks a mentor for the new student based on their questionnaire
// answers. It allows one mentor to be responsible for multiple new students
// (it does not remove a picked mentor from the candidate field).
- (void)pickMentor:(NSArray *)questionnaireAnswers {
    
    // filter out only the yes answers to narrow the field of mentor
    // candidates
    NSMutableArray *picks = [[NSMutableArray alloc] init];
    for (int i = 0; i < [questionnaireAnswers count]; i++) {
        if ([questionnaireAnswers[i] isEqualToNumber:@1]) {
            [picks addObject:@(i)];
        }
    }
    
    // if user sent an array of answers without a single yes, populate
    // picks with all mentor indexes for a completely random pick
    if ([picks count] == 0) {
        for (int i = 0; i < [self.C4QMentorArray count]; i++) {
            picks[i] = @(i);
        }
    }
    NSLog(@"Picks: %@", picks);
    
    // pick a random mentor index from the ones selected
    NSUInteger randomIndex = arc4random_uniform((u_int32_t) [picks count]);
    NSLog(@"randomIndex: %lu", randomIndex);
    
    NSUInteger randomPick = [picks[randomIndex] unsignedIntegerValue];
    NSLog(@"randomPick: %lu", randomPick);
    
    // set the latest student's mentorIndex property to the mentor pick
    [self.C4QStudentArray[[self.C4QStudentArray count] - 1] setMentorIndex:randomPick];
    NSLog(@"Mentor: %@", [self.C4QMentorArray[randomPick] name]);
    
}

@end
