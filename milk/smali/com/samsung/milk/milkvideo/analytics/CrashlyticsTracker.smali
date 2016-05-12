.class public Lcom/samsung/milk/milkvideo/analytics/CrashlyticsTracker;
.super Ljava/lang/Object;
.source "CrashlyticsTracker.java"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private final crashlyticsWrapper:Lcom/samsung/milk/milkvideo/analytics/CrashlyticsWrapper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/milk/milkvideo/analytics/CrashlyticsWrapper;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "crashlyticsWrapper"    # Lcom/samsung/milk/milkvideo/analytics/CrashlyticsWrapper;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p2, p0, Lcom/samsung/milk/milkvideo/analytics/CrashlyticsTracker;->crashlyticsWrapper:Lcom/samsung/milk/milkvideo/analytics/CrashlyticsWrapper;

    .line 17
    invoke-virtual {p2, p1}, Lcom/samsung/milk/milkvideo/analytics/CrashlyticsWrapper;->startCrashlytics(Landroid/content/Context;)V

    .line 18
    const-string v0, "Crashlytics Initialized..."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    return-void
.end method


# virtual methods
.method public logExceptionAndMessage(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "priority"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/analytics/CrashlyticsTracker;->crashlyticsWrapper:Lcom/samsung/milk/milkvideo/analytics/CrashlyticsWrapper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/milk/milkvideo/analytics/CrashlyticsWrapper;->logExceptionAndMessage(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    return-void
.end method

.method public setUser(Lcom/samsung/milk/milkvideo/models/User;)V
    .locals 1
    .param p1, "user"    # Lcom/samsung/milk/milkvideo/models/User;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/analytics/CrashlyticsTracker;->crashlyticsWrapper:Lcom/samsung/milk/milkvideo/analytics/CrashlyticsWrapper;

    invoke-virtual {v0, p1}, Lcom/samsung/milk/milkvideo/analytics/CrashlyticsWrapper;->setUser(Lcom/samsung/milk/milkvideo/models/User;)V

    .line 27
    return-void
.end method
