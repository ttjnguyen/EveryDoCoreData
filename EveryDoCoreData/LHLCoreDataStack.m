//
//  LHLCoreDataStack.m
//  EveryDoCoreData
//
//  Created by Jenny Nguyen on 2016-11-23.
//  Copyright © 2016 LightHouseLabs. All rights reserved.
//

#import "LHLCoreDataStack.h"

@implementation LHLCoreDataStack

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        NSURL *momdURL = [[NSBundle mainBundle] URLForResource:@"EveryDoCoreData" withExtension:@"momd"];
        
        NSManagedObjectModel *mom = [[NSManagedObjectModel alloc] initWithContentsOfURL:momdURL];
        
        NSPersistentStoreCoordinator *psc = [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:mom];
        
        
        NSArray *docDirs = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
        
        NSString *documentsPath = [docDirs firstObject];
        
        NSString *dbPath = [documentsPath stringByAppendingPathComponent:@"Todos.db"];
        
        NSURL *dbUrl = [NSURL fileURLWithPath:dbPath];
        
        NSError *pscError = nil;
        
        if (![psc addPersistentStoreWithType:NSSQLiteStoreType configuration:nil URL:dbUrl options:nil error:&pscError]) {
            NSLog(@"error creating psc %@", pscError);
        }
        
        _context = [[NSManagedObjectContext alloc] initWithConcurrencyType:NSMainQueueConcurrencyType];
        [_context setPersistentStoreCoordinator:psc];
        
        
    }
    return self;
}

@end
