//
//  ViewController.m
//  ObjectiveC Learning
//
//  Created by Siva Krishna on 03/01/20.
//  Copyright © 2020 Square. All rights reserved.
//

#import "ViewController.h"
#import "popular/model/Popular.h"
#import "popular/model/PopularItems.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self makeHttpRequest];
    // Do any additional setup after loading the view.
}


-(void) makeHttpRequest {
    NSMutableArray<Popular *> *items = [NSMutableArray new];
    NSString *urlString = @"https://jsonblob.com/api/jsonBlob/68ba0561-2e34-11ea-ac3c-690027252e7a";
    
    NSURL *url = [NSURL URLWithString:urlString];
    NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:url];
    [urlRequest setHTTPMethod:@"GET"];
    NSURLSession *session = [NSURLSession sharedSession];
    NSURLSessionDataTask *task = [session dataTaskWithRequest:urlRequest completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        
        
        NSDictionary *json = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:&error];
        NSMutableArray<NSDictionary*> *array = [json valueForKey:@"popular"];
        for( NSDictionary *dis in array) {
//            NSDictionary *diss = [NSDictionary w
            NSLog(@"%@",dis);
        }

        NSLog(@"%@", array);
        
//        PopularItems *items = json[@"popular"];
       
        
        
    }];
    [task resume];
    
    
    
}

@end
