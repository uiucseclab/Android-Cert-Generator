.class public Lcom/samsung/milk/milkvideo/notifications/GeneralNotificationBuilder;
.super Lcom/samsung/milk/milkvideo/notifications/NotificationBuilder;
.source "GeneralNotificationBuilder.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Lcom/samsung/milk/milkvideo/notifications/NotificationBuilder;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 12
    return-void
.end method


# virtual methods
.method protected getPendingIntent()Landroid/app/PendingIntent;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 16
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/notifications/GeneralNotificationBuilder;->context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/notifications/GeneralNotificationBuilder;->context:Landroid/content/Context;

    const-class v3, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v0, v4, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method
