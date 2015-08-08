//
//  C4QStudentArrayBuilder.m
//  CharacterGenerator
//
//  Created by Elber Carneiro on 8/5/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "C4QStudentArrayBuilder.h"
#import "C4QStudent.h"

@implementation C4QStudentArrayBuilder

- (void)initializeMentorArray {
    NSMutableArray *tempArray = [[NSMutableArray alloc] init];
    for (int i = 0; i < 32; i++) {
        [tempArray addObject:[[C4QStudent alloc] init]];
    }
    NSLog(@"%@", tempArray);
    tempArray = [self setMentorGenders:tempArray];
    tempArray = [self setMentorNames:tempArray];
    tempArray = [self setMentorResidences:tempArray];
    tempArray = [self setMentorQuirks:tempArray];
    
    _C4QMentorArray = tempArray;
}

- (NSMutableArray *)setMentorNames:(NSMutableArray *)tempArray {
    NSArray *names = @[
                       @"Artur Lan", @"Ayuna Vogel", @"Bereket Ghebremedhin",
                       @"Brian Blanco", @"Charles H Kang", @"Chris David",
                       @"Christella Dolmo", @"Christian Maldonado", @"Daniel Distant",
                       @"Derek Netto", @"Diana Elezaj", @"Elber Carneiro",
                       @"Eric Sanchez", @"Eric Sze", @"Felicia Weathers",
                       @"Henna Ahmed", @"Jackie Meggesto", @"Jamaal Sedayao",
                       @"Jason Wang", @"Jovanny Espinal", @"Justine Gartner",
                       @"Kaisha Jones", @"Krishna Picart", @"Lauren Caponong",
                       @"Mesfin Bekele Mekonnen", @"Natalia Estrella", @"Shena Yoshida",
                       @"Umar Mahmud", @"Kaira Villanueva", @"Varindra Hart",
                       @"Xiulan Shi", @"Zoufishan Mehdi"
                       ];
    
    for (int i = 0; i < 32; i++) {
        [tempArray[i] setName:names[i]];
    }
    
    for (C4QStudent *s in tempArray) {
        NSLog(@"%@", s.name);
    }
    
    return tempArray;
}

- (NSMutableArray *)setMentorGenders:(NSMutableArray *)tempArray {
    NSArray *genders = @[
                       @"male", @"female", @"male",
                       @"male", @"male", @"male",
                       @"female", @"male", @"male",
                       @"male", @"female", @"male",
                       @"male", @"male", @"female",
                       @"female", @"female", @"male",
                       @"male", @"male", @"female",
                       @"female", @"male", @"female",
                       @"male", @"female", @"female",
                       @"male", @"female", @"male",
                       @"female", @"female"
                       ];
    
    for (int i = 0; i < 32; i++) {
        [tempArray[i] setGender:genders[i]];
    }
    
    for (C4QStudent *s in tempArray) {
        NSLog(@"%@", s.gender);
    }
    
    return tempArray;
}

- (NSMutableArray *)setMentorResidences:(NSMutableArray *)tempArray {
    NSArray *residences = @[
                        @"Queens", @"Queens", @"Bronx",
                        @"Queens", @"Brooklyn", @"Manhattan",
                        @"Bronx", @"New Jersey", @"Westchester County",
                        @"Queens", @"Bronx", @"Manhattan",
                        @"Brooklyn", @"Manhattan", @"Long Island",
                        @"Queens", @"Brooklyn", @"Queens",
                        @"Queens", @"Bronx", @"Brooklyn",
                        @"Brooklyn", @"Queens", @"Manhattan",
                        @"Bronx", @"Manhattan", @"Brooklyn",
                        @"Queens", @"New Jersey", @"Queens",
                        @"Queens", @"Long Island"
                        ];
    
    for (int i = 0; i < 32; i++) {
        [tempArray[i] setResidence:residences[i]];
    }
    
    for (C4QStudent *s in tempArray) {
        NSLog(@"%@", s.residence);
    }
    
    return tempArray;
}



- (NSMutableArray *)setMentorQuirks:(NSMutableArray *)tempArray {
    NSArray *quirks = @[
                        @"You are secretly an MMA fighter.",
                        @"You would marry a salteña if you could.",
                        @"You break all laptops nearby then spill juice on them.",
                        @"You're so metal you've wrestled an alligator.",
                        @"It takes you forever to make one good cup of coffee.",
                        @"You have an adorable baby face.",
                        @"You're in 'Girls Who Don't Say Much While They Code'.",
                        @"You love answering dumb questions about twins.",
                        @"Your get-rich plan is to sell Git t-shirts.",
                        @"Your beard is perfectly symmetrical.",
                        @"You sound like a Russian spy.",
                        @"You correct your teacher in class about things you don't understand.",
                        @"You've gotten tired of asking people to restart their computers.",
                        @"You secretly love apples but don't want to admit it.",
                        @"You were in Orange is the New Black.",
                        @"You love interning for free.",
                        @"You shout bad puns during lectures.",
                        @"You won't invite us to your standup show.",
                        @"You use a mouse instead of your perfectly adequate touchpad.",
                        @"You're a brogrammer whose favorite word is 'sick.'",
                        @"If it's proven that plants suffer you'll eat air.",
                        @"Your teacher steals your code to make Satanic apps.",
                        @"You'll skip class to go to Mexico.",
                        @"You use your company's happy hour to get drunk before tech meetups.",
                        @"Your taste in cartoons is not 'an African thing.'",
                        @"Your voice needs a tone adjustment.",
                        @"You're too polite to jaywalk or throw up on subway platforms.",
                        @"You're from Jamaica--the cool one.",
                        @"You got an Alex Qin haircut but don't have her neck movements down.",
                        @"You give your variables single letter names.",
                        @"You wrote a whole essay for your fun fact.",
                        @"You are a shoplifting mastermind."
                        ];
    
    for (int i = 0; i < 32; i++) {
        [tempArray[i] setQuirk:quirks[i]];
    }

    for (C4QStudent *s in tempArray) {
        NSLog(@"%@", s.quirk);
    }
    
    return tempArray;
}

- (void)initializeStudentArray {
    _C4QStudentArray = [[NSMutableArray alloc]init];
}

@end
