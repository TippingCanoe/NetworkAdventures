//
//  NetworkAdventures.h
//  NetworkAdventures
//
//  Created by Jeff on 2013-07-26.
//  Copyright (c) 2013 Tipping Canoe. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NetworkAdventures : NSObject
+ (void)listAvailableServersWithCompletionBlock:(void(^)(NSArray *objects,NSError *error))completion;
@end
