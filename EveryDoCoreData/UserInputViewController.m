
//
//  UserInputViewController.m
//  EveryDoCoreData
//
//  Created by Jenny Nguyen on 2016-11-23.
//  Copyright © 2016 LightHouseLabs. All rights reserved.
//

#import "UserInputViewController.h"

@implementation UserInputViewController

- (IBAction)saveButtonPressed:(UIButton *)sender
{
    self.toDo.title = self.titleField.text;
    self.toDo.detailDescription = self.descriptionField.text;
    self.toDo.priorityNumber = [NSNumber numberWithInteger:[self.priorityField.text integerValue]];
    
    [self.delegate saveNewToDo:self.toDo];
    [self.navigationController popViewControllerAnimated:YES];
}


@end
