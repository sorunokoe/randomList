//
//  MainRouter.m
//  RainbowList
//
//  Created by Yeskendir Salgara on 2/13/20.
//  Copyright © 2020 Yeskendir Salgara. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MainRouter.h"
#import "MainViewController.h"
#import "MainPresenter.h"
#import "MainInteractor.h"
#import "ImageService.h"
#import "ImageRandomService.h"

@implementation MainRouter

+(UIViewController*)createModule{
    
    UICollectionViewFlowLayout* layout = [[UICollectionViewFlowLayout alloc]init];
    layout.itemSize = CGSizeMake(100, 100);
    layout.sectionInset = UIEdgeInsetsMake(5, 5, 5, 5);
    
    MainViewController* vc = [[MainViewController alloc]initWithCollectionViewLayout:layout];
    vc.additionalSafeAreaInsets = UIEdgeInsetsMake(10, 10, 10, 10);
    
    MainPresenter* presenter = [[MainPresenter alloc]init];
    MainInteractor* interactor = [[MainInteractor alloc]init];
    id<ImageService> service = [[ImageRandomService alloc]init];
    
    interactor.service = service;
    interactor.output = presenter;
    presenter.interactor = interactor;
    presenter.view = vc;
    vc.presenter = presenter;
    
    return [[UINavigationController alloc]initWithRootViewController:vc];
}

@end
