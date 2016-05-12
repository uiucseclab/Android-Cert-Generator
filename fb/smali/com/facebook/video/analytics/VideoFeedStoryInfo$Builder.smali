.class public Lcom/facebook/video/analytics/VideoFeedStoryInfo$Builder;
.super Ljava/lang/Object;
.source "text"


# instance fields
.field public final a:Lcom/fasterxml/jackson/databind/node/ArrayNode;

.field public b:Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;

.field public c:Lcom/facebook/video/analytics/ChannelEligibility;

.field public d:Z


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/node/ArrayNode;)V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    sget-object v0, Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;->BY_USER:Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;

    iput-object v0, p0, Lcom/facebook/video/analytics/VideoFeedStoryInfo$Builder;->b:Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;

    .line 76
    sget-object v0, Lcom/facebook/video/analytics/ChannelEligibility;->NO_INFO:Lcom/facebook/video/analytics/ChannelEligibility;

    iput-object v0, p0, Lcom/facebook/video/analytics/VideoFeedStoryInfo$Builder;->c:Lcom/facebook/video/analytics/ChannelEligibility;

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/video/analytics/VideoFeedStoryInfo$Builder;->d:Z

    .line 80
    iput-object p1, p0, Lcom/facebook/video/analytics/VideoFeedStoryInfo$Builder;->a:Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 81
    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/video/analytics/ChannelEligibility;)Lcom/facebook/video/analytics/VideoFeedStoryInfo$Builder;
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/facebook/video/analytics/VideoFeedStoryInfo$Builder;->c:Lcom/facebook/video/analytics/ChannelEligibility;

    .line 90
    return-object p0
.end method

.method public final a(Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;)Lcom/facebook/video/analytics/VideoFeedStoryInfo$Builder;
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/facebook/video/analytics/VideoFeedStoryInfo$Builder;->b:Lcom/facebook/video/analytics/VideoAnalytics$EventTriggerType;

    .line 85
    return-object p0
.end method

.method public final a(Z)Lcom/facebook/video/analytics/VideoFeedStoryInfo$Builder;
    .locals 0

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/facebook/video/analytics/VideoFeedStoryInfo$Builder;->d:Z

    .line 95
    return-object p0
.end method

.method public final a()Lcom/facebook/video/analytics/VideoFeedStoryInfo;
    .locals 1

    .prologue
    .line 99
    new-instance v0, Lcom/facebook/video/analytics/VideoFeedStoryInfo;

    invoke-direct {v0, p0}, Lcom/facebook/video/analytics/VideoFeedStoryInfo;-><init>(Lcom/facebook/video/analytics/VideoFeedStoryInfo$Builder;)V

    return-object v0
.end method
