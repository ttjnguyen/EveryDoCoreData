//
//  ToDos+Add.m
//  EveryDoCoreData
//
//  Created by Jenny Nguyen on 2016-11-23.
//  Copyright © 2016 LightHouseLabs. All rights reserved.
//

#import "ToDos+Add.h"
#import "AppDelegate.h"

@implementation ToDos (Add)

+ (ToDos *)addToDosInfoFromDictionary:(NSDictionary *)ToDosInfo {
    
    AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    NSManagedObjectContext *context = [appDelegate managedObjectContext];
    
    ToDos *todosEntity = nil;
    
    
    //Create a new object
    
    todosEntity = [NSEntityDescription insertNewObjectForEntityForName:@"Todos" inManagedObjectContext:context];
    todosEntity.title = [ToDosInfo valueForKey:@"title"];
    todosEntity.priorityNumber = [ToDosInfo valueForKey:@"priorityNumber"];
    todosEntity.detailDescription = [ToDosInfo valueForKey:@"detailDescription"];
    
    return todosEntity;
}

@end



