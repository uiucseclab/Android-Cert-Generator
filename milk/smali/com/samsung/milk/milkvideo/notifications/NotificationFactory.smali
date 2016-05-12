.class public Lcom/samsung/milk/milkvideo/notifications/NotificationFactory;
.super Ljava/lang/Object;
.source "NotificationFactory.java"


# instance fields
.field private context:Landroid/content/Context;

.field picasso:Lcom/squareup/picasso/Picasso;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/squareup/picasso/Picasso;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "picasso"    # Lcom/squareup/picasso/Picasso;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/notifications/NotificationFactory;->context:Landroid/content/Context;

    .line 17
    iput-object p2, p0, Lcom/samsung/milk/milkvideo/notifications/NotificationFactory;->picasso:Lcom/squareup/picasso/Picasso;

    .line 18
    return-void
.end method

.method private getGCMPreferences()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 54
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/notifications/NotificationFactory;->context:Landroid/content/Context;

    const-string v1, "nachos_prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public buildNotification(Landroid/os/Bundle;)Landroid/app/Notification;
    .locals 5
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 21
    const-string v3, "type"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 23
    .local v2, "type":Ljava/lang/String;
    const-string v3, "followed"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 24
    new-instance v1, Lcom/samsung/milk/milkvideo/notifications/FollowedNotificationBuilder;

    iget-object v3, p0, Lcom/samsung/milk/milkvideo/notifications/NotificationFactory;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/milk/milkvideo/notifications/NotificationFactory;->picasso:Lcom/squareup/picasso/Picasso;

    invoke-direct {v1, v3, p1, v4}, Lcom/samsung/milk/milkvideo/notifications/FollowedNotificationBuilder;-><init>(Landroid/content/Context;Landroid/os/Bundle;Lcom/squareup/picasso/Picasso;)V

    .line 40
    .local v1, "notificationBuilder":Lcom/samsung/milk/milkvideo/notifications/NotificationBuilder;
    :goto_0
    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/notifications/NotificationBuilder;->get()Landroid/app/Notification;

    move-result-object v3

    return-object v3

    .line 25
    .end local v1    # "notificationBuilder":Lcom/samsung/milk/milkvideo/notifications/NotificationBuilder;
    :cond_0
    const-string v3, "facebook_sign_up"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 26
    new-instance v1, Lcom/samsung/milk/milkvideo/notifications/FacebookSignupNotificationBuilder;

    iget-object v3, p0, Lcom/samsung/milk/milkvideo/notifications/NotificationFactory;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/milk/milkvideo/notifications/NotificationFactory;->picasso:Lcom/squareup/picasso/Picasso;

    invoke-direct {v1, v3, p1, v4}, Lcom/samsung/milk/milkvideo/notifications/FacebookSignupNotificationBuilder;-><init>(Landroid/content/Context;Landroid/os/Bundle;Lcom/squareup/picasso/Picasso;)V

    .restart local v1    # "notificationBuilder":Lcom/samsung/milk/milkvideo/notifications/NotificationBuilder;
    goto :goto_0

    .line 27
    .end local v1    # "notificationBuilder":Lcom/samsung/milk/milkvideo/notifications/NotificationBuilder;
    :cond_1
    const-string v3, "i_should_follow"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 28
    new-instance v1, Lcom/samsung/milk/milkvideo/notifications/IShouldFollowNotificationBuilder;

    iget-object v3, p0, Lcom/samsung/milk/milkvideo/notifications/NotificationFactory;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/milk/milkvideo/notifications/NotificationFactory;->picasso:Lcom/squareup/picasso/Picasso;

    invoke-direct {v1, v3, p1, v4}, Lcom/samsung/milk/milkvideo/notifications/IShouldFollowNotificationBuilder;-><init>(Landroid/content/Context;Landroid/os/Bundle;Lcom/squareup/picasso/Picasso;)V

    .restart local v1    # "notificationBuilder":Lcom/samsung/milk/milkvideo/notifications/NotificationBuilder;
    goto :goto_0

    .line 29
    .end local v1    # "notificationBuilder":Lcom/samsung/milk/milkvideo/notifications/NotificationBuilder;
    :cond_2
    const-string v3, "i_should_watch"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 30
    new-instance v1, Lcom/samsung/milk/milkvideo/notifications/IShouldWatchNotificationBuilder;

    iget-object v3, p0, Lcom/samsung/milk/milkvideo/notifications/NotificationFactory;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/milk/milkvideo/notifications/NotificationFactory;->picasso:Lcom/squareup/picasso/Picasso;

    invoke-direct {v1, v3, p1, v4}, Lcom/samsung/milk/milkvideo/notifications/IShouldWatchNotificationBuilder;-><init>(Landroid/content/Context;Landroid/os/Bundle;Lcom/squareup/picasso/Picasso;)V

    .restart local v1    # "notificationBuilder":Lcom/samsung/milk/milkvideo/notifications/NotificationBuilder;
    goto :goto_0

    .line 32
    .end local v1    # "notificationBuilder":Lcom/samsung/milk/milkvideo/notifications/NotificationBuilder;
    :cond_3
    const-string v3, "icon_url"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, "icon_url":Ljava/lang/String;
    if-eqz v0, :cond_4

    const-string v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 34
    :cond_4
    new-instance v1, Lcom/samsung/milk/milkvideo/notifications/GeneralNotificationBuilder;

    iget-object v3, p0, Lcom/samsung/milk/milkvideo/notifications/NotificationFactory;->context:Landroid/content/Context;

    invoke-direct {v1, v3, p1}, Lcom/samsung/milk/milkvideo/notifications/GeneralNotificationBuilder;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    .restart local v1    # "notificationBuilder":Lcom/samsung/milk/milkvideo/notifications/NotificationBuilder;
    goto :goto_0

    .line 36
    .end local v1    # "notificationBuilder":Lcom/samsung/milk/milkvideo/notifications/NotificationBuilder;
    :cond_5
    new-instance v1, Lcom/samsung/milk/milkvideo/notifications/GeneralIconNotificationBuilder;

    iget-object v3, p0, Lcom/samsung/milk/milkvideo/notifications/NotificationFactory;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/milk/milkvideo/notifications/NotificationFactory;->picasso:Lcom/squareup/picasso/Picasso;

    invoke-direct {v1, v3, p1, v4}, Lcom/samsung/milk/milkvideo/notifications/GeneralIconNotificationBuilder;-><init>(Landroid/content/Context;Landroid/os/Bundle;Lcom/squareup/picasso/Picasso;)V

    .restart local v1    # "notificationBuilder":Lcom/samsung/milk/milkvideo/notifications/NotificationBuilder;
    goto :goto_0
.end method

.method protected declared-synchronized getNextNotificationId()I
    .locals 4

    .prologue
    .line 44
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/notifications/NotificationFactory;->getGCMPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 45
    .local v0, "gcmPreferences":Landroid/content/SharedPreferences;
    const-string v2, "current_notif_id"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 46
    .local v1, "id":I
    add-int/lit8 v1, v1, 0x1

    .line 47
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "current_notif_id"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    monitor-exit p0

    return v1

    .line 44
    .end local v0    # "gcmPreferences":Landroid/content/SharedPreferences;
    .end local v1    # "id":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
