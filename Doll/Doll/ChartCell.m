//
//  ChartCell.m
//  Doll
//
//  Created by Wikky on 15/12/22.
//  Copyright © 2015年 Wikky. All rights reserved.
//

#import "ChartCell.h"

@implementation ChartCell
-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self)
    {
        [self createMyCell];
    }
    return self;
}
-(void) createMyCell
{
    self.chartLabel = [[UILabel alloc]initWithFrame:CGRectMake(self.contentView.frame.size.width - 80, 0, 60, 50)];
    self.nameLabel = [[UILabel alloc]initWithFrame:CGRectMake(80, 0, 150, 50)];
    self.imgView = [[UIImageView alloc]initWithFrame:CGRectMake(30, 5, 40, 40)];
    self.title = [[UILabel alloc]initWithFrame:CGRectMake(5, 0, 20, 50)];
    
    self.chartLabel.textColor = [UIColor lightGrayColor];
    self.chartLabel.font = [UIFont systemFontOfSize:14];
    
    self.imgView.layer.cornerRadius = self.imgView.frame.size.width/2;
    self.imgView.layer.masksToBounds = YES;
    self.imgView.backgroundColor = [UIColor lightGrayColor];
    
    [self.contentView addSubview:self.nameLabel];
    [self.contentView addSubview:self.imgView];
    [self.contentView addSubview:self.chartLabel];
    [self.contentView addSubview:self.title];
    
    
}


- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
