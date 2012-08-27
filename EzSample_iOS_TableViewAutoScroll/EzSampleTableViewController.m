//
//  EzSampleTableViewController.m
//  EzSample_iOS_TableViewAutoScroll
//
//  Created by 熊谷 友宏 on H.24/08/27.
//  Copyright (c) 平成24年 Tomohiro Kumagai. All rights reserved.
//

#import "EzSampleTableViewController.h"

@interface EzSampleTableViewController ()

@end

@implementation EzSampleTableViewController

- (void)viewDidLoad
{
	[super viewDidLoad];
	
	self.rowTextField.text = nil;
	self.sectionTextField.text = nil;
	self.messageTextView.text = nil;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
	[tableView deselectRowAtIndexPath:indexPath animated:YES];
}

- (void)textDidEndOnExit:(UITextField *)sender
{
	
}

- (void)scroll:(UIButton *)sender
{
	@try
	{
		NSInteger row = [self.rowTextField.text integerValue];
		NSInteger section = [self.sectionTextField.text integerValue];
		
		NSIndexPath* indexPath = [NSIndexPath indexPathForRow:row inSection:section];
		
		[self.tableView scrollToRowAtIndexPath:indexPath atScrollPosition:UITableViewScrollPositionTop animated:YES];
		
		self.messageTextView.text = nil;
	}
	@catch (NSException* exception)
	{
		self.messageTextView.text = exception.reason;
	}
}

@end
