//
//  ServiceAssembly.h
//  RainbowList
//
//  Created by Yeskendir Salgara on 2/13/20.
//  Copyright © 2020 Yeskendir Salgara. All rights reserved.
//

#import "TyphoonAssembly.h"
#import "ImageService.h"

@interface ServiceAssembly : TyphoonAssembly

-(id<ImageService>) imageService;

@end
