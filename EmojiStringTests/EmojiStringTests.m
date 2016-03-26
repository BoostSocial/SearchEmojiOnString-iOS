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
    
    XCTAssertEqual(ios91, YES, @"test_emo_containsEmoji_ios91");
}

- (void)test_emo_containsEmoji_abc
{
    BOOL abc = [self.abc emo_containsEmoji];
    
    XCTAssertEqual(abc, NO, @"test_emo_containsEmoji_abc");
}

- (void)test_emo_containsEmoji_weird
{
    BOOL weird = [self.weird emo_containsEmoji];
    
    XCTAssertEqual(weird,YES, @"test_emo_containsEmoji_weird");
}

- (void)test_emo_containsEmoji_ios91New
{
    BOOL ios91New = [self.ios91New emo_containsEmoji];

    XCTAssertEqual(ios91New, YES, @"test_emo_containsEmoji_ios91New");
}

#pragma mark - emojiRanges

- (void)test_emo_emojiRanges_ios91
{
    NSArray *ios91 = [self.ios91 emo_emojiRanges];
    
    XCTAssert(ios91.count > 0, @"test_emo_emojiRanges_ios91");
}

- (void)test_emo_emojiRanges_abc
{
    NSArray *abc = [self.abc emo_emojiRanges];

    XCTAssertEqual(abc.count, 0, @"test_emo_emojiRanges_abc");
}

- (void)test_emo_emojiRanges_weird
{
    NSArray *weird = [self.weird emo_emojiRanges];

    XCTAssertEqual(weird.count, 18, @"test_emo_emojiRanges_weird");
}

- (void)test_emo_emojiRanges_ios91New
{
    NSArray *ios91New = [self.ios91New emo_emojiRanges];

    XCTAssertEqual(ios91New.count, 19, @"test_emo_emojiRanges_ios91New");
}

#pragma mark - emojiCount

- (void)test_emo_emojiCount_ios91
{
    NSInteger ios91 = [self.ios91 emo_emojiCount];
    
    XCTAssert(ios91 > 0, @"test_emo_emojiCount_ios91");
}

- (void)test_emo_emojiCount_abc
{
    NSInteger abc = [self.abc emo_emojiCount];

    XCTAssertEqual(abc, 0, @"test_emo_emojiCount_abc");
}

- (void)test_emo_emojiCount_weird
{
    NSInteger weird = [self.weird emo_emojiCount];

    XCTAssertEqual(weird, 18, @"test_emo_emojiCount_weird");
}

- (void)test_emo_emojiCount_ios91New
{
    NSInteger ios91New = [self.ios91New emo_emojiCount];

    XCTAssertEqual(ios91New, 19, @"test_emo_emojiCount_ios91New");
}

#pragma mark - PureEmojiString

- (void)test_emo_isPureEmojiString_emoji
{
    BOOL isPureEmojiString = [self.ios91 emo_isPureEmojiString];
    
    XCTAssertEqual(isPureEmojiString , YES, @"test_emo_isPureEmojiString_emoji");
}

- (void)test_emo_isPureEmojiString_wired
{
    BOOL isPureEmojiString = [self.weird emo_isPureEmojiString];
    
    XCTAssertEqual(isPureEmojiString, YES, @"test_emo_isPureEmojiString_wired");
}

- (void)test_emo_isPureEmojiString_abc
{
    BOOL isPureEmojiString = [self.abc emo_isPureEmojiString];
    
    XCTAssertEqual(isPureEmojiString, NO, @"test_emo_isPureEmojiString_abc");
}

- (void)test_emo_isPureEmojiString_abc_ios91_ios91New_weird
{
    NSString *text = [NSString stringWithFormat:@"%@%@%@%@", self.abc, self.ios91, self.ios91New, self.weird];
    BOOL isPureEmojiString = [text emo_isPureEmojiString];
    
    XCTAssertEqual(isPureEmojiString, NO, @"test_emo_isPureEmojiString_abc_ios91_ios91New_weird");
}

@end
