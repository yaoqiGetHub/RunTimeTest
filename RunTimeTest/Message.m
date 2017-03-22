//
//  Message.m
//  RunTimeTest
//
//  Created by yaoqi on 17/2/17.
//  Copyright © 2017年 yaoqi. All rights reserved.
//

#import "Message.h"
#import <objc/runtime.h>
@implementation Message

//- (void)sendMessage:(NSString *)word {
//    NSLog(@"word == %@",word);
//}
#pragma mark - Method Resolution

/// override resolveInstanceMethod or resolveClassMethod for changing sendMessage method implementation

/////// 这个方法太帅了
+ (BOOL)resolveInstanceMethod:(SEL)sel
{
    if (sel == @selector(sendMessage:)) {
        class_addMethod([self class], sel, imp_implementationWithBlock(^(id self, NSString *word) {
            NSLog(@"method resolution way : send message = %@", word);
        }), "v@*");
    }
    
    return YES;
}

@end
