//
//  UIImage+BlurImage.h
//  GDImageBlur
//
//  Created by X-Designer on 16/9/21.
//  Copyright © 2016年 Guoda. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Accelerate/Accelerate.h>

@interface UIImage (BlurImage)


+ (UIImage *)coreBlurImage:(UIImage *)image withBlurBumber:(CGFloat)blur;

+ (UIImage *)boxblurImage:(UIImage *)image withBlurNumber:(CGFloat)blur;


@end
