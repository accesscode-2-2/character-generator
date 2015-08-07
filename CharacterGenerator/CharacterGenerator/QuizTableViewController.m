//
//  QuizTableViewController.m
//  CharacterGenerator
//
//  Created by Justine Gartner on 8/2/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "QuizTableViewController.h"
#import "DestinationsModel.h"
//Created a new separate file/class for the model
//#import "DestinationDetails.h"

@interface QuizTableViewController ()

@property (weak, nonatomic) IBOutlet UIButton *answer1a;
@property (weak, nonatomic) IBOutlet UIButton *answer1b;
@property (weak, nonatomic) IBOutlet UIButton *answer1c;
@property (weak, nonatomic) IBOutlet UIButton *answer1d;

@property (weak, nonatomic) IBOutlet UIButton *answer2a;
@property (weak, nonatomic) IBOutlet UIButton *answer2b;

@property (weak, nonatomic) IBOutlet UIButton *answer3a;
@property (weak, nonatomic) IBOutlet UIButton *answer3b;

@property (weak, nonatomic) IBOutlet UIButton *answer4a;
@property (weak, nonatomic) IBOutlet UIButton *answer4b;
@property (weak, nonatomic) IBOutlet UIButton *answer4c;
@property (weak, nonatomic) IBOutlet UIButton *answer4d;
@property (weak, nonatomic) IBOutlet UIButton *answer4e;

@property (weak, nonatomic) IBOutlet UIButton *answer5a;
@property (weak, nonatomic) IBOutlet UIButton *answer5b;
@property (weak, nonatomic) IBOutlet UIButton *answer5c;
@property (weak, nonatomic) IBOutlet UIButton *answer5d;
@property (weak, nonatomic) IBOutlet UIButton *answer5e;


@property (nonatomic) NSMutableArray *selectedButtons;
@property (nonatomic) NSMutableDictionary *dictionaryValues;


@end

@implementation QuizTableViewController
- (IBAction)cancelButtonTapped:(UIBarButtonItem *)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.selectedButtons = [[NSMutableArray alloc] init];
    
}

- (IBAction)selectedAnswer1a:(UIButton *)sender {
    
    [self.selectedButtons insertObject:self.answer1a atIndex:0];
    
    [self.answer1a setBackgroundColor:[UIColor lightGrayColor]];
    [self.answer1b setBackgroundColor:[UIColor whiteColor]];
    [self.answer1c setBackgroundColor:[UIColor whiteColor]];
    [self.answer1d setBackgroundColor:[UIColor whiteColor]];
    NSLog(@"hello");
}



-(void)selectedAnswer1b{
    
    [self.selectedButtons insertObject:self.answer1b atIndex:0];
    
    [self.answer1a setBackgroundColor:[UIColor whiteColor]];
    [self.answer1b setBackgroundColor:[UIColor lightGrayColor]];
    [self.answer1c setBackgroundColor:[UIColor whiteColor]];
    [self.answer1d setBackgroundColor:[UIColor whiteColor]];
    
    
}

-(void)selectedAnswer1c{
    
    [self.selectedButtons insertObject:self.answer1c atIndex:0];
    
    [self.answer1a setBackgroundColor:[UIColor whiteColor]];
    [self.answer1b setBackgroundColor:[UIColor whiteColor]];
    [self.answer1c setBackgroundColor:[UIColor lightGrayColor]];
    [self.answer1d setBackgroundColor:[UIColor whiteColor]];
    
    
}

-(void)selectedAnswer1d{
    
    [self.selectedButtons insertObject:self.answer1d atIndex:0];
    
    [self.answer1a setBackgroundColor:[UIColor whiteColor]];
    [self.answer1b setBackgroundColor:[UIColor whiteColor]];
    [self.answer1c setBackgroundColor:[UIColor whiteColor]];
    [self.answer1d setBackgroundColor:[UIColor lightGrayColor]];
    
    
}

-(void)selectedAnswer2a{
    
    [self.selectedButtons insertObject:self.answer2a atIndex:1];
    
    [self.answer2a setBackgroundColor:[UIColor lightGrayColor]];
    [self.answer2b setBackgroundColor:[UIColor whiteColor]];
    
}

-(void)selectedAnswer2b{
    
    [self.selectedButtons insertObject:self.answer2b atIndex:1];
    
    [self.answer2a setBackgroundColor:[UIColor whiteColor]];
    [self.answer2b setBackgroundColor:[UIColor lightGrayColor]];
    
}

