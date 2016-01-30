//
//  EmojiStringTests.m
//  EmojiStringTests
//
//  Created by Gabriel Massana on 23/1/16.
//  Copyright © 2016 GabrielMassana. All rights reserved.
//

#import <XCTest/XCTest.h>

#import "NSString+EMOEmoji.h"

@interface EmojiStringTests : XCTestCase

@property (nonatomic, strong) NSString *ios91;
@property (nonatomic, strong) NSString *abc;
@property (nonatomic, strong) NSString *weird;
@property (nonatomic, strong) NSString *ios91New;

@end

@implementation EmojiStringTests

- (void)setUp
{
    [super setUp];

    self.ios91 = @"🙂🤗🤔🙄🤐🤓☹🙁🙃🤒🤕🤑⛑🕵🗣🤘🖕🖐✍👁🕶🦁🦄🐿🦃🕊🦀🕷🕸🦂☘🌡⛈🌤🌥🌦🌧🌨🌩🌪🌫🌬☄☂️⛱🏖🌶🧀🌭🌮🌯🍿🍾🍽🏌⛸⛷⛹🏋🏎🏍🏅🏏🏐🏑🏒🏓🏸🗺🏔⛰🏕🏖🏜🏝🏞🏟🏛🏗🏘🏙🏚🕋🕌🕍⛩📿🕎✝️☦✡️☸☪🕉🛐🛣🛤🛳⛴🛥🛩🛫🛬🛰🛢🛎🛌🛏🛋⏱⏲🕰🎖🎗🖼🎞🎟🏷🕹🎙🎚🎛*⃣🖥🖨⌨🖱🖲📽📸🛍🕯🗞🗳🖋🖊🖌🖍🗂🗒🗓🖇🗃🗄🗑🗝⛏⚒🛠⚙🗜⚗⚖⛓🗡⚔🛡🏹⚰⚱🏳🏴🕳⚜⚛☯️☮☢☣⏭⏯⏮⏸⏹⏺🗯👁‍🗨🇦🇫🇦🇱🇩🇿🇦🇸🇦🇩🇦🇴🇦🇮🇦🇬🇦🇷🇦🇲🇦🇼🇦🇿🇧🇸🇧🇭🇧🇩🇧🇧🇧🇾🇧🇿🇧🇯🇧🇲🇧🇹🇧🇴🇧🇦🇧🇼🇻🇬🇧🇳🇧🇬🇧🇫🇧🇮🇰🇭🇨🇲🇨🇻🇰🇾🇨🇫🇹🇩🇰🇲🇨🇬🇨🇩🇨🇰🇨🇷🇨🇮🇭🇷🇨🇺🇨🇼🇨🇾🇨🇿🇩🇯🇩🇲🇩🇴🇪🇨🇪🇬🇸🇻🇬🇶🇪🇷🇪🇪🇪🇹🇫🇴🇫🇯🇬🇫🇹🇫🇬🇦🇬🇲🇬🇪🇬🇭🇬🇮🇬🇷🇬🇱🇬🇩🇬🇺🇬🇹🇬🇬🇬🇳🇬🇼🇬🇾🇭🇹🇭🇳🇭🇺🇮🇸🇮🇷🇮🇶🇯🇲🇯🇴🇰🇿🇰🇪🇰🇮🇽🇰🇰🇼🇰🇬🇱🇦🇱🇻🇱🇧🇱🇸🇱🇷🇱🇾🇱🇮🇱🇹🇱🇺🇲🇰🇲🇬🇲🇼🇲🇻🇲🇱🇲🇹🇲🇷🇾🇹🇲🇩🇲🇳🇲🇪🇲🇸🇲🇦🇲🇿🇲🇲🇳🇦🇳🇵🇳🇨🇳🇮🇳🇪🇳🇬🇳🇺🇲🇵🇰🇵🇴🇲🇵🇰🇵🇼🇵🇸🇵🇦🇵🇬🇵🇾🇵🇪🇶🇦🇷🇴🇷🇼🇼🇸🇸🇲🇸🇹🇸🇳🇷🇸🇸🇨🇸🇱🇸🇽🇸🇰🇸🇮🇸🇧🇸🇴🇸🇸🇱🇰🇰🇳🇱🇨🇲🇫🇵🇲🇻🇨🇸🇩🇸🇷🇸🇿🇸🇾🇹🇯🇹🇿🇹🇭🇹🇱🇹🇬🇹🇴🇹🇹🇹🇳🇹🇲🇹🇨🇹🇻🇺🇬🇺🇦🇺🇾🇻🇮🇺🇿🇻🇺🇻🇪🇾🇪🇿🇲🇿🇼";
    self.abc = @"abcdefghijklmnopqrstuvwxyz";
    self.weird = @"✍☘☦☸☪⌨⚒⚙⚗⚖⚔⚰⚱⚜⚛☮☢☣";
    self.ios91New = @"🤐🤑🤒🤓🤔🤕🤖🤗🤘🦀🦁🦂🦃🦄🧀☂️✝️✡️☯️";
}

