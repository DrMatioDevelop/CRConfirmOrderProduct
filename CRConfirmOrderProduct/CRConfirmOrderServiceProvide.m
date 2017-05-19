//
//  CRConfirmOrderServiceProvide.m
//  CRConfirmOrderProduct
//
//  Created by d2c_cyf on 17/5/19.
//  Copyright © 2017年 d2c_cyf. All rights reserved.
//

#import "CRConfirmOrderServiceProvide.h"
#import <CRProtocolManager/CRProtocolManager.h>
#import <CRConfirmProductProtocol/CRConfirmProductProtocol.h>

#import "CRConfirmOrderViewController.h"
@interface CRConfirmOrderServiceProvide ()<CRConfirmOrderServiceProtocol>

@end

@implementation CRConfirmOrderServiceProvide
+(void)load {
    [CRProtocolManager registServiceProvide:[[self alloc] init] forProtocol:@protocol(CRConfirmOrderServiceProtocol)];
}

- (UIViewController *)confirmOrderVIewControllerWithGoodsId:(NSString *)goodsId sureComplete:(dispatch_block_t)sureComplete {
    CRConfirmOrderViewController *confirmOrderVC = [[CRConfirmOrderViewController alloc] initWithGoodsId:goodsId sureComplete:sureComplete];
    return confirmOrderVC;
}
@end