-(void)selectedAnswer3a{
    
    [self.selectedButtons insertObject:self.answer3a atIndex:2];
    
    [self.answer3a setBackgroundColor:[UIColor lightGrayColor]];
    [self.answer3b setBackgroundColor:[UIColor whiteColor]];
    
}

-(void)selectedAnswer3b{
    
    [self.selectedButtons insertObject:self.answer3b atIndex:2];
    
    [self.answer3a setBackgroundColor:[UIColor whiteColor]];
    [self.answer3b setBackgroundColor:[UIColor lightGrayColor]];
    
    
}

-(void)selectedAnswer4a{
    
    [self.selectedButtons insertObject:self.answer4a atIndex:3];
    
    [self.answer4a setBackgroundColor:[UIColor lightGrayColor]];
    [self.answer4b setBackgroundColor:[UIColor whiteColor]];
    [self.answer4c setBackgroundColor:[UIColor whiteColor]];
    [self.answer4d setBackgroundColor:[UIColor whiteColor]];
    [self.answer4e setBackgroundColor:[UIColor whiteColor]];
    
}

-(void)selectedAnswer4b{
    
    [self.selectedButtons insertObject:self.answer4b atIndex:3];
    
    [self.answer4a setBackgroundColor:[UIColor whiteColor]];
    [self.answer4b setBackgroundColor:[UIColor lightGrayColor]];
    [self.answer4c setBackgroundColor:[UIColor whiteColor]];
    [self.answer4d setBackgroundColor:[UIColor whiteColor]];
    [self.answer4e setBackgroundColor:[UIColor whiteColor]];
    
}

-(void)selectedAnswer4c{
    
    [self.selectedButtons insertObject:self.answer4c atIndex:3];
    
    [self.answer4a setBackgroundColor:[UIColor whiteColor]];
    [self.answer4b setBackgroundColor:[UIColor whiteColor]];
    [self.answer4c setBackgroundColor:[UIColor lightGrayColor]];
    [self.answer4d setBackgroundColor:[UIColor whiteColor]];
    [self.answer4e setBackgroundColor:[UIColor whiteColor]];
    
}

-(void)selectedAnswer4d{
    
    [self.selectedButtons insertObject:self.answer4d atIndex:3];
    
    [self.answer4a setBackgroundColor:[UIColor whiteColor]];
    [self.answer4b setBackgroundColor:[UIColor whiteColor]];
    [self.answer4c setBackgroundColor:[UIColor whiteColor]];
    [self.answer4d setBackgroundColor:[UIColor lightGrayColor]];
    [self.answer4e setBackgroundColor:[UIColor whiteColor]];
    
}

-(void)selectedAnswer4e{
    
    [self.selectedButtons insertObject:self.answer4e atIndex:3];
    
    [self.answer4a setBackgroundColor:[UIColor whiteColor]];
    [self.answer4b setBackgroundColor:[UIColor whiteColor]];
    [self.answer4c setBackgroundColor:[UIColor whiteColor]];
    [self.answer4d setBackgroundColor:[UIColor whiteColor]];
    [self.answer4e setBackgroundColor:[UIColor lightGrayColor]];
    
}

-(void)selectedAnswer5a{
    
    [self.selectedButtons insertObject:self.answer5a atIndex:4];
    
    [self.answer5a setBackgroundColor:[UIColor lightGrayColor]];
    [self.answer5b setBackgroundColor:[UIColor whiteColor]];
    [self.answer5c setBackgroundColor:[UIColor whiteColor]];
    [self.answer5d setBackgroundColor:[UIColor whiteColor]];
    [self.answer5e setBackgroundColor:[UIColor whiteColor]];
    
}

-(void)selectedAnswer5b{
    
    [self.selectedButtons insertObject:self.answer5b atIndex:4];
    
    [self.answer5a setBackgroundColor:[UIColor whiteColor]];
    [self.answer5b setBackgroundColor:[UIColor lightGrayColor]];
    [self.answer5c setBackgroundColor:[UIColor whiteColor]];
    [self.answer5d setBackgroundColor:[UIColor whiteColor]];
    [self.answer5e setBackgroundColor:[UIColor whiteColor]];
    
}