- (void)tearDown
{
    self.ios91 = nil;
    self.abc = nil;
    self.weird = nil;
    self.ios91New = nil;
    
    [super tearDown];
}

#pragma mark - containsEmoji

- (void)test_emo_containsEmoji_ios91
{
    BOOL ios91 = [self.ios91 emo_containsEmoji];
    
    NSAssert(ios91 == YES, @"fail_test_emo_containsEmoji");
}

- (void)test_emo_containsEmoji_abc
{
    BOOL abc = [self.abc emo_containsEmoji];
    
    NSAssert(abc == NO, @"fail_test_emo_containsEmoji");
}

- (void)test_emo_containsEmoji_weird
{
    BOOL weird = [self.weird emo_containsEmoji];
    
    NSAssert(weird == YES, @"fail_test_emo_containsEmoji");
}

- (void)test_emo_containsEmoji_ios91New
{
    BOOL ios91New = [self.ios91New emo_containsEmoji];

    NSAssert(ios91New == YES, @"fail_test_emo_containsEmoji");
}


#pragma mark - emojiRanges

- (void)test_emo_emojiRanges_ios91
{
    NSArray *ios91 = [self.ios91 emo_emojiRanges];
    
    NSAssert(ios91.count > 0, @"fail_test_emo_emojiRanges");
}

- (void)test_emo_emojiRanges_abc
{
    NSArray *abc = [self.abc emo_emojiRanges];

    NSAssert(abc.count == 0, @"fail_test_emo_emojiRanges");
}

- (void)test_emo_emojiRanges_weird
{
    NSArray *weird = [self.weird emo_emojiRanges];

    NSAssert(weird.count == 18, @"fail_test_emo_emojiRanges");
}

- (void)test_emo_emojiRanges_ios91New
{
    NSArray *ios91New = [self.ios91New emo_emojiRanges];

    NSAssert(ios91New.count == 19, @"fail_test_emo_emojiRanges");
}

#pragma mark - emojiCount

- (void)test_emo_emojiCount_ios91
{
    NSInteger ios91 = [self.ios91 emo_emojiCount];
    
    NSAssert(ios91 > 0, @"fail_test_emo_emojiCount");
}

- (void)test_emo_emojiCount_abc
{
    NSInteger abc = [self.abc emo_emojiCount];

    NSAssert(abc == 0, @"fail_test_emo_emojiCount");
}

- (void)test_emo_emojiCount_weird
{
    NSInteger weird = [self.weird emo_emojiCount];

    NSAssert(weird == 18, @"fail_test_emo_emojiCount");
}

- (void)test_emo_emojiCount_ios91New
{
    NSInteger ios91New = [self.ios91New emo_emojiCount];

    NSAssert(ios91New == 19, @"fail_test_emo_emojiCount");
}

@end
