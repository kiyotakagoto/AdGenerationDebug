
#import <UIKit/UIKit.h>
#import "ADGVideo.h"

@interface ADGVideoView : UIView

- (void)setVideo:(ADGVideo *)video;
- (void)setVideo:(ADGVideo *)video autoPlay:(BOOL)autoPlay;
- (void)play;
- (void)pause;
- (void)releasePlayer;

@property (nonatomic, setter=setVideo:) ADGVideo *video;

@end