-(void)selectedAnswer5c{
    
    [self.selectedButtons insertObject:self.answer5c atIndex:4];
    
    [self.answer5a setBackgroundColor:[UIColor whiteColor]];
    [self.answer5b setBackgroundColor:[UIColor whiteColor]];
    [self.answer5c setBackgroundColor:[UIColor lightGrayColor]];
    [self.answer5d setBackgroundColor:[UIColor whiteColor]];
    [self.answer5e setBackgroundColor:[UIColor whiteColor]];
}

-(void)selectedAnswer5d{
    
    [self.selectedButtons insertObject:self.answer5d atIndex:4];
    
    [self.answer5a setBackgroundColor:[UIColor whiteColor]];
    [self.answer5b setBackgroundColor:[UIColor whiteColor]];
    [self.answer5c setBackgroundColor:[UIColor whiteColor]];
    [self.answer5d setBackgroundColor:[UIColor lightGrayColor]];
    [self.answer5e setBackgroundColor:[UIColor whiteColor]];
    
}

-(void)selectedAnswer5e{
    
    [self.selectedButtons insertObject:self.answer5e atIndex:4];
    
    [self.answer5a setBackgroundColor:[UIColor whiteColor]];
    [self.answer5b setBackgroundColor:[UIColor whiteColor]];
    [self.answer5c setBackgroundColor:[UIColor whiteColor]];
    [self.answer5d setBackgroundColor:[UIColor whiteColor]];
    [self.answer5e setBackgroundColor:[UIColor lightGrayColor]];
    
    
}

