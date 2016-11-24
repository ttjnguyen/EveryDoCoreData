//
//  ToDos+CoreDataProperties.h
//  EveryDoCoreData
//
//  Created by Jenny Nguyen on 2016-11-23.
//  Copyright © 2016 LightHouseLabs. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "ToDos.h"

NS_ASSUME_NONNULL_BEGIN

@interface ToDos (CoreDataProperties)

@property (nullable, nonatomic, retain) NSDate *timeStamp;
@property (nullable, nonatomic, retain) NSString *detailDescription;
@property (nullable, nonatomic, retain) NSString *title;
@property (nullable, nonatomic, retain) NSNumber *priorityNumber;

@end

NS_ASSUME_NONNULL_END
