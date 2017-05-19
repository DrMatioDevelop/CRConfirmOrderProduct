//
//  CRConfirmOrderViewController.h
//  CRConfirmOrderProduct
//
//  Created by d2c_cyf on 17/5/19.
//  Copyright © 2017年 d2c_cyf. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CRConfirmOrderViewController : UIViewController
- (instancetype)initWithGoodsId:(NSString *)goodsId sureComplete:(dispatch_block_t)sureComplete;
@end
