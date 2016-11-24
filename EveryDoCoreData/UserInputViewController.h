//
//  UserInputViewController.h
//  EveryDoCoreData
//
//  Created by Jenny Nguyen on 2016-11-23.
//  Copyright © 2016 LightHouseLabs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ToDos.h"

@protocol SaveToDoProtocol <NSObject>

-(void)saveNewToDo:(ToDos *)toDo;

@end


@interface UserInputViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *titleField;
@property (weak, nonatomic) IBOutlet UITextField *priorityField;
@property (weak, nonatomic) IBOutlet UITextField *descriptionField;
@property (strong, nonatomic) ToDos *toDo;

@property (weak, nonatomic) id<SaveToDoProtocol> delegate;

@end


