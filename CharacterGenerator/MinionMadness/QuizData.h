//
//  QuizData.h
//  MinionMadness
//
//  Created by Jovanny Espinal on 8/5/15.
//  Copyright (c) 2015 Jovanny Espinal. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Character.h"

@interface QuizData : NSObject
@property (nonatomic)NSMutableArray *allCharacters;
@property (nonatomic)NSDictionary *quizQuestions;
@property (nonatomic)Character *minion;
-(void)initializeData;
-(void)initializeArray; 

@end
