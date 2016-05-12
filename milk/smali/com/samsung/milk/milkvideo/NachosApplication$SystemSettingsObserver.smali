.class Lcom/samsung/milk/milkvideo/NachosApplication$SystemSettingsObserver;
.super Landroid/database/ContentObserver;
.source "NachosApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/milk/milkvideo/NachosApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SystemSettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/milk/milkvideo/NachosApplication;


# direct methods
.method public constructor <init>(Lcom/samsung/milk/milkvideo/NachosApplication;Landroid/os/Handler;)V
    .locals 0
    .param p2, "h"    # Landroid/os/Handler;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/NachosApplication$SystemSettingsObserver;->this$0:Lcom/samsung/milk/milkvideo/NachosApplication;

    .line 168
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 169
    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    .line 178
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 180
    :try_start_0
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/NachosApplication$SystemSettingsObserver;->this$0:Lcom/samsung/milk/milkvideo/NachosApplication;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/NachosApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accelerometer_rotation"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    .line 181
    .local v0, "rotationValue":I
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/NachosApplication$SystemSettingsObserver;->this$0:Lcom/samsung/milk/milkvideo/NachosApplication;

    iget-object v2, v1, Lcom/samsung/milk/milkvideo/NachosApplication;->eventBus:Lcom/squareup/otto/Bus;

    new-instance v3, Lcom/samsung/milk/milkvideo/events/ScreenOrientationLockChangeEvent;

    sget v1, Lcom/samsung/milk/milkvideo/utils/Constants;->ORIENTATION_LOCKED:I

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-direct {v3, v1}, Lcom/samsung/milk/milkvideo/events/ScreenOrientationLockChangeEvent;-><init>(Z)V

    invoke-virtual {v2, v3}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    .end local v0    # "rotationValue":I
    :goto_1
    return-void

    .line 181
    .restart local v0    # "rotationValue":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 182
    .end local v0    # "rotationValue":I
    :catch_0
    move-exception v1

    goto :goto_1
.end method
