.class public Lcom/samsung/milk/milkvideo/notifications/GcmIntentService;
.super Landroid/app/IntentService;
.source "GcmIntentService.java"


# instance fields
.field gcm:Lcom/samsung/milk/milkvideo/notifications/GcmProvider;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field loginState:Lcom/samsung/milk/milkvideo/services/LoginState;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field notificationFactory:Lcom/samsung/milk/milkvideo/notifications/NotificationFactory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field notificationManager:Landroid/app/NotificationManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field previousNotifications:Lcom/samsung/milk/milkvideo/notifications/PreviousNotifications;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field settings:Lcom/samsung/milk/milkvideo/services/NachosSettings;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    const-string v0, "GcmIntentService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method private showNotification(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 89
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/notifications/GcmIntentService;->previousNotifications:Lcom/samsung/milk/milkvideo/notifications/PreviousNotifications;

    invoke-virtual {v1, p1}, Lcom/samsung/milk/milkvideo/notifications/PreviousNotifications;->hasPostedNotificationAlready(Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 90
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/notifications/GcmIntentService;->notificationFactory:Lcom/samsung/milk/milkvideo/notifications/NotificationFactory;

    invoke-virtual {v1, p1}, Lcom/samsung/milk/milkvideo/notifications/NotificationFactory;->buildNotification(Landroid/os/Bundle;)Landroid/app/Notification;

    move-result-object v0

    .line 91
    .local v0, "notification":Landroid/app/Notification;
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/notifications/GcmIntentService;->notificationManager:Landroid/app/NotificationManager;

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/notifications/GcmIntentService;->notificationFactory:Lcom/samsung/milk/milkvideo/notifications/NotificationFactory;

    invoke-virtual {v2}, Lcom/samsung/milk/milkvideo/notifications/NotificationFactory;->getNextNotificationId()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 93
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/notifications/GcmIntentService;->previousNotifications:Lcom/samsung/milk/milkvideo/notifications/PreviousNotifications;

    invoke-virtual {v1, p1}, Lcom/samsung/milk/milkvideo/notifications/PreviousNotifications;->noteNotificationPosted(Landroid/os/Bundle;)V

    .line 95
    .end local v0    # "notification":Landroid/app/Notification;
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .prologue
    .line 53
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 54
    invoke-static {}, Lcom/samsung/milk/milkvideo/NachosApplication;->getInstance()Lcom/samsung/milk/milkvideo/NachosApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/milk/milkvideo/NachosApplication;->inject(Ljava/lang/Object;)V

    .line 55
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 59
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/notifications/GcmIntentService;->settings:Lcom/samsung/milk/milkvideo/services/NachosSettings;

    invoke-virtual {v2}, Lcom/samsung/milk/milkvideo/services/NachosSettings;->areNotificationsEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/notifications/GcmIntentService;->loginState:Lcom/samsung/milk/milkvideo/services/LoginState;

    invoke-virtual {v2}, Lcom/samsung/milk/milkvideo/services/LoginState;->isHardLoggedIn()Z

    move-result v2

    if-nez v2, :cond_1

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 64
    .local v0, "extras":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/notifications/GcmIntentService;->gcm:Lcom/samsung/milk/milkvideo/notifications/GcmProvider;

    invoke-interface {v2, p1}, Lcom/samsung/milk/milkvideo/notifications/GcmProvider;->getMessageType(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, "messageType":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 71
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/notifications/GcmIntentService;->gcm:Lcom/samsung/milk/milkvideo/notifications/GcmProvider;

    invoke-interface {v2, v1}, Lcom/samsung/milk/milkvideo/notifications/GcmProvider;->isErrorMessage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 72
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GCM send error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    :cond_2
    :goto_1
    invoke-static {p1}, Lcom/samsung/milk/milkvideo/receiver/GcmBroadcastReceiver;->completeWakefulIntent(Landroid/content/Intent;)Z

    goto :goto_0

    .line 73
    :cond_3
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/notifications/GcmIntentService;->gcm:Lcom/samsung/milk/milkvideo/notifications/GcmProvider;

    invoke-interface {v2, v1}, Lcom/samsung/milk/milkvideo/notifications/GcmProvider;->isDeletedMessage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GCM deleted messages: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 75
    :cond_4
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/notifications/GcmIntentService;->gcm:Lcom/samsung/milk/milkvideo/notifications/GcmProvider;

    invoke-interface {v2, v1}, Lcom/samsung/milk/milkvideo/notifications/GcmProvider;->isValidMessage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 77
    invoke-direct {p0, v0}, Lcom/samsung/milk/milkvideo/notifications/GcmIntentService;->showNotification(Landroid/os/Bundle;)V

    .line 78
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method
