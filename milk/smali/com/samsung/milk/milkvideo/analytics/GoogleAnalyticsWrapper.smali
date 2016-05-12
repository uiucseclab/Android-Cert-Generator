.class public Lcom/samsung/milk/milkvideo/analytics/GoogleAnalyticsWrapper;
.super Ljava/lang/Object;
.source "GoogleAnalyticsWrapper.java"


# static fields
.field private static final APP_IN_FOCUS_EVENT:Ljava/lang/String; = "AppInFocus"

.field private static final EVENT_TIME_ACTION:Ljava/lang/String; = "EventTime"

.field private static final USER_ENGAGED_EVENT:Ljava/lang/String; = "UserEngaged"


# instance fields
.field analytics:Lcom/google/android/gms/analytics/GoogleAnalytics;

.field timeService:Lcom/samsung/milk/milkvideo/utils/TimeService;

.field tracker:Lcom/google/android/gms/analytics/Tracker;

.field trackerId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/milk/milkvideo/utils/TimeService;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "timeService"    # Lcom/samsung/milk/milkvideo/utils/TimeService;

    .prologue
    const/4 v1, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, "com.samsung.milk.milkvideo.googleAnalytics.trackerId"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/analytics/GoogleAnalyticsWrapper;->trackerId:Ljava/lang/String;

    .line 22
    invoke-static {p1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/analytics/GoogleAnalyticsWrapper;->analytics:Lcom/google/android/gms/analytics/GoogleAnalytics;

    .line 23
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/analytics/GoogleAnalyticsWrapper;->analytics:Lcom/google/android/gms/analytics/GoogleAnalytics;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getLogger()Lcom/google/android/gms/analytics/Logger;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/google/android/gms/analytics/Logger;->setLogLevel(I)V

    .line 24
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/analytics/GoogleAnalyticsWrapper;->analytics:Lcom/google/android/gms/analytics/GoogleAnalytics;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->setLocalDispatchPeriod(I)V

    .line 26
    iput-object p2, p0, Lcom/samsung/milk/milkvideo/analytics/GoogleAnalyticsWrapper;->timeService:Lcom/samsung/milk/milkvideo/utils/TimeService;

    .line 28
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/analytics/GoogleAnalyticsWrapper;->createNewTracker()V

    .line 29
    return-void
.end method

.method private sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/analytics/GoogleAnalyticsWrapper;->tracker:Lcom/google/android/gms/analytics/Tracker;

    if-nez v0, :cond_0

    .line 38
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/analytics/GoogleAnalyticsWrapper;->createNewTracker()V

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/analytics/GoogleAnalyticsWrapper;->tracker:Lcom/google/android/gms/analytics/Tracker;

    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 45
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/analytics/GoogleAnalyticsWrapper;->analytics:Lcom/google/android/gms/analytics/GoogleAnalytics;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->dispatchLocalHits()V

    .line 46
    return-void
.end method


# virtual methods
.method public createNewTracker()V
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/analytics/GoogleAnalyticsWrapper;->analytics:Lcom/google/android/gms/analytics/GoogleAnalytics;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/analytics/GoogleAnalyticsWrapper;->trackerId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->newTracker(Ljava/lang/String;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/analytics/GoogleAnalyticsWrapper;->tracker:Lcom/google/android/gms/analytics/Tracker;

    .line 33
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/analytics/GoogleAnalyticsWrapper;->tracker:Lcom/google/android/gms/analytics/Tracker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->enableAdvertisingIdCollection(Z)V

    .line 34
    return-void
.end method

.method public sendAppInFocusEvent()V
    .locals 4

    .prologue
    .line 49
    const-string v0, "AppInFocus"

    const-string v1, "EventTime"

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/analytics/GoogleAnalyticsWrapper;->timeService:Lcom/samsung/milk/milkvideo/utils/TimeService;

    invoke-virtual {v2}, Lcom/samsung/milk/milkvideo/utils/TimeService;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/milk/milkvideo/analytics/GoogleAnalyticsWrapper;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public sendUserEngagementEvent()V
    .locals 4

    .prologue
    .line 53
    const-string v0, "UserEngaged"

    const-string v1, "EventTime"

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/analytics/GoogleAnalyticsWrapper;->timeService:Lcom/samsung/milk/milkvideo/utils/TimeService;

    invoke-virtual {v2}, Lcom/samsung/milk/milkvideo/utils/TimeService;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/milk/milkvideo/analytics/GoogleAnalyticsWrapper;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return-void
.end method
