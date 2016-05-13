.class public final enum Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;
.super Ljava/lang/Enum;
.source "total Java heap"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

.field public static final enum BACKSTAGE_VIDEOS:Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

.field public static final enum CHANNEL_VIEW:Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

.field public static final enum COLLAGE_MIXED_MEDIA:Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

.field public static final enum EVENT:Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

.field public static final enum FEED:Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

.field public static final enum GROUP:Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

.field public static final enum INSTANT_ARTICLES:Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

.field public static final enum INSTANT_SHOPPING:Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

.field public static final enum MEDIA_PICKER:Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

.field public static final enum MESSENGER_THREAD:Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

.field public static final enum PAGE_TIMELINE:Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

.field public static final enum PAGE_VIDEO_CARD:Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

.field public static final enum PAGE_VIDEO_HUB:Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

.field public static final enum PAGE_VIDEO_LIST_PERMALINK:Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

.field public static final enum PAGE_VIDEO_LIST_STORY:Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

.field public static final enum PERMALINK:Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

.field public static final enum PROFILE_VIDEO:Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

.field public static final enum PROFILE_VIDEO_PREVIEW:Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

.field public static final enum REACTION_OVERLAY:Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

.field public static final enum RESULTS_PAGE_MIXED_MEDIA:Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

.field public static final enum SAVED_DASHBOARD:Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

.field public static final enum SAVED_REMINDER:Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

.field public static final enum SOUVENIR:Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

.field public static final enum UNKNOWN:Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

.field public static final enum USER_TIMELINE:Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

.field public static final enum VERVE:Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

.field public static final enum VIDEO_ALBUM_PERMALINK:Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

.field public static final enum VIDEO_CHAINING_INLINE:Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;


# instance fields
.field public final origin:Ljava/lang/String;

