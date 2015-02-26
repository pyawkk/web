//
//  ViewController.m
//  newsWeb
//
//  Created by panyong on 15/2/17.
//  Copyright (c) 2015年 monileNowGroup. All rights reserved.
//

#import "ViewController.h"
#import "MBNHttpManager.h"
#import "MJExtension.h"
#import "newsModel.h"
#import "MBNTableViewCell.h"
#import "MBNDetailViewController.h"

@interface ViewController ()

@property (nonatomic,strong) NSArray *listArr;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    // 这里开始加载数据吧
    [[MBNHttpManager manager] GET:@"http://c.m.163.com/nc/article/headline/T1348647853363/0-140.html" parameters:nil success:^(AFHTTPRequestOperation *operation, NSDictionary *responseObject) {
        NSArray *arr = responseObject[@"T1348647853363"];
        _listArr = [newsModel objectArrayWithKeyValuesArray:arr];
        [self.tableView reloadData];
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"请求失败%@",error);
    }];
    
}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    NSLog(@"%ld",_listArr.count);
    return _listArr.count;
    
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    MBNTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"news"];
    cell.newsArr = _listArr[indexPath.row];
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    //将数据传送过去
    newsModel *model = _listArr[indexPath.row];
    NSLog(@"%@",model.title);

    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"MBNDetailViewController" bundle:nil];

    
    MBNDetailViewController *vc = sb.instantiateInitialViewController;
    
    vc.model = model;
    
    [self presentViewController:vc animated:nil completion:nil];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
