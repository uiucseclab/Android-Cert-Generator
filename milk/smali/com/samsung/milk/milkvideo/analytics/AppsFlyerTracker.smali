.class public Lcom/samsung/milk/milkvideo/analytics/AppsFlyerTracker;
.super Ljava/lang/Object;
.source "AppsFlyerTracker.java"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private final appsFlyerWrapper:Lcom/samsung/milk/milkvideo/analytics/AppsFlyerWrapper;

.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/milk/milkvideo/utils/GoogleAccount;Lcom/samsung/milk/milkvideo/analytics/AppsFlyerWrapper;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation runtime Lcom/samsung/milk/milkvideo/utils/ApplicationContext;
        .end annotation
    .end param
    .param p2, "googleAccount"    # Lcom/samsung/milk/milkvideo/utils/GoogleAccount;
    .param p3, "appsFlyerWrapper"    # Lcom/samsung/milk/milkvideo/analytics/AppsFlyerWrapper;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/analytics/AppsFlyerTracker;->context:Landroid/content/Context;

    .line 19
    iput-object p3, p0, Lcom/samsung/milk/milkvideo/analytics/AppsFlyerTracker;->appsFlyerWrapper:Lcom/samsung/milk/milkvideo/analytics/AppsFlyerWrapper;

    .line 20
    const-string v0, "ervF5x8TXuGkar9PDXN8WR"

    invoke-virtual {p3, v0}, Lcom/samsung/milk/milkvideo/analytics/AppsFlyerWrapper;->setAppsFlyerKey(Ljava/lang/String;)V

    .line 21
    const-string v0, "USD"

    invoke-virtual {p3, v0}, Lcom/samsung/milk/milkvideo/analytics/AppsFlyerWrapper;->setCurrencyCode(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p2}, Lcom/samsung/milk/milkvideo/utils/GoogleAccount;->getGoogleAccountName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/samsung/milk/milkvideo/analytics/AppsFlyerWrapper;->setAppUserId(Ljava/lang/String;)V

    .line 23
    const-string v0, "AppsFlyer Initialized"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    return-void
.end method

.method private sendEventWithTracking(Ljava/lang/String;)V
    .locals 3
    .param p1, "eventName"    # Ljava/lang/String;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/analytics/AppsFlyerTracker;->appsFlyerWrapper:Lcom/samsung/milk/milkvideo/analytics/AppsFlyerWrapper;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/analytics/AppsFlyerTracker;->context:Landroid/content/Context;

    const-string v2, "0.0"

    invoke-virtual {v0, v1, p1, v2}, Lcom/samsung/milk/milkvideo/analytics/AppsFlyerWrapper;->sendTrackingWithEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string v0, "Sending AppsFlyer %s tracking event"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    return-void
.end method


# virtual methods
.method public sendAppOpenedEvent()V
    .locals 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/analytics/AppsFlyerTracker;->appsFlyerWrapper:Lcom/samsung/milk/milkvideo/analytics/AppsFlyerWrapper;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/analytics/AppsFlyerTracker;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/samsung/milk/milkvideo/analytics/AppsFlyerWrapper;->sendTracking(Landroid/content/Context;)V

    .line 28
    const-string v0, "Sending AppsFlyer AppOpened event"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    return-void
.end method

.method public sendUserSignedUpEvent()V
    .locals 1

    .prologue
    .line 32
    const-string v0, "UserSignup"

    invoke-direct {p0, v0}, Lcom/samsung/milk/milkvideo/analytics/AppsFlyerTracker;->sendEventWithTracking(Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public sendVideoPlayedEvent()V
    .locals 1

    .prologue
    .line 36
    const-string v0, "VideoPlayed"

    invoke-direct {p0, v0}, Lcom/samsung/milk/milkvideo/analytics/AppsFlyerTracker;->sendEventWithTracking(Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public sendVideoRepostedEvent()V
    .locals 1

    .prologue
    .line 40
    const-string v0, "VideoReposted"

    invoke-direct {p0, v0}, Lcom/samsung/milk/milkvideo/analytics/AppsFlyerTracker;->sendEventWithTracking(Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public sendVideoShareEvent()V
    .locals 1

    .prologue
    .line 48
    const-string v0, "VideoShared"

    invoke-direct {p0, v0}, Lcom/samsung/milk/milkvideo/analytics/AppsFlyerTracker;->sendEventWithTracking(Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public sendVideoStarEvent()V
    .locals 1

    .prologue
    .line 44
    const-string v0, "VideoStarred"

    invoke-direct {p0, v0}, Lcom/samsung/milk/milkvideo/analytics/AppsFlyerTracker;->sendEventWithTracking(Ljava/lang/String;)V

    .line 45
    return-void
.end method
