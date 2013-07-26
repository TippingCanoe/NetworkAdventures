//
//  ServerIterator.h
//  NetworkAdventures
//
//  Created by Jeff on 2013-07-26.
//  Copyright (c) 2013 Tipping Canoe. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Server.h"
#import "ServerObject.h"
#import "Path.h"

@interface ServerIterator : NSObject
@property (nonatomic,retain) Server *server;
@property (nonatomic,retain) Path *currentPath;

- (void)goToRootWithCompletionBlock:(void(^)(NSArray *objects,NSError *error))completion;
- (void)listServerObjectsWithCompletionBlock:(void(^)(NSArray *objects,NSError *error))completion;
- (void)navigateToObject:(ServerObject *)object withCompletionBlock:(void(^)(NSArray *objects,NSError *error))completion;

@end
