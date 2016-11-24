//
//  ToDos.h
//  EveryDoCoreData
//
//  Created by Jenny Nguyen on 2016-11-23.
//  Copyright © 2016 LightHouseLabs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

NS_ASSUME_NONNULL_BEGIN

@interface ToDos : NSManagedObject

// Insert code here to declare functionality of your managed object subclass

@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *detailDescription;
@property (nonatomic, assign) NSNumber *priorityNumber;
@property (nonatomic, strong) NSDate *toDoDate;

@end

NS_ASSUME_NONNULL_END

#import "ToDos+CoreDataProperties.h"
