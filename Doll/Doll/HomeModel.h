//
//  HomeModel.h
//  Doll
//
//  Created by Wikky on 15/12/24.
//  Copyright © 2015年 Wikky. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface HomeModel : NSObject
@property(nonatomic,strong)NSString *productName;
@property(nonatomic,strong)NSString *productDetail;
@property(nonatomic,strong)UIImage  *img;
@property(nonatomic,assign)int       player;
@property(nonatomic,assign)int       watcher;

@end
