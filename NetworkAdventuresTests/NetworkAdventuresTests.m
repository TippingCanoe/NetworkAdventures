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

- (void)setUp{
    [super setUp];
    operationsInProgress=0;
}

- (void)tearDown{
    while (operationsInProgress > 0) {
        [[NSRunLoop currentRunLoop] runMode:NSDefaultRunLoopMode beforeDate:[NSDate distantFuture]];
        usleep(10000);
    }
    [super tearDown];
}

- (void)testGetServers{
    operationsInProgress++;
    [NetworkAdventures listAvailableServersWithCompletionBlock:^(NSArray *objects, NSError *error) {
        NAServer *server = objects[0];
        operationsInProgress++;
        [server connectWithUsername:@"peedus" andPassword:@"peedus" andCompletionBlock:^(BOOL connected, NSError *error) {
            NAServerIterator *iterator = [[NAServerIterator alloc] init];
            iterator.server = server;
            operationsInProgress++;
            [iterator goToRootWithCompletionBlock:^(NSArray *objects, NSError *error) {
                operationsInProgress--;
            }];
            operationsInProgress--;
        }];
        operationsInProgress--;
    }];
}

@end
