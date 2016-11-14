//
//  ShowCurrentPageView.h
//  USApp2.0
//
//  Created by ss on 2016/11/11.
//  Copyright © 2016年  门皓. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ShowCurrentPageView : UIView
+(instancetype) shareInstance;
-(void)currentPageWithRow:(long)row PageSize:(long)pageSize;
@end
