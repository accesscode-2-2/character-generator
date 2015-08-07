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

@end
