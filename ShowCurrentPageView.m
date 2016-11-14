//
//  ShowCurrentPageView.m
//  USApp2.0
//
//  Created by ss on 2016/11/11.
//  Copyright © 2016年  门皓. All rights reserved.
//

#import "ShowCurrentPageView.h"


@interface ShowCurrentPageView ()
@property (nonatomic, strong) UILabel * pageLabel;
@end

@implementation ShowCurrentPageView


static ShowCurrentPageView * _instance = nil;

+(instancetype) shareInstance
{
    static dispatch_once_t onceToken ;
    dispatch_once(&onceToken, ^{
        _instance = [[self alloc] init] ;
    });
    return _instance ;
}

-(instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {

        frame.size.width = frame.size.height;
        self.layer.cornerRadius = frame.size.width * 0.5;
        self.backgroundColor = [UIColor whiteColor];
        self.layer.borderWidth = 0.5;
        self.layer.borderColor = [UIColor grayColor].CGColor;
        self.pageLabel.frame = self.bounds;
        [self addSubview:self.pageLabel];
    }
    return self;
}

-(UILabel *)pageLabel
{
    if (!_pageLabel) {
        _pageLabel = [[UILabel alloc]init];
        _pageLabel.textAlignment = NSTextAlignmentCenter;
        _pageLabel.font = [UIFont systemFontOfSize:12];
        _pageLabel.textColor = [UIColor blackColor];
        _pageLabel.text = @"第1页";
    }
    return _pageLabel;
}


-(void)currentPageWithRow:(long)row PageSize:(long)pageSize
{
    if ((row % pageSize) == 0) {
        self.pageLabel.text = [NSString stringWithFormat:@"第%ld页",row/pageSize + 1];
    }
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
