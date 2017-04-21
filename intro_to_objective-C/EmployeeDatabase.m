//
//  EmployeeDatabase.m
//  intro_to_objective-C
//
//  Created by Robert Hatfield on 4/18/17.
//  Copyright © 2017 Robert Hatfield. All rights reserved.
//

#import "EmployeeDatabase.h"

@interface EmployeeDatabase ()

@property(strong, nonatomic) NSMutableArray *employees;

@end

@implementation EmployeeDatabase

+(instancetype)shared {
    // Create singleton for Employee database.
    static EmployeeDatabase *shared = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shared = [[[self class] alloc] init];
    });
    
    return shared;
}

-(instancetype)init {
    self = [super init];
    if (self) {
        _employees = [NSKeyedUnarchiver unarchiveObjectWithData:[NSData dataWithContentsOfURL:[self archiveURL]]];
        
        if (! _employees) {
            _employees = [[NSMutableArray alloc] init];
        }
    }
    return self;
}

-(void)save {
    BOOL success = [NSKeyedArchiver archiveRootObject:self.employees toFile:[self archiveURL].path];
    
    if (success) {
        NSLog(@"saved Employees");
    } else {
        NSLog(@"save failed!");
    }
}

-(void)saveAndNotifyObservers {
    [self willChangeValueForKey:@"employees"];
    [self save];
    [self didChangeValueForKey:@"employees"];

}

//MARK: Accessor (get) methods
-(NSInteger)count {
    return self.employees.count;
}

-(NSArray *)allEmployees {
    // Perform a deep copy to maintain encapsulation of the database itself.
    NSArray *result = [self.employees copy];
    return result;
}

-(Employee *)employeeAtIndex:(int)index {
    return [self.employees objectAtIndex:index];
}

//MARK: Mutating methods
-(void)add:(Employee *)employee {
    [self.employees addObject:employee];
    [self saveAndNotifyObservers];
}

-(void)remove:(Employee *)employee {
    [self.employees removeObject:employee];
    [self saveAndNotifyObservers];
}

-(void)removeEmployeeAtIndex:(int)index {
    [self remove:[self employeeAtIndex:index]];
    [self saveAndNotifyObservers];
}

-(void)removeEmployeeFromTableAtIndex:(int)index {
    [self remove:[self employeeAtIndex:index]];
    [self save];
}


-(void)removeAllEmployees {
    [self.employees removeAllObjects];    
    [self saveAndNotifyObservers];
}

//MARK: Helper methods
-(NSURL *)documentsDirectory {
    // Returns the user's documents directory of our sandbox
    NSURL *documentsDirectoryURL = [[[NSFileManager defaultManager] URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask] firstObject];
    return documentsDirectoryURL;
}

-(NSURL *)archiveURL {
    // Returns a new URL for this application's archives
    return [[self documentsDirectory] URLByAppendingPathComponent:@"archive"];
}

@end
