.class public Lcom/mixpanel/android/mpmetrics/GCMReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GCMReceiver.java"


# instance fields
.field LOGTAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 87
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 88
    const-string v0, "MPGCMReceiver"

    iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/GCMReceiver;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method private handleNotificationIntent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v10, 0x0

    .line 124
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "mp_message"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 126
    .local v5, "message":Ljava/lang/String;
    if-nez v5, :cond_0

    .line 153
    :goto_0
    return-void

    .line 127
    :cond_0
    sget-boolean v0, Lcom/mixpanel/android/mpmetrics/MPConfig;->DEBUG:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/GCMReceiver;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MP GCM notification received: "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 130
    .local v8, "manager":Landroid/content/pm/PackageManager;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    .line 131
    .local v7, "appIntent":Landroid/content/Intent;
    const-string v4, ""

    .line 132
    .local v4, "notificationTitle":Ljava/lang/CharSequence;
    const v3, 0x1080093

    .line 134
    .local v3, "notificationIcon":I
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    .line 135
    .local v6, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v8, v6}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 136
    iget v3, v6, Landroid/content/pm/ApplicationInfo;->icon:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    .end local v6    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x8000000

    invoke-static {v0, v10, v7, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 148
    .local v2, "contentIntent":Landroid/app/PendingIntent;
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_2

    move-object v0, p0

    move-object v1, p1

    .line 149
    invoke-direct/range {v0 .. v5}, Lcom/mixpanel/android/mpmetrics/GCMReceiver;->showNotificationSDKLessThan11(Landroid/content/Context;Landroid/app/PendingIntent;ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    move-object v0, p0

    move-object v1, p1

    .line 151
    invoke-direct/range {v0 .. v5}, Lcom/mixpanel/android/mpmetrics/GCMReceiver;->showNotificationSDK11OrHigher(Landroid/content/Context;Landroid/app/PendingIntent;ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 137
    .end local v2    # "contentIntent":Landroid/app/PendingIntent;
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private handleRegistrationIntent(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 101
    const-string v1, "registration_id"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "registration":Ljava/lang/String;
    const-string v1, "error"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 103
    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/GCMReceiver;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error when registering for GCM: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "error"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    if-eqz v0, :cond_3

    .line 105
    sget-boolean v1, Lcom/mixpanel/android/mpmetrics/MPConfig;->DEBUG:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/GCMReceiver;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Registering GCM ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_2
    new-instance v1, Lcom/mixpanel/android/mpmetrics/GCMReceiver$1;

    invoke-direct {v1, p0, v0}, Lcom/mixpanel/android/mpmetrics/GCMReceiver$1;-><init>(Lcom/mixpanel/android/mpmetrics/GCMReceiver;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->allInstances(Lcom/mixpanel/android/mpmetrics/MixpanelAPI$InstanceProcessor;)V

    goto :goto_0

    .line 112
    :cond_3
    const-string v1, "unregistered"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 113
    sget-boolean v1, Lcom/mixpanel/android/mpmetrics/MPConfig;->DEBUG:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/GCMReceiver;->LOGTAG:Ljava/lang/String;

    const-string v2, "Unregistering from GCM"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_4
    new-instance v1, Lcom/mixpanel/android/mpmetrics/GCMReceiver$2;

    invoke-direct {v1, p0}, Lcom/mixpanel/android/mpmetrics/GCMReceiver$2;-><init>(Lcom/mixpanel/android/mpmetrics/GCMReceiver;)V

    invoke-static {v1}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->allInstances(Lcom/mixpanel/android/mpmetrics/MixpanelAPI$InstanceProcessor;)V

    goto :goto_0
.end method

.method private showNotificationSDK11OrHigher(Landroid/content/Context;Landroid/app/PendingIntent;ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/app/PendingIntent;
    .param p3, "notificationIcon"    # I
    .param p4, "title"    # Ljava/lang/CharSequence;
    .param p5, "message"    # Ljava/lang/CharSequence;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 168
    const-string v3, "notification"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 169
    .local v2, "nm":Landroid/app/NotificationManager;
    new-instance v3, Landroid/app/Notification$Builder;

    invoke-direct {v3, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, p3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, p5}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, p4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, p5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 177
    .local v0, "builder":Landroid/app/Notification$Builder;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-ge v3, v4, :cond_0

    .line 178
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v1

    .line 183
    .local v1, "n":Landroid/app/Notification;
    :goto_0
    iget v3, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v1, Landroid/app/Notification;->flags:I

    .line 184
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 185
    return-void

    .line 180
    .end local v1    # "n":Landroid/app/Notification;
    :cond_0
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .restart local v1    # "n":Landroid/app/Notification;
    goto :goto_0
.end method

.method private showNotificationSDKLessThan11(Landroid/content/Context;Landroid/app/PendingIntent;ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/app/PendingIntent;
    .param p3, "notificationIcon"    # I
    .param p4, "title"    # Ljava/lang/CharSequence;
    .param p5, "message"    # Ljava/lang/CharSequence;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    .line 158
    const-string v2, "notification"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 159
    .local v1, "nm":Landroid/app/NotificationManager;
    new-instance v0, Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, p3, p5, v2, v3}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 160
    .local v0, "n":Landroid/app/Notification;
    iget v2, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v0, Landroid/app/Notification;->flags:I

    .line 161
    invoke-virtual {v0, p1, p4, p5, p2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 162
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 163
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 92
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.google.android.c2dm.intent.REGISTRATION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 94
    invoke-direct {p0, p2}, Lcom/mixpanel/android/mpmetrics/GCMReceiver;->handleRegistrationIntent(Landroid/content/Intent;)V

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    const-string v1, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    invoke-direct {p0, p1, p2}, Lcom/mixpanel/android/mpmetrics/GCMReceiver;->handleNotificationIntent(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method