- (void)selectedDone {
    
    for (int i = 0 ; i < self.selectedButtons.count; i++) {
        UIButton *selectedButtonAtCurrentIndex = [self.selectedButtons objectAtIndex:i];
        
        if (selectedButtonAtCurrentIndex == self.answer1a) {
            
            
            // change dictionary value for Hokkaido
            NSNumber *valueForAnswer1a = @(1);
            
            NSNumber *currentValueForHokkaido = [self.dictionaryValues objectForKey:@"Hokkaido"];
            
            NSInteger currentValueAsAnInteger = [currentValueForHokkaido integerValue];
            currentValueAsAnInteger += [valueForAnswer1a integerValue];
            
            NSNumber *newValueForHokkaido = @(currentValueAsAnInteger);
            
            [self.dictionaryValues setValue:newValueForHokkaido forKey:@"Hokkaido"];
        }
        
        
        if (selectedButtonAtCurrentIndex == self.answer1b) {
            
            
            // change dictionary value for Aspen
            
            NSNumber *valueForAnswer1b = @(1);
            
            NSNumber *currentValueForAspen = [self.dictionaryValues objectForKey:@"Aspen"];
            
            NSInteger currentValueAsAnInteger = [currentValueForAspen integerValue];
            currentValueAsAnInteger += [valueForAnswer1b integerValue];
            
            NSNumber *newValueForAspen = @(currentValueAsAnInteger);
            
            [self.dictionaryValues setValue:newValueForAspen forKey:@"Aspen"];
            
            
            // change dictionary value for Fox Glacier
            
            NSNumber *currentValueForFoxGlacier = [self.dictionaryValues objectForKey:@"Fox Glacier"];
            
            NSInteger currentFoxGlacierValueAsAnInteger = [currentValueForFoxGlacier integerValue];
            currentFoxGlacierValueAsAnInteger += [valueForAnswer1b integerValue];
            
            NSNumber *newValueForFoxGlacier = @(currentFoxGlacierValueAsAnInteger);
            
            [self.dictionaryValues setValue:newValueForFoxGlacier forKey:@"Fox Glacier"];
            
        }
        
        
        if (selectedButtonAtCurrentIndex == self.answer1c) {
            
            
            //change dictionary value for Bali
            
            NSNumber *valueForAnswer1c = @(1);
            
            NSNumber *currentValueForBali = [self.dictionaryValues objectForKey:@"Bali"];
            
            NSInteger currentValueAsAnInteger = [currentValueForBali integerValue];
            currentValueAsAnInteger += [valueForAnswer1c integerValue];
            
            NSNumber *newValueForBali = @(currentValueAsAnInteger);
            
            [self.dictionaryValues setValue:newValueForBali forKey:@"Bali"];
            
        }
        
        
        if (selectedButtonAtCurrentIndex == self.answer1d) {
            
            
            //change dictionary value for Monaco
            
            NSNumber *valueForAnswer1d = @(1);
            
            NSNumber *currentValueForMonaco = [self.dictionaryValues objectForKey:@"Monaco"];
            
            NSInteger currentValueAsAnInteger = [currentValueForMonaco integerValue];
            currentValueAsAnInteger += [valueForAnswer1d integerValue];
            
            NSNumber *newValueForMonaco = @(currentValueAsAnInteger);
            
            [self.dictionaryValues setValue:newValueForMonaco forKey:@"Monaco"];
            
        }
        
        
        if (selectedButtonAtCurrentIndex == self.answer2a) {
            
            
            // change dictionary value for Aspen
            
            NSNumber *valueForAnswer2a = @(1);
            
            NSNumber *currentValueForAspen = [self.dictionaryValues objectForKey:@"Aspen"];
            
            NSInteger currentValueAsAnInteger = [currentValueForAspen integerValue];
            currentValueAsAnInteger += [valueForAnswer2a integerValue];
            
            NSNumber *newValueForAspen = @(currentValueAsAnInteger);
            
            [self.dictionaryValues setValue:newValueForAspen forKey:@"Aspen"];
            
            
            // change dictionary value for Monaco
            
            NSNumber *currentValueForMonaco = [self.dictionaryValues objectForKey:@"Monaco"];
            
            NSInteger currentMonacoValueAsAnInteger = [currentValueForMonaco integerValue];
            currentMonacoValueAsAnInteger += [valueForAnswer2a integerValue];
            
            NSNumber *newValueForMonaco = @(currentMonacoValueAsAnInteger);
            
            [self.dictionaryValues setValue:newValueForMonaco forKey:@"Monaco"];
        }
        
        
        if (selectedButtonAtCurrentIndex == self.answer2b) {
            
            
            // change dictionary value for Hokkaido
            
            NSNumber *valueForAnswer2b = @(1);
            
            NSNumber *currentValueForHokkaido = [self.dictionaryValues objectForKey:@"Hokkaido"];
            
            NSInteger currentValueAsAnInteger = [currentValueForHokkaido integerValue];
            currentValueAsAnInteger += [valueForAnswer2b integerValue];
            
            NSNumber *newValueForHokkaido = @(currentValueAsAnInteger);
            
            [self.dictionaryValues setValue:newValueForHokkaido forKey:@"Hokkaido"];
            
            
            // change dictionary value for Bali
            
            NSNumber *currentValueForBali = [self.dictionaryValues objectForKey:@"Bali"];
            
            NSInteger currentBaliValueAsAnInteger = [currentValueForBali integerValue];
            currentBaliValueAsAnInteger += [valueForAnswer2b integerValue];
            
            NSNumber *newValueForBali = @(currentBaliValueAsAnInteger);
            
            [self.dictionaryValues setValue:newValueForBali forKey:@"Bali"];
            
            
            // change dictionary value for Fox Glacier
            
            NSNumber *currentValueForFoxGlacier = [self.dictionaryValues objectForKey:@"Fox Glacier"];
            
            NSInteger currentFoxGlacierValueAsAnInteger = [currentValueForFoxGlacier integerValue];
            currentFoxGlacierValueAsAnInteger += [valueForAnswer2b integerValue];
            
            NSNumber *newValueForFoxGlacier = @(currentFoxGlacierValueAsAnInteger);
            
            [self.dictionaryValues setValue:newValueForFoxGlacier forKey:@"Fox Glacier"];
            
        }
        
        
        if (selectedButtonAtCurrentIndex == self.answer3a) {
            
            
            // change dictionary value for Hokkaido
            
            NSNumber *valueForAnswer3a = @(1);
            
            NSNumber *currentValueForHokkaido = [self.dictionaryValues objectForKey:@"Hokkaido"];
            
            NSInteger currentValueAsAnInteger = [currentValueForHokkaido integerValue];
            currentValueAsAnInteger += [valueForAnswer3a integerValue];
            
            NSNumber *newValueForHokkaido = @(currentValueAsAnInteger);
            
            [self.dictionaryValues setValue:newValueForHokkaido forKey:@"Hokkaido"];
            
            
            // change dictionary value for Bali
            
            NSNumber *currentValueForBali = [self.dictionaryValues objectForKey:@"Bali"];
            
            NSInteger currentBaliValueAsAnInteger = [currentValueForBali integerValue];
            currentBaliValueAsAnInteger += [valueForAnswer3a integerValue];
            
            NSNumber *newValueForBali = @(currentBaliValueAsAnInteger);
            
            [self.dictionaryValues setValue:newValueForBali forKey:@"Bali"];
            
            
            // change dictionary value for Aspen
            
            NSNumber *currentValueForAspen = [self.dictionaryValues objectForKey:@"Aspen"];
            
            NSInteger currentAspenValueAsAnInteger = [currentValueForAspen integerValue];
            currentAspenValueAsAnInteger += [valueForAnswer3a integerValue];
            
            NSNumber *newValueForAspen = @(currentAspenValueAsAnInteger);
            
            [self.dictionaryValues setValue:newValueForAspen forKey:@"Bali"];
            
            
            // change dictionary value for Fox Glacier
            
            NSNumber *currentValueForFoxGlacier = [self.dictionaryValues objectForKey:@"Fox Glacier"];
            
            NSInteger currentFoxGlacierValueAsAnInteger = [currentValueForFoxGlacier integerValue];
            currentFoxGlacierValueAsAnInteger += [valueForAnswer3a integerValue];
            
            NSNumber *newValueForFoxGlacier = @(currentFoxGlacierValueAsAnInteger);
            
            [self.dictionaryValues setValue:newValueForFoxGlacier forKey:@"Fox Glacier"];
            
        }
        
        if (selectedButtonAtCurrentIndex == self.answer3b) {
            
            //change dictionary value for Monaco
            
            NSNumber *valueForAnswer3b = @(1);
            
            NSNumber *currentValueForMonaco = [self.dictionaryValues objectForKey:@"Monaco"];
            
            NSInteger currentValueAsAnInteger = [currentValueForMonaco integerValue];
            currentValueAsAnInteger += [valueForAnswer3b integerValue];
            
            NSNumber *newValueForMonaco = @(currentValueAsAnInteger);
            
            [self.dictionaryValues setValue:newValueForMonaco forKey:@"Monaco"];
            
        }
        
        if (selectedButtonAtCurrentIndex == self.answer4a) {
            
            // change dictionary value for Hokkaido
            NSNumber *valueForAnswer4a = @(1);
            
            NSNumber *currentValueForHokkaido = [self.dictionaryValues objectForKey:@"Hokkaido"];
            
            NSInteger currentValueAsAnInteger = [currentValueForHokkaido integerValue];
            currentValueAsAnInteger += [valueForAnswer4a integerValue];
            
            NSNumber *newValueForHokkaido = @(currentValueAsAnInteger);
            
            [self.dictionaryValues setValue:newValueForHokkaido forKey:@"Hokkaido"];
        }
        
        
        if (selectedButtonAtCurrentIndex == self.answer4b) {
            
            
            // change dictionary value for Bali
            
            NSNumber *valueForAnswer4b = @(1);
            
            NSNumber *currentValueForBali = [self.dictionaryValues objectForKey:@"Bali"];
            
            NSInteger currentValueAsAnInteger = [currentValueForBali integerValue];
            currentValueAsAnInteger += [valueForAnswer4b integerValue];
            
            NSNumber *newValueForBali = @(currentValueAsAnInteger);
            
            [self.dictionaryValues setValue:newValueForBali forKey:@"Bali"];
            
        }
        
        
        if (selectedButtonAtCurrentIndex == self.answer4c) {
            
            //change dictionary value for Monaco
            
            NSNumber *valueForAnswer4c = @(1);
            
            NSNumber *currentValueForMonaco = [self.dictionaryValues objectForKey:@"Monaco"];
            
            NSInteger currentValueAsAnInteger = [currentValueForMonaco integerValue];
            currentValueAsAnInteger += [valueForAnswer4c integerValue];
            
            NSNumber *newValueForMonaco = @(currentValueAsAnInteger);
            
            [self.dictionaryValues setValue:newValueForMonaco forKey:@"Monaco"];
            
            
        }
        
        
        if (selectedButtonAtCurrentIndex == self.answer4d) {
            
            //change dictionary value for Aspen
            
            NSNumber *valueForAnswer4d = @(1);
            
            NSNumber *currentValueForAspen = [self.dictionaryValues objectForKey:@"Aspen"];
            
            NSInteger currentValueAsAnInteger = [currentValueForAspen integerValue];
            currentValueAsAnInteger += [valueForAnswer4d integerValue];
            
            NSNumber *newValueForAspen = @(currentValueAsAnInteger);
            
            [self.dictionaryValues setValue:newValueForAspen forKey:@"Aspen"];
            
            
        }
        
        
        if (selectedButtonAtCurrentIndex == self.answer4e) {
            
            // change dictionary value for Fox Glacier
            
            NSNumber *valueForAnswer4e = @(1);
            
            NSNumber *currentValueForFoxGlacier = [self.dictionaryValues objectForKey:@"Fox Glacier"];
            
            NSInteger currentFoxGlacierValueAsAnInteger = [currentValueForFoxGlacier integerValue];
            currentFoxGlacierValueAsAnInteger += [valueForAnswer4e integerValue];
            
            NSNumber *newValueForFoxGlacier = @(currentFoxGlacierValueAsAnInteger);
            
            [self.dictionaryValues setValue:newValueForFoxGlacier forKey:@"Fox Glacier"];
            
        }
        
        if (selectedButtonAtCurrentIndex == self.answer5a) {
            
            // change dictionary value for Hokkaido
            
            NSNumber *valueForAnswer5a = @(1);
            
            NSNumber *currentValueForHokkaido = [self.dictionaryValues objectForKey:@"Hokkaido"];
            
            NSInteger currentValueAsAnInteger = [currentValueForHokkaido integerValue];
            currentValueAsAnInteger += [valueForAnswer5a integerValue];
            
            NSNumber *newValueForHokkaido = @(currentValueAsAnInteger);
            
            [self.dictionaryValues setValue:newValueForHokkaido forKey:@"Hokkaido"];
        }
        
        
        if (selectedButtonAtCurrentIndex == self.answer5b) {
            
            
            // change dictionary value for Bali
            
            NSNumber *valueForAnswer5b = @(1);
            
            NSNumber *currentValueForBali = [self.dictionaryValues objectForKey:@"Bali"];
            
            NSInteger currentValueAsAnInteger = [currentValueForBali integerValue];
            currentValueAsAnInteger += [valueForAnswer5b integerValue];
            
            NSNumber *newValueForBali = @(currentValueAsAnInteger);
            
            [self.dictionaryValues setValue:newValueForBali forKey:@"Bali"];
            
        }
        
        
        if (selectedButtonAtCurrentIndex == self.answer5c) {
            
            //change dictionary value for Aspen
            
            NSNumber *valueForAnswer5c = @(1);
            
            NSNumber *currentValueForAspen = [self.dictionaryValues objectForKey:@"Aspen"];
            
            NSInteger currentValueAsAnInteger = [currentValueForAspen integerValue];
            currentValueAsAnInteger += [valueForAnswer5c integerValue];
            
            NSNumber *newValueForAspen = @(currentValueAsAnInteger);
            
            [self.dictionaryValues setValue:newValueForAspen forKey:@"Aspen"];
            
            
        }
        
        
        if (selectedButtonAtCurrentIndex == self.answer5d) {
            
            //change dictionary value for Monaco
            
            NSNumber *valueForAnswer5d = @(1);
            
            NSNumber *currentValueForMonaco = [self.dictionaryValues objectForKey:@"Monaco"];
            
            NSInteger currentValueAsAnInteger = [currentValueForMonaco integerValue];
            currentValueAsAnInteger += [valueForAnswer5d integerValue];
            
            NSNumber *newValueForMonaco = @(currentValueAsAnInteger);
            
            [self.dictionaryValues setValue:newValueForMonaco forKey:@"Monaco"];
            
            
        }
        
        
        if (selectedButtonAtCurrentIndex == self.answer5e) {
            
            // change dictionary value for Fox Glacier
            NSNumber *valueForAnswer5e = @(1);
            
            NSNumber *currentValueForFoxGlacier = [self.dictionaryValues objectForKey:@"Fox Glacier"];
            
            NSInteger currentFoxGlacierValueAsAnInteger = [currentValueForFoxGlacier integerValue];
            currentFoxGlacierValueAsAnInteger += [valueForAnswer5e integerValue];
            
            NSNumber *newValueForFoxGlacier = @(currentFoxGlacierValueAsAnInteger);
            
            [self.dictionaryValues setValue:newValueForFoxGlacier forKey:@"Fox Glacier"];
            
        }
    }
    
    
    [[DestinationsModel sharedModel].userDestinations setObject:@"" forKey:@""];
    
    //    self.introListTableViewController updateListTableViewWithData ....
    
}


@end
