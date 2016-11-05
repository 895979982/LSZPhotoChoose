//
//  LSZPickePhoto.h
//  照片选择
//
//  Created by 雷顺哲 on 16/9/23.
//  Copyright © 2016年 LSZ. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef void(^PhotoBlock)(UIImage *image);
@interface LSZPickePhoto : NSObject
- (void)getPhotoAlbumOrTakeAPhotoWithController:(UIViewController *)Controller
                                   andWithBlock:(PhotoBlock)photoBlock;
@end
