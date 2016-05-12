.class public final enum Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;
.super Ljava/lang/Enum;
.source "total Java heap"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;

.field public static final enum BY_ANDROID:Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;

.field public static final enum BY_AUTOPLAY:Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;

.field public static final enum BY_BOOKMARK:Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;

.field public static final enum BY_CHROME_CAST:Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;

.field public static final enum BY_DEBUG_SILENT:Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;

.field public static final enum BY_DIALOG:Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;

.field public static final enum BY_DIVEBAR:Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;

.field public static final enum BY_FLYOUT:Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;

.field public static final enum BY_INLINE_CHANNEL_FEED_TRANSITION:Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;

.field public static final enum BY_INLINE_FULLSCREEN_TRANSITION:Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;

.field public static final enum BY_JEWEL:Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;

.field public static final enum BY_MANAGER:Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;

.field public static final enum BY_MEDIA_TRAY_DISMISS:Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;

.field public static final enum BY_NEWSFEED_OCCLUSION:Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;

.field public static final enum BY_NEWSFEED_ONPAUSE:Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;

.field public static final enum BY_PAGE_VIDEOLIST_STORY:Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;

.field public static final enum BY_PLAYER:Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;

.field public static final enum BY_PLAYER_INTERNAL_ERROR:Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;

.field public static final enum BY_PREPARER:Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;

.field public static final enum BY_SEEKBAR_CONTROLLER:Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;

.field public static final enum BY_THREAD_VIEW_DISMISS:Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;

.field public static final enum BY_USER:Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;

.field public static final enum BY_VIDEO_CHAINING_TAP:Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;

.field public static final UNSET:Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;


