//
//  EmployeeDatabase.m
//  intro_to_objective-C
//
//  Created by Robert Hatfield on 4/18/17.
//  Copyright © 2017 Robert Hatfield. All rights reserved.
//

#import "EmployeeDatabase.h"

@implementation EmployeeDatabase

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
