//
//  MainProtocols.h
//  RainbowList
//
//  Created by Yeskendir Salgara on 2/12/20.
//  Copyright © 2020 Yeskendir Salgara. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol MainWireframeProtocol <NSObject>

@end

@protocol MainViewProtocol <NSObject>

@end

@protocol MainInteractorInputProtocol <NSObject>

@required
-(void)getImage: (void (^)(UIImage* image)) completion;

@end

@protocol MainInteractorOutputProtocol <NSObject>

@end
