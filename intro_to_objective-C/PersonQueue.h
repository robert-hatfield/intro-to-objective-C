//
//  PersonQueue.h
//  intro_to_objective-C
//
//  Created by Robert Hatfield on 4/17/17.
//  Copyright © 2017 Robert Hatfield. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PersonQueue <NSObject>

@optional
-(Int) count;

@required
-(void) enqueue: (Person *)person;
-(Person) dequeue;

@end