.field public final subOrigin:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 372
    new-instance v0, Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

    const-string v1, "FEED"

    const-string v2, "newsfeed"

    const-string v3, "unknown"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;->FEED:Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

    .line 373
    new-instance v0, Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

    const-string v1, "USER_TIMELINE"

    const-string v2, "user_timeline"

    const-string v3, "unknown"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;->USER_TIMELINE:Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

    .line 374
    new-instance v0, Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

    const-string v1, "PROFILE_VIDEO"

    const-string v2, "user_timeline"

    const-string v3, "profile_video"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;->PROFILE_VIDEO:Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

    .line 375
    new-instance v0, Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

    const-string v1, "PROFILE_VIDEO_PREVIEW"

    const-string v2, "user_timeline"

    const-string v3, "profile_video_preview"

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;->PROFILE_VIDEO_PREVIEW:Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

    .line 376
    new-instance v0, Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

    const-string v1, "PAGE_TIMELINE"

    const-string v2, "page_timeline"

    const-string v3, "unknown"

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;->PAGE_TIMELINE:Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

    .line 377
    new-instance v0, Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

    const-string v1, "PAGE_VIDEO_CARD"

    const/4 v2, 0x5

    const-string v3, "page_timeline"

    const-string v4, "page_video_card"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;->PAGE_VIDEO_CARD:Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

    .line 378
    new-instance v0, Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

    const-string v1, "PAGE_VIDEO_HUB"

    const/4 v2, 0x6

    const-string v3, "page_timeline"

    const-string v4, "page_video_hub"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;->PAGE_VIDEO_HUB:Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

    .line 379
    new-instance v0, Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

    const-string v1, "PAGE_VIDEO_LIST_PERMALINK"

    const/4 v2, 0x7

    const-string v3, "page_timeline"

    const-string v4, "page_video_list_permalink"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;->PAGE_VIDEO_LIST_PERMALINK:Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

    .line 380
    new-instance v0, Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

    const-string v1, "PAGE_VIDEO_LIST_STORY"

    const/16 v2, 0x8

    const-string v3, "newsfeed"

    const-string v4, "page_video_list_story"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;->PAGE_VIDEO_LIST_STORY:Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

    .line 381
    new-instance v0, Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

    const-string v1, "EVENT"

    const/16 v2, 0x9

    const-string v3, "other"

    const-string v4, "event"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;->EVENT:Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

    .line 382
    new-instance v0, Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

    const-string v1, "GROUP"

    const/16 v2, 0xa

    const-string v3, "group"

    const-string v4, "unknown"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;->GROUP:Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

    .line 383
    new-instance v0, Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

    const-string v1, "PERMALINK"

    const/16 v2, 0xb

    const-string v3, "permalink"

    const-string v4, "unknown"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;->PERMALINK:Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

    .line 384
    new-instance v0, Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

    const-string v1, "MESSENGER_THREAD"

    const/16 v2, 0xc

    const-string v3, "fbmessenger"

    const-string v4, "messenger_thread"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;->MESSENGER_THREAD:Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

    .line 385
    new-instance v0, Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

    const-string v1, "CHANNEL_VIEW"

    const/16 v2, 0xd

    const-string v3, "newsfeed"

    const-string v4, "channel_view"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;->CHANNEL_VIEW:Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

    .line 386
    new-instance v0, Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

    const-string v1, "VIDEO_CHAINING_INLINE"

    const/16 v2, 0xe

    const-string v3, "newsfeed"

    const-string v4, "video_chaining_inline"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;->VIDEO_CHAINING_INLINE:Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

    .line 387
    new-instance v0, Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

    const-string v1, "MEDIA_PICKER"

    const/16 v2, 0xf

    const-string v3, "other"

    const-string v4, "media_picker"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;->MEDIA_PICKER:Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

    .line 388
    new-instance v0, Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

    const-string v1, "REACTION_OVERLAY"

    const/16 v2, 0x10

    const-string v3, "other"

    const-string v4, "reaction_overlay"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;->REACTION_OVERLAY:Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

    .line 389
    new-instance v0, Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

    const-string v1, "VIDEO_ALBUM_PERMALINK"

    const/16 v2, 0x11

    const-string v3, "other"

    const-string v4, "video_album_permalink"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;->VIDEO_ALBUM_PERMALINK:Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

    .line 390
    new-instance v0, Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

    const-string v1, "COLLAGE_MIXED_MEDIA"

    const/16 v2, 0x12

    const-string v3, "newsfeed"

    const-string v4, "collage_mixed_media"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;->COLLAGE_MIXED_MEDIA:Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

    .line 391
    new-instance v0, Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

    const-string v1, "RESULTS_PAGE_MIXED_MEDIA"

    const/16 v2, 0x13

    const-string v3, "search"

    const-string v4, "results_page_mixed_media"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;->RESULTS_PAGE_MIXED_MEDIA:Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

    .line 392
    new-instance v0, Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

    const-string v1, "VERVE"

    const/16 v2, 0x14

    const-string v3, "other"

    const-string v4, "verve"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;->VERVE:Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

    .line 393
    new-instance v0, Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

    const-string v1, "SAVED_DASHBOARD"

    const/16 v2, 0x15

    const-string v3, "other"

    const-string v4, "saved_dashboard"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;->SAVED_DASHBOARD:Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

    .line 394
    new-instance v0, Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

    const-string v1, "SAVED_REMINDER"

    const/16 v2, 0x16

    const-string v3, "other"

    const-string v4, "saved_reminder"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;->SAVED_REMINDER:Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

    .line 395
    new-instance v0, Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

    const-string v1, "SOUVENIR"

    const/16 v2, 0x17

    const-string v3, "other"

    const-string v4, "souvenir"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;->SOUVENIR:Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

    .line 396
    new-instance v0, Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

    const-string v1, "INSTANT_ARTICLES"

    const/16 v2, 0x18

    const-string v3, "instant_articles"

    const-string v4, "instant_articles"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;->INSTANT_ARTICLES:Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

    .line 397
    new-instance v0, Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

    const-string v1, "INSTANT_SHOPPING"

    const/16 v2, 0x19

    const-string v3, "instant_shopping"

    const-string v4, "instant_shopping"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;->INSTANT_SHOPPING:Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

    .line 398
    new-instance v0, Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

    const-string v1, "BACKSTAGE_VIDEOS"

    const/16 v2, 0x1a

    const-string v3, "backstage"

    const-string v4, "backsrage_production_video"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;->BACKSTAGE_VIDEOS:Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

    .line 399
    new-instance v0, Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

    const-string v1, "UNKNOWN"

    const/16 v2, 0x1b

    const-string v3, "unknown"

    const-string v4, "unknown"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;->UNKNOWN:Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

    .line 371
    const/16 v0, 0x1c

    new-array v0, v0, [Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

    sget-object v1, Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;->FEED:Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

    aput-object v1, v0, v5

    sget-object v1, Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;->USER_TIMELINE:Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

    aput-object v1, v0, v6

    sget-object v1, Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;->PROFILE_VIDEO:Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

    aput-object v1, v0, v7

    sget-object v1, Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;->PROFILE_VIDEO_PREVIEW:Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

    aput-object v1, v0, v8

    sget-object v1, Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;->PAGE_TIMELINE:Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;->PAGE_VIDEO_CARD:Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;->PAGE_VIDEO_HUB:Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;->PAGE_VIDEO_LIST_PERMALINK:Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;->PAGE_VIDEO_LIST_STORY:Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;->EVENT:Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;->GROUP:Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;->PERMALINK:Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;->MESSENGER_THREAD:Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;->CHANNEL_VIEW:Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;->VIDEO_CHAINING_INLINE:Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;->MEDIA_PICKER:Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;->REACTION_OVERLAY:Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;->VIDEO_ALBUM_PERMALINK:Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;->COLLAGE_MIXED_MEDIA:Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;->RESULTS_PAGE_MIXED_MEDIA:Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;->VERVE:Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;->SAVED_DASHBOARD:Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;->SAVED_REMINDER:Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;->SOUVENIR:Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;->INSTANT_ARTICLES:Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;->INSTANT_SHOPPING:Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;->BACKSTAGE_VIDEOS:Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;->UNKNOWN:Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;->$VALUES:[Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 404
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 405
    iput-object p3, p0, Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;->origin:Ljava/lang/String;

    .line 406
    iput-object p4, p0, Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;->subOrigin:Ljava/lang/String;

    .line 407
    return-void
.end method

.method public static asPlayerOrigin(Ljava/lang/String;)Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;
    .locals 5

    .prologue
    .line 414
    if-nez p0, :cond_1

    .line 415
    sget-object v0, Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;->UNKNOWN:Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

    .line 422
    :cond_0
    :goto_0
    return-object v0

    .line 417
    :cond_1
    invoke-static {}, Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;->values()[Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_2

    aget-object v0, v2, v1

    .line 418
    invoke-virtual {v0}, Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;->asString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 417
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 422
    :cond_2
    sget-object v0, Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;->UNKNOWN:Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;
    .locals 1

    .prologue
    .line 371
    const-class v0, Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

    return-object v0
.end method

.method public static values()[Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;
    .locals 1

    .prologue
    .line 371
    sget-object v0, Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;->$VALUES:[Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

    invoke-virtual {v0}, [Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;

    return-object v0
.end method


# virtual methods
.method public final asString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 410
    const-string v0, "%s::%s"

    iget-object v1, p0, Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;->origin:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/video/analytics/VideoAnalytics$PlayerOrigin;->subOrigin:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/facebook/common/stringformat/StringFormatUtil;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
