.class public abstract Lcom/samsung/milk/milkvideo/notifications/NotificationBuilder;
.super Ljava/lang/Object;
.source "NotificationBuilder.java"


# instance fields
.field protected final context:Landroid/content/Context;

.field protected final extras:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/notifications/NotificationBuilder;->context:Landroid/content/Context;

    .line 16
    iput-object p2, p0, Lcom/samsung/milk/milkvideo/notifications/NotificationBuilder;->extras:Landroid/os/Bundle;

    .line 17
    return-void
.end method


# virtual methods
.method protected decorateNotification(Landroid/support/v4/app/NotificationCompat$Builder;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 0
    .param p1, "builder"    # Landroid/support/v4/app/NotificationCompat$Builder;

    .prologue
    .line 45
    return-object p1
.end method

.method public get()Landroid/app/Notification;
    .locals 6

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/notifications/NotificationBuilder;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v1

    .line 22
    .local v1, "contentIntent":Landroid/app/PendingIntent;
    iget-object v4, p0, Lcom/samsung/milk/milkvideo/notifications/NotificationBuilder;->extras:Landroid/os/Bundle;

    const-string v5, "title"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 23
    .local v3, "title":Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/milk/milkvideo/notifications/NotificationBuilder;->extras:Landroid/os/Bundle;

    const-string v5, "subtitle"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 25
    .local v2, "subtitle":Ljava/lang/String;
    new-instance v4, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v5, p0, Lcom/samsung/milk/milkvideo/notifications/NotificationBuilder;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f020096

    invoke-virtual {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    new-instance v5, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct {v5}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    invoke-virtual {v5, v2}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 34
    .local v0, "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    invoke-virtual {p0, v0}, Lcom/samsung/milk/milkvideo/notifications/NotificationBuilder;->decorateNotification(Landroid/support/v4/app/NotificationCompat$Builder;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 36
    const/4 v4, -0x1

    invoke-virtual {v0, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 37
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 39
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    return-object v4
.end method

.method protected abstract getPendingIntent()Landroid/app/PendingIntent;
.end method
