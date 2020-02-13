//
//  ImageService.h
//  RainbowList
//
//  Created by Yeskendir Salgara on 2/13/20.
//  Copyright © 2020 Yeskendir Salgara. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol ImageService <NSObject>

@required
-(void)getImage:(void(^)(UIImage* image))completion;

@end

