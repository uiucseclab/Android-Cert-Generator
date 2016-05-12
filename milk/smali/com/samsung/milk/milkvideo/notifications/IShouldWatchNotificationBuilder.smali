.class public Lcom/samsung/milk/milkvideo/notifications/IShouldWatchNotificationBuilder;
.super Lcom/samsung/milk/milkvideo/notifications/GeneralIconNotificationBuilder;
.source "IShouldWatchNotificationBuilder.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;Lcom/squareup/picasso/Picasso;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "picasso"    # Lcom/squareup/picasso/Picasso;

    .prologue
    .line 13
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/milk/milkvideo/notifications/GeneralIconNotificationBuilder;-><init>(Landroid/content/Context;Landroid/os/Bundle;Lcom/squareup/picasso/Picasso;)V

    .line 14
    return-void
.end method


# virtual methods
.method protected getPendingIntent()Landroid/app/PendingIntent;
    .locals 6

    .prologue
    .line 18
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/notifications/IShouldWatchNotificationBuilder;->context:Landroid/content/Context;

    sget-object v2, Lcom/samsung/milk/milkvideo/models/Category;->FOLLOWING:Lcom/samsung/milk/milkvideo/models/Category;

    invoke-virtual {v2}, Lcom/samsung/milk/milkvideo/models/Category;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;->getIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 19
    .local v0, "nextIntent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 20
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/notifications/IShouldWatchNotificationBuilder;->context:Landroid/content/Context;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide v4, 0x41dfffffffc00000L    # 2.147483647E9

    mul-double/2addr v2, v4

    double-to-int v2, v2

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method
