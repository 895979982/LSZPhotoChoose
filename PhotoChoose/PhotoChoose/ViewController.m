//
//  ViewController.m
//  PhotoChoose
//
//  Created by 雷顺哲 on 16/11/6.
//  Copyright © 2016年 LSZ. All rights reserved.
//

#import "ViewController.h"
#import "LSZPickePhoto.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (nonatomic, strong) LSZPickePhoto *photoAlbum;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    // 实例化
    _photoAlbum = [[LSZPickePhoto alloc] init];
}
- (IBAction)clickButton:(UIButton *)sender {
    [_photoAlbum getPhotoAlbumOrTakeAPhotoWithController:self andWithBlock:^(UIImage *image) {
        self.imageView.image = image;
    }];
}



@end
