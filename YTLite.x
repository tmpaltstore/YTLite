#import "YTLite.h"

// YouTube-X (https://github.com/PoomSmart/YouTube-X/)
// Background Playback
%hook YTIPlayabilityStatus
- (BOOL)isPlayableInBackground { return YES; }
%end

%hook MLVideo
- (BOOL)playableInBackground { return YES; }
%end

// Disable Ads
%hook YTIPlayerResponse
- (BOOL)isMonetized { return NO; }
%end

%hook YTDataUtils
+ (id)spamSignalsDictionary { return nil; }
+ (id)spamSignalsDictionaryWithoutIDFA { return nil; }
%end

%hook YTAdsInnerTubeContextDecorator
- (void)decorateContext:(id)context {}
%end

%hook YTAccountScopedAdsInnerTubeContextDecorator
- (void)decorateContext:(id)context {}
%end
