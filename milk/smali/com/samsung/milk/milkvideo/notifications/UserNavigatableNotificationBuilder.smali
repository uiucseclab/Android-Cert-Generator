.class public abstract Lcom/samsung/milk/milkvideo/notifications/UserNavigatableNotificationBuilder;
.super Lcom/samsung/milk/milkvideo/notifications/GeneralIconNotificationBuilder;
.source "UserNavigatableNotificationBuilder.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;Lcom/squareup/picasso/Picasso;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "picasso"    # Lcom/squareup/picasso/Picasso;

    .prologue
    .line 14
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/milk/milkvideo/notifications/GeneralIconNotificationBuilder;-><init>(Landroid/content/Context;Landroid/os/Bundle;Lcom/squareup/picasso/Picasso;)V

    .line 15
    return-void
.end method


# virtual methods
.method protected getPendingIntent()Landroid/app/PendingIntent;
    .locals 8

    .prologue
    .line 18
    new-instance v3, Lcom/google/gson/JsonParser;

    invoke-direct {v3}, Lcom/google/gson/JsonParser;-><init>()V

    iget-object v4, p0, Lcom/samsung/milk/milkvideo/notifications/UserNavigatableNotificationBuilder;->extras:Landroid/os/Bundle;

    const-string v5, "data"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    .line 19
    .local v0, "data":Lcom/google/gson/JsonElement;
    invoke-virtual {p0, v0}, Lcom/samsung/milk/milkvideo/notifications/UserNavigatableNotificationBuilder;->getUserUuidFromData(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v2

    .line 20
    .local v2, "userUuid":Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/milk/milkvideo/notifications/UserNavigatableNotificationBuilder;->context:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/samsung/milk/milkvideo/activity/ProfileActivity;->getIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 21
    .local v1, "nextIntent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 22
    iget-object v3, p0, Lcom/samsung/milk/milkvideo/notifications/UserNavigatableNotificationBuilder;->context:Landroid/content/Context;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide v6, 0x41dfffffffc00000L    # 2.147483647E9

    mul-double/2addr v4, v6

    double-to-int v4, v4

    const/high16 v5, 0x8000000

    invoke-static {v3, v4, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    return-object v3
.end method

.method protected abstract getUserUuidFromData(Lcom/google/gson/JsonElement;)Ljava/lang/String;
.end method
