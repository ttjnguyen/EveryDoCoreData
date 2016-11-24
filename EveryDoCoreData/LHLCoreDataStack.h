//
//  LHLCoreDataStack.h
//  EveryDoCoreData
//
//  Created by Jenny Nguyen on 2016-11-23.
//  Copyright © 2016 LightHouseLabs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@interface LHLCoreDataStack : NSObject

@property (nonatomic, strong) NSManagedObjectContext *context;

@end
