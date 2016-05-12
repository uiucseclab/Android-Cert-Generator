.class public Lcom/samsung/milk/milkvideo/analytics/AppsFlyerWrapper;
.super Ljava/lang/Object;
.source "AppsFlyerWrapper.java"


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public sendTracking(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-static {p1}, Lcom/appsflyer/AppsFlyerLib;->sendTracking(Landroid/content/Context;)V

    .line 31
    return-void
.end method

.method public sendTrackingWithEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "eventName"    # Ljava/lang/String;
    .param p3, "revenueValue"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-static {p1, p2, p3}, Lcom/appsflyer/AppsFlyerLib;->sendTrackingWithEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public setAppUserId(Ljava/lang/String;)V
    .locals 0
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-static {p1}, Lcom/appsflyer/AppsFlyerLib;->setAppUserId(Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public setAppsFlyerKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-static {p1}, Lcom/appsflyer/AppsFlyerLib;->setAppsFlyerKey(Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public setCurrencyCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "currencyCode"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-static {p1}, Lcom/appsflyer/AppsFlyerLib;->setCurrencyCode(Ljava/lang/String;)V

    .line 23
    return-void
.end method
