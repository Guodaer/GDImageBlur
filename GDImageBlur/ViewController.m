//
//  ViewController.m
//  GDImageBlur
//
//  Created by X-Designer on 16/9/20.
//  Copyright © 2016年 Guoda. All rights reserved.
//

#import "ViewController.h"
#import "UIImage+BlurImage.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    UIImage *image1 = [UIImage coreBlurImage:[UIImage imageNamed:@"hello.jpg"] withBlurBumber:1];
//    UIImageView *imageView1 = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 300)];
//    imageView1.image = image1;
//    [self.view addSubview:imageView1];
    
    
    
    
//    UIImage *image2 = [UIImage boxblurImage:[UIImage imageNamed:@"hello.jpg"] withBlurNumber:0.5];
    UIImageView *imageView2 = [[UIImageView alloc] initWithFrame:CGRectMake(0, 320, self.view.frame.size.width, 300)];
    imageView2.image = [self resizeImage:[UIImage boxblurImage:[UIImage imageNamed:@"hello.jpg"] withBlurNumber:0.5]];
    [self.view addSubview:imageView2];
    
    
}
- (UIImage *)resizeImage:(UIImage *)image {
    
    CGSize size = CGSizeMake([UIScreen mainScreen].bounds.size.width, 300);
    UIGraphicsBeginImageContext(size);
    [image drawInRect:CGRectMake(0, 0, size.width, size.height)];
    
    UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return newImage;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
