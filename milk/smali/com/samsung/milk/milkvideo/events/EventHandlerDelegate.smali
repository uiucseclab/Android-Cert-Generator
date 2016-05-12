.class public Lcom/samsung/milk/milkvideo/events/EventHandlerDelegate;
.super Ljava/lang/Object;
.source "EventHandlerDelegate.java"


# instance fields
.field private final activity:Landroid/app/Activity;

.field private messageNotifier:Lcom/samsung/milk/milkvideo/views/MessageNotifier;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/samsung/milk/milkvideo/views/MessageNotifier;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "messageNotifier"    # Lcom/samsung/milk/milkvideo/views/MessageNotifier;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/events/EventHandlerDelegate;->activity:Landroid/app/Activity;

    .line 15
    iput-object p2, p0, Lcom/samsung/milk/milkvideo/events/EventHandlerDelegate;->messageNotifier:Lcom/samsung/milk/milkvideo/views/MessageNotifier;

    .line 16
    return-void
.end method


# virtual methods
.method public onConnectivityChange(Lcom/samsung/milk/milkvideo/events/ConnectivityChangeEvent;)V
    .locals 5
    .param p1, "event"    # Lcom/samsung/milk/milkvideo/events/ConnectivityChangeEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 20
    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/events/ConnectivityChangeEvent;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 21
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/events/EventHandlerDelegate;->messageNotifier:Lcom/samsung/milk/milkvideo/views/MessageNotifier;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/events/EventHandlerDelegate;->activity:Landroid/app/Activity;

    const v2, 0x7f0800b8

    const/4 v3, 0x0

    sget-object v4, Lcom/samsung/milk/milkvideo/views/MessageNotifier$Type;->GENERIC_ERROR:Lcom/samsung/milk/milkvideo/views/MessageNotifier$Type;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/milk/milkvideo/views/MessageNotifier;->showNotification(Landroid/app/Activity;IZLcom/samsung/milk/milkvideo/views/MessageNotifier$Type;)V

    .line 25
    :goto_0
    return-void

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/events/EventHandlerDelegate;->messageNotifier:Lcom/samsung/milk/milkvideo/views/MessageNotifier;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/events/EventHandlerDelegate;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/samsung/milk/milkvideo/views/MessageNotifier;->hideNotification(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public onMessageNotification(Lcom/samsung/milk/milkvideo/events/MessageNotificationEvent;)V
    .locals 5
    .param p1, "event"    # Lcom/samsung/milk/milkvideo/events/MessageNotificationEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/events/EventHandlerDelegate;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/samsung/milk/milkvideo/utils/NetworkUtils;->isOnline(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/events/EventHandlerDelegate;->messageNotifier:Lcom/samsung/milk/milkvideo/views/MessageNotifier;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/events/EventHandlerDelegate;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/events/MessageNotificationEvent;->getMessage()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/events/MessageNotificationEvent;->getType()Lcom/samsung/milk/milkvideo/views/MessageNotifier$Type;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/milk/milkvideo/views/MessageNotifier;->showNotification(Landroid/app/Activity;IZLcom/samsung/milk/milkvideo/views/MessageNotifier$Type;)V

    .line 32
    :cond_0
    return-void
.end method
