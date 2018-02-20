//
//  MyCountryTests.m
//  MyCountryTests
//
//  Created by Mac i7 on 17/02/18.
//  Copyright © 2018 icommtechnologies. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "MyCountryListViewController.h"

@interface MyCountryTests : XCTestCase

@property MyCountryListViewController *vcToTest;

@end

@implementation MyCountryTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    _vcToTest = [[MyCountryListViewController alloc]init];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testReverseString {
    
    NSString *strOriginal = @"canda";
    
    [_vcToTest reverseString];
     NSString *strReverse = _vcToTest.stringReverse;
    XCTAssertEqualObjects(strOriginal, strReverse);
}

- (void)testStringUpdate {
    
    NSString *strExpected = @"mycountry";
    [_vcToTest updateString];
    NSString *strResult = _vcToTest.stringUpdate;
    XCTAssertEqualObjects(strExpected, strResult);
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
