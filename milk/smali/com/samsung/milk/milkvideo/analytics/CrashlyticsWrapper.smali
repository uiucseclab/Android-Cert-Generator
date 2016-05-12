.class public Lcom/samsung/milk/milkvideo/analytics/CrashlyticsWrapper;
.super Ljava/lang/Object;
.source "CrashlyticsWrapper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public logExceptionAndMessage(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "priority"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 16
    invoke-static {p1, p2, p3}, Lcom/crashlytics/android/Crashlytics;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-static {p4}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    .line 18
    return-void
.end method

.method public setUser(Lcom/samsung/milk/milkvideo/models/User;)V
    .locals 1
    .param p1, "user"    # Lcom/samsung/milk/milkvideo/models/User;

    .prologue
    .line 21
    if-nez p1, :cond_1

    .line 33
    :cond_0
    :goto_0
    return-void

    .line 24
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/models/User;->getUuid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/models/User;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 25
    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/models/User;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crashlytics/android/Crashlytics;->setUserIdentifier(Ljava/lang/String;)V

    .line 27
    :cond_2
    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/models/User;->getUsername()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/models/User;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 28
    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/models/User;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crashlytics/android/Crashlytics;->setUserName(Ljava/lang/String;)V

    .line 30
    :cond_3
    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/models/User;->getEmail()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/models/User;->getEmail()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 31
    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/models/User;->getEmail()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crashlytics/android/Crashlytics;->setUserEmail(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startCrashlytics(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 11
    invoke-static {p1}, Lcom/crashlytics/android/Crashlytics;->start(Landroid/content/Context;)V

    .line 12
    const-string v0, "api_endpoint"

    const-string v1, "com.samsung.milk.milkvideo.service.endpoint"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/crashlytics/android/Crashlytics;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    return-void
.end method
