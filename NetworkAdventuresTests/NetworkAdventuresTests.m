//
//  NetworkAdventuresTests.m
//  NetworkAdventuresTests
//
//  Created by Jeff on 2013-07-26.
//  Copyright (c) 2013 Tipping Canoe. All rights reserved.
//

#import "NetworkAdventuresTests.h"
#import "NetworkAdventures.h"
#import "NAServer.h"
#import "NAServerIterator.h"

@implementation NetworkAdventuresTests

- (void)setUp
{
    [super setUp];
    
    // Set-up code here.
}

- (void)tearDown
{
    // Tear-down code here.
    
    [super tearDown];
}

- (void)testGetServers{
    [NetworkAdventures listAvailableServersWithCompletionBlock:^(NSArray *objects, NSError *error) {
        NAServer *server = objects[0];
        [server connectWithUsername:@"peedus" andPassword:@"peedus" andCompletionBlock:^(BOOL connected, NSError *error) {
            NAServerIterator *iterator = [[NAServerIterator alloc] init];
            iterator.server = server;
            
            [iterator goToRootWithCompletionBlock:^(NSArray *objects, NSError *error) {
                
            }];
        }];
    }];
}

@end
