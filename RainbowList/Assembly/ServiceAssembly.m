//
//  ServiceAssembly.m
//  RainbowList
//
//  Created by Yeskendir Salgara on 2/13/20.
//  Copyright © 2020 Yeskendir Salgara. All rights reserved.
//

#import "ServiceAssembly.h"
#import "ImageRandomService.h"

@implementation ServiceAssembly

- (id<ImageService>)imageService{
    return [TyphoonDefinition withClass:[ImageRandomService self] configuration:^(TyphoonDefinition *definition) {
        [definition injectProperty:@selector(serviceURL) with:TyphoonConfig(@"service.url")];
    }];
}

@end
