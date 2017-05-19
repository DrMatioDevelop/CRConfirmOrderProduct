//
//  CRConfirmOrderViewController.m
//  CRConfirmOrderProduct
//
//  Created by d2c_cyf on 17/5/19.
//  Copyright © 2017年 d2c_cyf. All rights reserved.
//

#import "CRConfirmOrderViewController.h"

@interface CRConfirmOrderViewController ()
@property(nonatomic , copy)NSString *goodsId;
@property(nonatomic , copy) dispatch_block_t sureComplete;
@property(nonatomic , strong)UIButton *sureButton;
@end

@implementation CRConfirmOrderViewController

- (instancetype)initWithGoodsId:(NSString *)goodsId sureComplete:(dispatch_block_t)sureComplete {
    if (self = [super init]) {
        _goodsId = goodsId;
        _sureComplete = sureComplete;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor blueColor];
    
    [self.view addSubview:self.sureButton];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    self.sureButton.frame  = CGRectMake(0, 0, 100, 100);
    self.sureButton.center = self.view.center;
}

#pragma mark - Click
- (void)didClickSureButton:(UIButton *)button {
    if (self.navigationController) {
        [self.navigationController popViewControllerAnimated:YES];
    }
    else {
        [self dismissViewControllerAnimated:YES completion:^{
            if (self.sureComplete) {
                self.sureComplete();
            }
        }];
    }
}

#pragma mark - Getter
- (UIButton *)sureButton {
    if (!_sureButton) {
        _sureButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [_sureButton setTitle:@"立即下单" forState:UIControlStateNormal];
        [_sureButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        _sureButton.backgroundColor = [UIColor yellowColor];
        [_sureButton addTarget:self action:@selector(didClickSureButton:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _sureButton;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
