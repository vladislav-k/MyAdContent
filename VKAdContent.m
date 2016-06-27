//
//  VKAdContent.m
//  Example
//
//  Created by Vladislav Kovalyov on 6/27/16.
//  Copyright © 2016 Vladislav Kovalyov. All rights reserved.
//

#import "VKAdContent.h"
#import "VKAdBannerView.h"

@implementation VKAdContent

#define UIColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

+(NSArray *)allAdContent
{
    // Cities
    VKAdBannerContent *adContentCities = [[VKAdBannerContent alloc] init];
    
    adContentCities.icon = [UIImage imageNamed:@"ad_icon_cities"];
    adContentCities.iconBorderColor = [UIColor colorWithWhite:0.5 alpha:1];
    
    adContentCities.title = @"Города - Игра от А до Я";
    adContentCities.titleColor = UIColorFromRGB(0xda4936);
    
    adContentCities.descriptionText  = [NSString stringWithFormat:@"Классические города теперь в Вашем %@", [UIDevice currentDevice].model];
    adContentCities.descriptionColor = UIColorFromRGB(0x3b3b3b);
    
    adContentCities.price = @"$0.99";
    adContentCities.priceColor = UIColorFromRGB(0x3b3b3b);
    
    adContentCities.url = [NSURL URLWithString:@"itms-apps://itunes.apple.com/app/id718333194"];
    adContentCities.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"ad_bg_cities"]];
    
    // City names
    VKAdBannerContent *adContentCityNames = [adContentCities copy];

    adContentCityNames.title = @"City Names: Word Chain Game";
    adContentCityNames.descriptionText  = [NSString stringWithFormat:@"Classic game in City Names in your %@", [UIDevice currentDevice].model];
    
    adContentCityNames.url = [NSURL URLWithString:@"itms-apps://itunes.apple.com/app/id795845586"];
    
    // My Heartbeat
    VKAdBannerContent *adContentMyHeartbeat = [[VKAdBannerContent alloc] init];
    
    adContentMyHeartbeat.icon = [UIImage imageNamed:@"ad_icon_myhb"];
    
    adContentMyHeartbeat.title = @"My Heartbeat";
    adContentMyHeartbeat.titleColor = UIColorFromRGB(0xff2e47);
    
    adContentMyHeartbeat.descriptionText  = @"Универсальное фитнес-приложение для Bluetooth HRM";
    adContentMyHeartbeat.descriptionColor = UIColorFromRGB(0x6f6f6f);
    
    adContentMyHeartbeat.price = @"$1.99";
    adContentMyHeartbeat.priceColor = UIColorFromRGB(0x3b3b3b);
    
    adContentMyHeartbeat.url = [NSURL URLWithString:@"itms-apps://itunes.apple.com/app/id1048456519"];
    adContentMyHeartbeat.backgroundColor  = [UIColor whiteColor];
    
    // My Heartbeat EN
    VKAdBannerContent *adContentMyHeartbeatEN = [adContentMyHeartbeat copy];
    adContentMyHeartbeatEN.descriptionText  = @"Universal app for your Bluetooth HRM";
    
    // Oblique Strategies
    VKAdBannerContent *adContentObliqueStrategies = [[VKAdBannerContent alloc] init];
    
    adContentObliqueStrategies.title = @"Oblique Strategies";
    adContentObliqueStrategies.titleColor = [UIColor whiteColor];
    
    adContentObliqueStrategies.descriptionText  = @"Начните действовать прямо сейчас!";
    adContentObliqueStrategies.descriptionColor = [UIColor lightTextColor];
    
    adContentObliqueStrategies.price = @"$0.99";
    adContentObliqueStrategies.priceColor = [UIColor lightTextColor];
    
    adContentObliqueStrategies.url = [NSURL URLWithString:@"itms-apps://itunes.apple.com/app/id1039625068"];
    adContentObliqueStrategies.backgroundColor  = [UIColor blackColor];
    
    adContentObliqueStrategies.icon = [UIImage imageNamed:@"ad_icon_osrv"];
    adContentObliqueStrategies.iconBorderColor = [UIColor colorWithWhite:0.15 alpha:1];
    
    // Twicely
    VKAdBannerContent *adContentTwicely = [[VKAdBannerContent alloc] init];
    
    adContentTwicely.title = @"Twicely";
    adContentTwicely.titleColor = UIColorFromRGB(0x4BB2AE);
    
    adContentTwicely.descriptionText  = @"Фото с двух камер и фильтры!";
    adContentTwicely.descriptionColor = [UIColor lightTextColor];
    
    adContentTwicely.price = @"$0.99";
    adContentTwicely.priceColor = [UIColor lightTextColor];
    
    adContentTwicely.url = [NSURL URLWithString:@"itms-apps://itunes.apple.com/app/1128307789"];
    adContentTwicely.backgroundColor  = UIColorFromRGB(0x29292B);
    
    adContentTwicely.icon = [UIImage imageNamed:@"ad_icon_twicely"];
    adContentTwicely.iconBorderColor = [UIColor colorWithWhite:0.15 alpha:1];
    
    // Twicely EN
    VKAdBannerContent *adContentTwicelyEN = [adContentTwicely copy];
    adContentTwicelyEN.descriptionText = @"Photos from both cameras and filters";
    
    return @[adContentTwicely, adContentCities, adContentMyHeartbeatEN, adContentCityNames, adContentObliqueStrategies, adContentTwicelyEN, adContentMyHeartbeat];
}

@end
