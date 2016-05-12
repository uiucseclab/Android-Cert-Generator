.class public Lcom/samsung/milk/milkvideo/analytics/GoogleAnalyticsTracker;
.super Ljava/lang/Object;
.source "GoogleAnalyticsTracker.java"


# instance fields
.field private wrapper:Lcom/samsung/milk/milkvideo/analytics/GoogleAnalyticsWrapper;


# direct methods
.method public constructor <init>(Lcom/samsung/milk/milkvideo/analytics/GoogleAnalyticsWrapper;)V
    .locals 0
    .param p1, "wrapper"    # Lcom/samsung/milk/milkvideo/analytics/GoogleAnalyticsWrapper;

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/analytics/GoogleAnalyticsTracker;->wrapper:Lcom/samsung/milk/milkvideo/analytics/GoogleAnalyticsWrapper;

    .line 9
    return-void
.end method


# virtual methods
.method public sendAppInFocusEvent()V
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/analytics/GoogleAnalyticsTracker;->wrapper:Lcom/samsung/milk/milkvideo/analytics/GoogleAnalyticsWrapper;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/analytics/GoogleAnalyticsWrapper;->sendAppInFocusEvent()V

    .line 13
    return-void
.end method

.method public sendUserEngagedEvent()V
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/analytics/GoogleAnalyticsTracker;->wrapper:Lcom/samsung/milk/milkvideo/analytics/GoogleAnalyticsWrapper;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/analytics/GoogleAnalyticsWrapper;->sendUserEngagementEvent()V

    .line 17
    return-void
.end method