# instance fields
.field public final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 313
    new-instance v0, Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;

    const-string v1, "BY_USER"

    const-string v2, "user_initiated"

    invoke-direct {v0, v1, v4, v2}, Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;->BY_USER:Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;

    .line 314
    new-instance v0, Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;

    const-string v1, "BY_PLAYER"

    const-string v2, "player_initiated"

    invoke-direct {v0, v1, v5, v2}, Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;->BY_PLAYER:Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;

    .line 315
    new-instance v0, Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;

    const-string v1, "BY_MANAGER"

    const-string v2, "manager_initiated"

    invoke-direct {v0, v1, v6, v2}, Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;->BY_MANAGER:Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;

    .line 316
    new-instance v0, Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;

    const-string v1, "BY_AUTOPLAY"

    const-string v2, "autoplay_initiated"

    invoke-direct {v0, v1, v7, v2}, Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;->BY_AUTOPLAY:Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;

    .line 317
    new-instance v0, Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;

    const-string v1, "BY_ANDROID"

    const-string v2, "android_initiated"

    invoke-direct {v0, v1, v8, v2}, Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;->BY_ANDROID:Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;

    .line 318
    new-instance v0, Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;

    const-string v1, "BY_FLYOUT"

    const/4 v2, 0x5

    const-string v3, "flyout"

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;->BY_FLYOUT:Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;

    .line 319
    new-instance v0, Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;

    const-string v1, "BY_DIVEBAR"

    const/4 v2, 0x6

    const-string v3, "divebar"

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;->BY_DIVEBAR:Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;

    .line 320
    new-instance v0, Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;

    const-string v1, "BY_BOOKMARK"

    const/4 v2, 0x7

    const-string v3, "bookmark"

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;->BY_BOOKMARK:Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;

    .line 321
    new-instance v0, Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;

    const-string v1, "BY_JEWEL"

    const/16 v2, 0x8

    const-string v3, "jewel"

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;->BY_JEWEL:Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;

    .line 322
    new-instance v0, Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;

    const-string v1, "BY_DIALOG"

    const/16 v2, 0x9

    const-string v3, "dialog"

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;->BY_DIALOG:Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;

    .line 323
    new-instance v0, Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;

    const-string v1, "BY_NEWSFEED_OCCLUSION"

    const/16 v2, 0xa

    const-string v3, "nf_occlusion"

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;->BY_NEWSFEED_OCCLUSION:Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;

    .line 324
    new-instance v0, Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;

    const-string v1, "BY_NEWSFEED_ONPAUSE"

    const/16 v2, 0xb

    const-string v3, "nf_onpause"

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;->BY_NEWSFEED_ONPAUSE:Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;

    .line 325
    new-instance v0, Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;

    const-string v1, "BY_VIDEO_CHAINING_TAP"

    const/16 v2, 0xc

    const-string v3, "video_chaining_tap"

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;->BY_VIDEO_CHAINING_TAP:Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;

    .line 326
    new-instance v0, Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;

    const-string v1, "BY_INLINE_CHANNEL_FEED_TRANSITION"

    const/16 v2, 0xd

    const-string v3, "inline_channel_feed_transition"

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;->BY_INLINE_CHANNEL_FEED_TRANSITION:Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;

    .line 327
    new-instance v0, Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;

    const-string v1, "BY_INLINE_FULLSCREEN_TRANSITION"

    const/16 v2, 0xe

    const-string v3, "inline_fullscreen_transition"

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;->BY_INLINE_FULLSCREEN_TRANSITION:Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;

    .line 328
    new-instance v0, Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;

    const-string v1, "BY_THREAD_VIEW_DISMISS"

    const/16 v2, 0xf

    const-string v3, "thread_view_dismiss"

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;->BY_THREAD_VIEW_DISMISS:Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;

    .line 329
    new-instance v0, Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;

    const-string v1, "BY_MEDIA_TRAY_DISMISS"

    const/16 v2, 0x10

    const-string v3, "media_tray_dismiss"

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;->BY_MEDIA_TRAY_DISMISS:Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;

    .line 330
    new-instance v0, Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;

    const-string v1, "BY_SEEKBAR_CONTROLLER"

    const/16 v2, 0x11

    const-string v3, "seek_controller"

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;->BY_SEEKBAR_CONTROLLER:Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;

    .line 331
    new-instance v0, Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;

    const-string v1, "BY_DEBUG_SILENT"

    const/16 v2, 0x12

    const-string v3, "debug_silent"

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;->BY_DEBUG_SILENT:Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;

    .line 332
    new-instance v0, Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;

    const-string v1, "BY_PAGE_VIDEOLIST_STORY"

    const/16 v2, 0x13

    const-string v3, "page_videolist_story"

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;->BY_PAGE_VIDEOLIST_STORY:Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;

    .line 333
    new-instance v0, Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;

    const-string v1, "BY_PLAYER_INTERNAL_ERROR"

    const/16 v2, 0x14

    const-string v3, "player_internal_error"

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;->BY_PLAYER_INTERNAL_ERROR:Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;

    .line 334
    new-instance v0, Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;

    const-string v1, "BY_PREPARER"

    const/16 v2, 0x15

    const-string v3, "video_prepare_controller"

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;->BY_PREPARER:Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;

    .line 335
    new-instance v0, Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;

    const-string v1, "BY_CHROME_CAST"

    const/16 v2, 0x16

    const-string v3, "chrome_cast"

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;->BY_CHROME_CAST:Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;

    .line 312
    const/16 v0, 0x17

    new-array v0, v0, [Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;

    sget-object v1, Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;->BY_USER:Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;->BY_PLAYER:Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;->BY_MANAGER:Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;->BY_AUTOPLAY:Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;->BY_ANDROID:Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;->BY_FLYOUT:Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;->BY_DIVEBAR:Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;->BY_BOOKMARK:Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;->BY_JEWEL:Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;->BY_DIALOG:Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;->BY_NEWSFEED_OCCLUSION:Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;->BY_NEWSFEED_ONPAUSE:Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;->BY_VIDEO_CHAINING_TAP:Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;->BY_INLINE_CHANNEL_FEED_TRANSITION:Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;->BY_INLINE_FULLSCREEN_TRANSITION:Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;->BY_THREAD_VIEW_DISMISS:Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;->BY_MEDIA_TRAY_DISMISS:Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;->BY_SEEKBAR_CONTROLLER:Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;->BY_DEBUG_SILENT:Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;->BY_PAGE_VIDEOLIST_STORY:Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;->BY_PLAYER_INTERNAL_ERROR:Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;->BY_PREPARER:Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;->BY_CHROME_CAST:Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;->$VALUES:[Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;

    .line 337
    sget-object v0, Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;->BY_USER:Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;

    sput-object v0, Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;->UNSET:Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 341
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 342
    iput-object p3, p0, Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;->value:Ljava/lang/String;

    .line 343
    return-void
.end method

.method public static asEventTriggerType(Ljava/lang/String;)Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;
    .locals 5

    .prologue
    .line 346
    invoke-static {}, Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;->values()[Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 347
    iget-object v4, v3, Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;->value:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 348
    return-object v3

    .line 346
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 351
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;
    .locals 1

    .prologue
    .line 312
    const-class v0, Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;

    return-object v0
.end method

.method public static values()[Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;
    .locals 1

    .prologue
    .line 312
    sget-object v0, Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;->$VALUES:[Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;

    invoke-virtual {v0}, [Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;

    return-object v0
.end method
