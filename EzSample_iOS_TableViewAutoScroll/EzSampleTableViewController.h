//
//  EzSampleTableViewController.h
//  EzSample_iOS_TableViewAutoScroll
//
//  Created by 熊谷 友宏 on H.24/08/27.
//  Copyright (c) 平成24年 Tomohiro Kumagai. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EzSampleTableViewController : UITableViewController

@property (nonatomic,readonly,weak) IBOutlet UITextView* messageTextView;

@property (nonatomic,readonly,weak) IBOutlet UITextField* sectionTextField;
@property (nonatomic,readonly,weak) IBOutlet UITextField* rowTextField;

- (IBAction)textDidEndOnExit:(UITextField*)sender;
- (IBAction)scroll:(UIButton*)sender;

@end
