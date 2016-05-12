.class public Lcom/samsung/milk/milkvideo/analytics/BufferingTracker;
.super Ljava/lang/Object;
.source "BufferingTracker.java"


# instance fields
.field private bufferingStartedTimeMillis:J

.field private currentBufferingVideo:Ljava/lang/String;

.field mixpanelTracker:Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-static {}, Lcom/samsung/milk/milkvideo/NachosApplication;->getInstance()Lcom/samsung/milk/milkvideo/NachosApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/milk/milkvideo/NachosApplication;->inject(Ljava/lang/Object;)V

    .line 13
    return-void
.end method


# virtual methods
.method public bufferingEnded(Ljava/lang/String;J)V
    .locals 4
    .param p1, "embedCode"    # Ljava/lang/String;
    .param p2, "currentTimeMillis"    # J

    .prologue
    .line 27
    iget-wide v2, p0, Lcom/samsung/milk/milkvideo/analytics/BufferingTracker;->bufferingStartedTimeMillis:J

    sub-long v0, p2, v2

    .line 28
    .local v0, "duration":J
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/analytics/BufferingTracker;->currentBufferingVideo:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 29
    const-string v2, "Unusual buffering duration. Sending Mixpanel event"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/analytics/BufferingTracker;->mixpanelTracker:Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;

    invoke-virtual {v2, p1, v0, v1}, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;->sendVideoBufferingEvent(Ljava/lang/String;J)V

    .line 32
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/milk/milkvideo/analytics/BufferingTracker;->currentBufferingVideo:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public bufferingStarted(Ljava/lang/String;J)V
    .locals 0
    .param p1, "embedCode"    # Ljava/lang/String;
    .param p2, "currentTimeMillis"    # J

    .prologue
    .line 22
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/analytics/BufferingTracker;->currentBufferingVideo:Ljava/lang/String;

    .line 23
    iput-wide p2, p0, Lcom/samsung/milk/milkvideo/analytics/BufferingTracker;->bufferingStartedTimeMillis:J

    .line 24
    return-void
.end method
