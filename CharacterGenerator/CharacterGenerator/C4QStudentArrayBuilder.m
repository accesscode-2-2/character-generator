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
                        @"Though you look peaceful, you are actually a deadly MMA fighter.",
                        @"You would marry a salteña if you could, but first you'd wander all over Sunnyside looking for it.",
                        @"You break all laptops within close proximity before spilling juice all over them and losing your wallet. And that's just the first five minutes of class.",
                        @"You're so metal you've wrestled an alligator then asked him to be the bass player in your band.",
                        @"Your hipster moustache grows faster than you can make one good cup of coffee.",
                        @"Your laptop plays music loudly without your knowledge, making your adowable baby face sad.",
                        @"You are a member of 'Black Girls Who Code' and 'Girls Who Don't Say Much While They Code'.",
                        @"You're the guy who lost the Desperado role to Antonio Banderas.",
                        @"You look like Malcolm X's dorky D&D-playing cousin.",
                        @"Your beard is perfectly symmetrical because it's trimmed by robots at your internship.",
                        @"You always have sunglasses on your head.",
                        @"You routinely correct your teacher about things you yourself don't know anything about.",
                        @"Eric Sanchez",
                        @"You are ashamed to admit you secretly love apples because it would negatively impact your personal brand.",
                        @"You are blind in one eye but somehow have perfect depth perception in ping-pong.",
                        @"Henna Ahmed",
                        @"You shout bad puns while simultaneously chatting on the internet and extolling the virtues of Python while wearing a bee costume. And sometimes you also program.",
                        @"You will never invite any of your friends to your stand-up show because when you wrote your fun fact you didn't know they were gonna fact-check.",
                        @"You don't trust your MacBook's touchpad. You hope the mouse makes a comeback.",
                        @"Your favorite word is 'sick' because you are a master brogrammer from Connecticut.",
                        @"You'll keep on eating only plants unless you realize they also suffer, then you're screwed.",
                        @"Kaisha Jones",
                        @"Krishna Picart",
                        @"Lauren Caponong",
                        @"You almost ripped someone's face off for implying your taste in cartoons was an 'African thing.'",
                        @"Natalia Estrella",
                        @"You hate it when people mention your name and and the word 'moose' in the same sentence.",
                        @"When you're not in New York and tell people you're from Jamaica, they get really confused.",
                        @"You got a haircut in memory of Alex Qin the second she left, but you didn't win the cosplay contest 'cause you couldn't get her neck movements right.",
                        @"You give all your variables single letter names because Math has been doing it for hundreds of years and it seems to be working out just fine.",
                        @"You're the reason the new C4Q students were given an explicit character limit for their fun fact. You could've just said 'I love food.'",
                        @"You are worried about the criminal element in New York City, but you're the one who shoplifts when you're here."
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
