//
//  ViewController.m
//  QuizApp
//
//  Created by 井上圭一 on 2016/01/08.
//  Copyright © 2016年 keiichi, inoue. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    NSInteger countNumber;
    NSInteger countAnswer;
    NSInteger countTime;
    NSTimer *timer;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    countNumber = 1;
    countAnswer = 0;
    countTime = 0;
    self.textLabel2.text = @"第1問";
    self.tv.text = @"東京ディズニーランドがあるのは東京都である。\n\n\n ◯ or X";
}
-(IBAction)answer1:(id)sender{
    if (countNumber == 1){
        self.textLabel1.text = @"不 正 解";
        self.textLabel4.text = @"3秒後に次の問題です。";
        countNumber++;
        timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(tick:) userInfo:nil repeats:YES];
    } else if (countNumber == 2){
        self.textLabel1.text = @"正 解";
        self.textLabel4.text = @"3秒後に次の問題です。";
        countAnswer = countAnswer+20;
        countNumber++;
        timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(tick:) userInfo:nil repeats:YES];
    } else if (countNumber == 3){
        self.textLabel1.text = @"不 正 解";
        self.textLabel4.text = @"3秒後に次の問題です。";
        countNumber++;
        timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(tick:) userInfo:nil repeats:YES];
    } else if (countNumber == 4){
        self.textLabel1.text = @"正 解";
        self.textLabel4.text = @"3秒後に次の問題です。";
        countAnswer = countAnswer+20;
        countNumber++;
        timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(tick:) userInfo:nil repeats:YES];
    } else if (countNumber == 5){
        self.textLabel1.text = @"不 正 解";
        self.textLabel2.text = @"";
        countNumber++;
        self.tv.text = [NSString stringWithFormat:@"あなたの正解率は%d%%です。\n\nもう一度挑戦するには◯\n終了はXを押してください。", countAnswer];
    } else if (countNumber == 6){
        countNumber = 1;
        countAnswer = 0;
        countTime = 0;
        self.textLabel2.text = @"第1問";
        self.tv.text = @"東京ディズニーランドがあるのは東京都である。\n\n\n ◯ or X";
    }

}
-(IBAction)answer2:(id)sender{
    if (countNumber == 1){
        self.textLabel1.text = @"正 解";
        self.textLabel4.text = @"3秒後に次の問題です。";
        countAnswer = countAnswer+20;
        countNumber++;
        timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(tick:) userInfo:nil repeats:YES];
    } else if (countNumber == 2){
        self.textLabel1.text = @"不 正 解";
        self.textLabel4.text = @"3秒後に次の問題です。";
        countNumber++;
        timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(tick:) userInfo:nil repeats:YES];
    } else if (countNumber == 3){
        self.textLabel1.text = @"正 解";
        self.textLabel4.text = @"3秒後に次の問題です。";
        countAnswer = countAnswer+20;
        countNumber++;
        timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(tick:) userInfo:nil repeats:YES];
    } else if (countNumber == 4){
        self.textLabel1.text = @"不 正 解";
        self.textLabel4.text = @"3秒後に次の問題です。";
        countNumber++;
        timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(tick:) userInfo:nil repeats:YES];
    } else if (countNumber == 5){
        self.textLabel1.text = @"正 解";
        self.textLabel2.text = @"";
        countAnswer = countAnswer+20;
        countNumber++;
        self.tv.text = [NSString stringWithFormat:@"あなたの正解率は%d%%です。\n\nもう一度挑戦するには◯\n終了はXを押してください。", countAnswer];
    } else if (countNumber == 6){
        countNumber = 10;
        countAnswer = 0;
        countTime = 0;
        self.textLabel1.text = @"";
        self.textLabel2.text = @"";
        self.tv.text = @"お疲れさまでした。";
    }
    
}
-(void)tick:(NSTimer*)timer{
    countTime++;
    if (countNumber == 2 && countTime == 3){
        self.textLabel1.text = @"";
        self.textLabel2.text = @"第2問";
        self.tv.text = @"塩はカロリー0である。\n\n\n ◯ or X";
        self.textLabel4.text = @"";
        [timer invalidate];
        timer = nil;
        countTime = 0;
    }　else if (countNumber == 3 && countTime == 3){
        self.textLabel1.text = @"";
        self.textLabel2.text = @"第3問";
        self.tv.text = @"100円玉と10円玉、大きいのは100円玉?\n\n\n ◯ or X";
        self.textLabel4.text = @"";
        [timer invalidate];
        timer = nil;
        countTime = 0;
    } else if (countNumber == 4 && countTime == 3){
        self.textLabel1.text = @"";
        self.textLabel2.text = @"第4問";
        self.tv.text = @"ガチャピンとムック、恐竜の子供はガチャピン?\n\n\n ◯ or X";
        self.textLabel4.text = @"";
        [timer invalidate];
        timer = nil;
        countTime = 0;
    } else if (countNumber == 5 && countTime == 3){
        self.textLabel1.text = @"";
        self.textLabel2.text = @"第5問";
        self.tv.text = @"タラちゃんの苗字は磯野?\n\n\n ◯ or X";
        self.textLabel4.text = @"";
        [timer invalidate];
        timer = nil;
        countTime = 0;
    }
    
    NSLog(@"%d:%d", countTime, countNumber);
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
