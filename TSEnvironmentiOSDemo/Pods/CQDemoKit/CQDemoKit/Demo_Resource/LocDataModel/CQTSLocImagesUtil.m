//
//  CQTSLocImagesUtil.m
//  CJComplexUIKitDemo
//
//  Created by lcQian on 2020/4/7.
//  Copyright © 2020 dvlproad. All rights reserved.
//

#import "CQTSLocImagesUtil.h"

@implementation CQTSLocImagesUtil

#pragma mark - placeholder Image
+ (UIImage *)cjts_placeholderImage01 {
    return [UIImage imageNamed:@"CQDemoKit.bundle/cqts_placeholder01.jpg"];
}

/// 获取测试用的数据(image为本地图片)
///
/// @param count 图片个数
///
/// @return 返回图片数据
+ (NSMutableArray<CQTSLocImageDataModel *> *)__getTestLocalImageDataModelsWithCount:(NSInteger)count {
    NSArray *selStrings = @[NSStringFromSelector(@selector(cjts_localImage1)),
                            NSStringFromSelector(@selector(cjts_localImage2)),
                            NSStringFromSelector(@selector(cjts_localImage3)),
                            NSStringFromSelector(@selector(cjts_localImage4)),
                            NSStringFromSelector(@selector(cjts_localImage5)),
                            NSStringFromSelector(@selector(cjts_localImage6)),
                            NSStringFromSelector(@selector(cjts_localImage7)),
                            NSStringFromSelector(@selector(cjts_localImage8)),
    ];
    
    NSMutableArray<CQTSLocImageDataModel *> *dataModels = [[NSMutableArray alloc] init];
    
    for (NSInteger i = 0; i < count; i++) {
        CQTSLocImageDataModel *dataModel = [[CQTSLocImageDataModel alloc] init];
        dataModel.name = [NSString stringWithFormat:@"%zd", i];
        
        NSInteger selIndex = random()%selStrings.count;
        NSString *selString = [selStrings objectAtIndex:selIndex];
        SEL sel = NSSelectorFromString(selString);
        dataModel.image = [CQTSLocImagesUtil performSelector:sel];
        [dataModels addObject:dataModel];
    }
    
    return dataModels;
}
    
    

/// 获取测试用的数据(image为本地图片)
+ (NSMutableArray<CQTSLocImageDataModel *> *)__getTestLocalImageDataModels {
    NSMutableArray<CQTSLocImageDataModel *> *dataModels = [[NSMutableArray alloc] init];
    {
        CQTSLocImageDataModel *dataModel = [[CQTSLocImageDataModel alloc] init];
        dataModel.name = @"1X透社";
        dataModel.image = [CQTSLocImagesUtil cjts_localImage1];
        [dataModels addObject:dataModel];
    }
    {
        CQTSLocImageDataModel *dataModel = [[CQTSLocImageDataModel alloc] init];
        dataModel.name = @"2新鲜事";
        dataModel.image = [CQTSLocImagesUtil cjts_localImage2];
        [dataModels addObject:dataModel];
    }
    {
        CQTSLocImageDataModel *dataModel = [[CQTSLocImageDataModel alloc] init];
        dataModel.name = @"3XX信";
        dataModel.image = [CQTSLocImagesUtil cjts_localImage3];
        [dataModels addObject:dataModel];
    }
    {
        CQTSLocImageDataModel *dataModel = [[CQTSLocImageDataModel alloc] init];
        dataModel.name = @"4X角信";
        dataModel.image = [CQTSLocImagesUtil cjts_localImage4];
        [dataModels addObject:dataModel];
    }
    {
        CQTSLocImageDataModel *dataModel = [[CQTSLocImageDataModel alloc] init];
        dataModel.name = @"5蓝精灵";
        dataModel.image = [CQTSLocImagesUtil cjts_localImage5];
        [dataModels addObject:dataModel];
    }
    {
        CQTSLocImageDataModel *dataModel = [[CQTSLocImageDataModel alloc] init];
        dataModel.name = @"6年轻范";
        dataModel.image = [CQTSLocImagesUtil cjts_localImage6];
        [dataModels addObject:dataModel];
    }
    {
        CQTSLocImageDataModel *dataModel = [[CQTSLocImageDataModel alloc] init];
        dataModel.name = @"7XX福";
        dataModel.image = [CQTSLocImagesUtil cjts_localImage7];
        [dataModels addObject:dataModel];
    }
    {
        CQTSLocImageDataModel *dataModel = [[CQTSLocImageDataModel alloc] init];
        dataModel.name = @"8X之语";
        dataModel.image = [CQTSLocImagesUtil cjts_localImage8];
        [dataModels addObject:dataModel];
    }
    
    return dataModels;
}


#pragma mark - local Image
+ (UIImage *)cjts_localImageBG1 {
    return [UIImage imageNamed:@"CQDemoKit.bundle/cqts_bgSky.jpg"];
}

+ (UIImage *)cjts_localImageBG2 {
    return [UIImage imageNamed:@"CQDemoKit.bundle/cqts_bgCar.jpg"];
}

+ (UIImage *)cjts_localImage1 {
    return [UIImage imageNamed:@"CQDemoKit.bundle/cqts_1.jpg"];
}

+ (UIImage *)cjts_localImage2 {
    return [UIImage imageNamed:@"CQDemoKit.bundle/cqts_2.jpg"];
}

+ (UIImage *)cjts_localImage3 {
    return [UIImage imageNamed:@"CQDemoKit.bundle/cqts_3.jpg"];
}

+ (UIImage *)cjts_localImage4 {
    return [UIImage imageNamed:@"CQDemoKit.bundle/cqts_3.jpg"];
}

+ (UIImage *)cjts_localImage5 {
    return [UIImage imageNamed:@"CQDemoKit.bundle/cqts_3.jpg"];
}

+ (UIImage *)cjts_localImage6 {
    return [UIImage imageNamed:@"CQDemoKit.bundle/cqts_3.jpg"];
}

+ (UIImage *)cjts_localImage7 {
    return [UIImage imageNamed:@"CQDemoKit.bundle/cqts_3.jpg"];
}

+ (UIImage *)cjts_localImage8 {
    return [UIImage imageNamed:@"CQDemoKit.bundle/cqts_3.jpg"];
}


@end
