//
//  ServerIterator.h
//  NetworkAdventures
//
//  Created by Jeff on 2013-07-26.
//  Copyright (c) 2013 Tipping Canoe. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NAServer.h"
#import "NAServerObject.h"
#import "NAPath.h"

@interface NAServerIterator : NSObject
@property (nonatomic,retain) NAServer *server;
@property (nonatomic,retain) NAPath *currentPath;

- (void)goToRootWithCompletionBlock:(void(^)(NSArray *objects,NSError *error))completion;
- (void)listServerObjectsWithCompletionBlock:(void(^)(NSArray *objects,NSError *error))completion;
- (void)navigateToObject:(NAPath *)object withCompletionBlock:(void(^)(NSArray *objects,NSError *error))completion;

@end
