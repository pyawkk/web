//
//  MBNDetailViewController.m
//  newsWeb
//
//  Created by panyong on 15/2/25.
//  Copyright (c) 2015年 monileNowGroup. All rights reserved.
//

#import "MBNDetailViewController.h"
#import "DetailModel.h"
#import "MBNHttpManager.h"
#import "MJExtension.h"

@interface MBNDetailViewController ()<UIWebViewDelegate>

@property (nonatomic, strong) DetailModel *detail;

@property (weak, nonatomic) IBOutlet UIWebView *webV;

@end

@implementation MBNDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    //发送请求
    self.webV.delegate = self;
    
    NSString *url = [NSString stringWithFormat:@"http://c.m.163.com/nc/article/%@/full.html", self.model.docid];
    
    [[MBNHttpManager manager] GET:url parameters:nil success:^(AFHTTPRequestOperation *operation, NSDictionary *responseObject) {
        self.detail = [DetailModel objectWithKeyValues:responseObject[self.model.docid]];
        [self showWebView];
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"请求错误 测试输出测试输出测试输出测试输出测试输出测试输出");
    }];
    
}

/**
 *  拼接数据
 */
-(void)showWebView{
    
    NSMutableString *html = [NSMutableString string];
    // 头部内容
    [html appendString:@"<html>"];
    [html appendString:@"<head>"];
    [html appendFormat:@"<link rel=\"stylesheet\" href=\"%@\">", [[NSBundle mainBundle] URLForResource:@"HMNewsDetail.css" withExtension:nil]];
    [html appendString:@"</head>"];
    
    // 具体内容
    [html appendString:@"<body>"];
    
    // 将图片插入body对应的标记中, 比如<!--IMG#0-->
    [html appendString:[self setupBody]];
    
    [html appendString:@"</body>"];
    
    // 尾部内容
    [html appendString:@"</html>"];
    
    // 显示网页
    [self.webV loadHTMLString:html baseURL:nil];
    
}



-(NSString *)setupBody{
    
    return @"asdfadsf";
}




-(BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType{
    
    
    return true;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
 
}



@end
