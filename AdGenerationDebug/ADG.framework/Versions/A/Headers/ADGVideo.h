
@interface ADGVideo : NSObject

@property (nonatomic, strong, readonly, nullable) NSString *vasttag;
@property (nonatomic, strong, readonly, nullable) NSURL *completeEventTracker;
@property (nonatomic, strong, readonly, nullable) NSURL *mediaFile;
@property (nonatomic, assign, readonly, getter=isValid) BOOL isValid;

- (nonnull instancetype)initWithDictionary:(nullable NSDictionary *)dict;
- (void)callCompleteEventTracker;

@end
