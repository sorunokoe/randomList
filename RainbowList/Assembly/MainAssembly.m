//
//  MainAssembly.m
//  RainbowList
//
//  Created by Yeskendir Salgara on 2/13/20.
//  Copyright © 2020 Yeskendir Salgara. All rights reserved.
//

#import "MainAssembly.h"
#import "MainPresenter.h"
#import "MainViewController.h"
#import "MainPresenter.h"
#import "MainInteractor.h"

@implementation MainAssembly

#pragma mark - Bootstrapping
- (UIViewController *)rootViewController{
    return [TyphoonDefinition withClass:[MainViewController class] configuration:^(TyphoonDefinition *definition)
    {
        [definition useInitializer:@selector(initWithAssembly:) parameters:^(TyphoonMethod *initializer)
        {
            [initializer injectParameterWith:self];
        }];
        [definition injectProperty:@selector(presenter) with:[self mainPresenter]];
    }];
}

- (MainPresenter *)mainPresenter{
    return [TyphoonDefinition withClass:[MainPresenter class] configuration:^(TyphoonDefinition *definition) {
        [definition injectProperty:@selector(view) with:[self rootViewController]];
        [definition injectProperty:@selector(interactor) with:[self mainInteractor]];
    }];
}

- (MainInteractor *)mainInteractor{
    return [TyphoonDefinition withClass:[MainInteractor class] configuration:^(TyphoonDefinition *definition) {
        [definition injectProperty:@selector(output) with:[self mainPresenter]];
        [definition injectProperty:@selector(service) with:[self.serviceAssembly imageService]];
    }];
}


@end
