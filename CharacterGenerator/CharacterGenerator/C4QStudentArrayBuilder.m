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
    C4QStudent *student = [[C4QStudent alloc] init];
    NSMutableArray *tempArray = [[NSMutableArray alloc] init];
    for (int i = 0; i < 32; i++) {
        [tempArray addObject:student];
    }
    NSLog(@"%@", tempArray);
    
    tempArray = [self setMentorNames:tempArray];
    tempArray = [self setMentorResidences:tempArray];
    tempArray = [self setMentorImageNames:tempArray];
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
        NSLog(@"%@", [tempArray[i] name]);
    }
    
    return tempArray;
}

- (NSMutableArray *)setMentorGenders:(NSMutableArray *)tempArray {
    NSArray *names = @[
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
        [tempArray[i] setName:names[i]];
        NSLog(@"%@", [tempArray[i] name]);
    }
    
    return tempArray;
}

- (NSMutableArray *)setMentorResidences:(NSMutableArray *)tempArray {
    NSArray *places = @[
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
        [tempArray[i] setResidence:places[i]];
        NSLog(@"%@", [tempArray[i] residence]);
    }
    
    return tempArray;
}

- (NSMutableArray *)setMentorImageNames:(NSMutableArray *)tempArray {
    NSArray *imageNames = @[
                            @"artur", @"ayuna", @"bereket",
                            @"brian", @"charles", @"chris",
                            @"christella", @"christian", @"daniel",
                            @"derek", @"diana", @"elber",
                            @"eric sanchez", @"eric sze", @"felicia",
                            @"henna", @"jackie", @"jamaal",
                            @"jason", @"jovanny", @"justine",
                            @"kaisha", @"krishna", @"lauren",
                            @"mesfin", @"natalia", @"shena",
                            @"umar", @"fatima", @"varindra",
                            @"xiulan", @"zoufishan"
                            ];
    
    for (int i = 0; i < 32; i++) {
        [tempArray[i] setImageName:imageNames[i]];
        NSLog(@"%@", [tempArray[i] imageName]);
    }
    
    return tempArray;
}

- (NSMutableArray *)setMentorQuirks:(NSMutableArray *)tempArray {
    NSArray *quirks = @[
                        @"You are secretly an MMA fighter.",
                        @"You would marry a salteña if you could.",
                        @"You break all laptops nearby.",
                        @"You've wrestled an alligator.",
                        @"It takes you forever to make good coffee.",
                        @"You have an adorable baby face.",
                        @"You're in 'Girls Who Don't Say Much While They Code'.",
                        @"You love answering dumb questions about twins.",
                        @"Daniel ",
                        @"Your beard is perfectly symmetrical.",
                        @"You always have sunglasses on your head.",
                        @"You correct your teacher in class.",
                        @"Eric ",
                        @"You secretly love apples.",
                        @"You were in Orange is the New Black.",
                        @"You love interning for free.",
                        @"You shout bad puns.",
                        @"You won't invite us to your standup.",
                        @"You use a mouse instead of your perfect touchpad.",
                        @"Your favorite word is 'sick.'",
                        @"If it's proven that plants suffer you'll eat air.",
                        @"Kaisha ",
                        @"You'll skip class to go to Mexico.",
                        @"Lauren ",
                        @"Your taste in cartoons is not 'an African thing.'",
                        @"Your voice needs a tone adjustment.",
                        @"You throw up on subway platforms.",
                        @"You're from Jamaica--the cool one.",
                        @"You got an Alex Qin haircut.",
                        @"You give your variables single letter names.",
                        @"You wrote a whole essay for your fun fact.",
                        @"You are a shoplifting mastermind."
                        ];
    
    for (int i = 0; i < 32; i++) {
        [tempArray[i] setQuirk:quirks[i]];
        NSLog(@"%@", [tempArray[i] quirk]);
    }
    
    return tempArray;
}

- (void)initializeStudentArray {
    _C4QStudentArray = [[NSMutableArray alloc]init];
}

@end
