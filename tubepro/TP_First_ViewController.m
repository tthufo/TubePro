//
//  TP_First_ViewController.m
//  tubepro
//
//  Created by thanhhaitran on 1/18/16.
//  Copyright © 2016 thanhhaitran. All rights reserved.
//

#import "TP_First_ViewController.h"

#define bannerAPI @"ca-app-pub-9549102114287819/3623332283"

@interface TP_First_ViewController ()

@end

@implementation TP_First_ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self didRequestData:@""];
}

- (void)didRequestData:(NSString *)channelId
{
    NSString * type = @[@"videos", @"channel", @"playlists"];
    
    NSString * search = [NSString stringWithFormat:@"https://www.googleapis.com/youtube/v3/videos?part=snippet&chart=10&type=video&maxResults=25&key=AIzaSyB9IuIAwAJQhhSOQY3rn4bc9A2EjpdG_7c",@""];
    
    NSString * url = [NSString stringWithFormat:@"https://www.googleapis.com/youtube/v3/playlists?part=snippet&channelId=%@&type=video&maxResults=25&key=AIzaSyB9IuIAwAJQhhSOQY3rn4bc9A2EjpdG_7c",channelId];
    
    [[LTRequest sharedInstance] didRequestInfo:@{@"absoluteLink":search,@"method":@"GET",@"host":self,@"overrideError":@(1)} withCache:^(NSString *cacheString) {
        
        
    } andCompletion:^(NSString *responseString, NSError *error, BOOL isValidated) {
        
        NSLog(@"%@",responseString);
        
    }];
    
//    [[Ads sharedInstance] didShowBannerAdsWithInfor:@{@"host":self,@"X":@(320),@"Y":@(300),@"adsId":bannerAPI,@"device":@"a104de0d0aca5165d505f82e691ba8cd"} andCompletion:^(BannerEvent event, NSError *error, id banner) {
//
//        switch (event)
//        {
//            case AdsDone:
//
//                break;
//            case AdsFailed:
//
//                NSLog(@"%@",error);
//                
//                break;
//            default:
//                break;
//        }
//    }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end
