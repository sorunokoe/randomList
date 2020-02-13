//
//  ImageServiceTests.m
//  RainbowListTests
//
//  Created by Yeskendir Salgara on 2/13/20.
//  Copyright © 2020 Yeskendir Salgara. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "TyphoonAssembly.h"
#import "TyphoonConfigPostProcessor.h"
#import "TyphoonTestUtils.h"
#import "ServiceAssembly.h"
#import "ImageService.h"
#import "ImageRandomService.h"

@interface ImageServiceTests : XCTestCase

@end

@implementation ImageServiceTests{
    id<ImageService> imageService;
}

- (void)setUp {
    ServiceAssembly *assembly = [[ServiceAssembly new] activated];
    TyphoonConfigPostProcessor* config = [TyphoonConfigPostProcessor forResourceNamed:@"Configuration.plist"];
    [assembly attachDefinitionPostProcessor:config];
    imageService = [assembly imageService];
}

- (void)tearDown {
    imageService = nil;
}

- (void)testImageReturned{
    XCTestExpectation *imageExpectation = [self expectationWithDescription:@"image download"];
    [imageService getImage:^(UIImage *image) {
        XCTAssertNotNil(image);
        [imageExpectation fulfill];
    }];
    [self waitForExpectationsWithTimeout:10 handler:nil];
}

- (void)testAsyncBackgroundThreadImageDownloaded{
    XCTestExpectation *imageExpectation = [self expectationWithDescription:@"image download"];
    [imageService getImage:^(UIImage *image) {
        dispatch_assert_queue(dispatch_get_main_queue());
        [imageExpectation fulfill];
    }];
    [self waitForExpectationsWithTimeout:10 handler:nil];
    
}

@end
