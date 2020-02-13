//
//  ImageRandomService.m
//  RainbowList
//
//  Created by Yeskendir Salgara on 2/13/20.
//  Copyright © 2020 Yeskendir Salgara. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ImageRandomService.h"
#import <Bolts/Bolts.h>

@implementation ImageRandomService

-(void)getImage:(void(^)(UIImage* image))completion{
    dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0ul);
    dispatch_async(queue, ^{
        [[self downloadImage] continueWithBlock:^id _Nullable(BFTask * _Nonnull t) {
            dispatch_async(dispatch_get_main_queue(), ^{
                if(t.completed){
                    completion(t.result);
                }
            });
            return nil;
        }];
    });
}

-(BFTask *)downloadImage{
    BFTaskCompletionSource* source = [BFTaskCompletionSource taskCompletionSource];
    NSURL* url = [NSURL URLWithString:@"https://picsum.photos/200/200"];
    NSData* data = [NSData dataWithContentsOfURL:url];
    UIImage* image = [UIImage imageWithData:data];
    if (image != NULL) {
        [source setResult:image];
    }else{
        NSError* error = [NSError errorWithDomain:url.absoluteString code:-1 userInfo:nil];
        [source setError:error];
    }
    return source.task;
}

@end
