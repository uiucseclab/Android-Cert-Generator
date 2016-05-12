.class Lcom/squareup/picasso/RemoteViewsAction$NotificationAction;
.super Lcom/squareup/picasso/RemoteViewsAction;
.source "RemoteViewsAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/picasso/RemoteViewsAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NotificationAction"
.end annotation


# instance fields
.field private final notification:Landroid/app/Notification;

.field private final notificationId:I


# direct methods
.method constructor <init>(Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/Request;Landroid/widget/RemoteViews;IILandroid/app/Notification;ZILjava/lang/String;Ljava/lang/Object;)V
    .locals 9
    .param p1, "picasso"    # Lcom/squareup/picasso/Picasso;
    .param p2, "data"    # Lcom/squareup/picasso/Request;
    .param p3, "remoteViews"    # Landroid/widget/RemoteViews;
    .param p4, "viewId"    # I
    .param p5, "notificationId"    # I
    .param p6, "notification"    # Landroid/app/Notification;
    .param p7, "skipCache"    # Z
    .param p8, "errorResId"    # I
    .param p9, "key"    # Ljava/lang/String;
    .param p10, "tag"    # Ljava/lang/Object;

    .prologue
    .line 110
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move/from16 v5, p8

    move/from16 v6, p7

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    invoke-direct/range {v0 .. v8}, Lcom/squareup/picasso/RemoteViewsAction;-><init>(Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/Request;Landroid/widget/RemoteViews;IIZLjava/lang/String;Ljava/lang/Object;)V

    .line 111
    iput p5, p0, Lcom/squareup/picasso/RemoteViewsAction$NotificationAction;->notificationId:I

    .line 112
    iput-object p6, p0, Lcom/squareup/picasso/RemoteViewsAction$NotificationAction;->notification:Landroid/app/Notification;

    .line 113
    return-void
.end method


# virtual methods
.method bridge synthetic getTarget()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 103
    invoke-super {p0}, Lcom/squareup/picasso/RemoteViewsAction;->getTarget()Lcom/squareup/picasso/RemoteViewsAction$RemoteViewsTarget;

    move-result-object v0

    return-object v0
.end method

.method update()V
    .locals 3

    .prologue
    .line 116
    iget-object v1, p0, Lcom/squareup/picasso/RemoteViewsAction$NotificationAction;->picasso:Lcom/squareup/picasso/Picasso;

    iget-object v1, v1, Lcom/squareup/picasso/Picasso;->context:Landroid/content/Context;

    const-string v2, "notification"

    invoke-static {v1, v2}, Lcom/squareup/picasso/Utils;->getService(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 117
    .local v0, "manager":Landroid/app/NotificationManager;
    iget v1, p0, Lcom/squareup/picasso/RemoteViewsAction$NotificationAction;->notificationId:I

    iget-object v2, p0, Lcom/squareup/picasso/RemoteViewsAction$NotificationAction;->notification:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 118
    return-void
.end method
