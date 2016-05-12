.class public Lcom/samsung/milk/milkvideo/receiver/NetworkChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetworkChangeReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/milk/milkvideo/receiver/NetworkChangeReceiver$NetworkState;
    }
.end annotation


# instance fields
.field eventBus:Lcom/squareup/otto/Bus;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private networkState:Lcom/samsung/milk/milkvideo/receiver/NetworkChangeReceiver$NetworkState;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 22
    sget-object v0, Lcom/samsung/milk/milkvideo/receiver/NetworkChangeReceiver$NetworkState;->UNKNOWN:Lcom/samsung/milk/milkvideo/receiver/NetworkChangeReceiver$NetworkState;

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/receiver/NetworkChangeReceiver;->networkState:Lcom/samsung/milk/milkvideo/receiver/NetworkChangeReceiver$NetworkState;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 26
    invoke-static {}, Lcom/samsung/milk/milkvideo/NachosApplication;->getInstance()Lcom/samsung/milk/milkvideo/NachosApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/milk/milkvideo/NachosApplication;->inject(Ljava/lang/Object;)V

    .line 28
    invoke-static {p1}, Lcom/samsung/milk/milkvideo/utils/NetworkUtils;->isOnline(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 29
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/receiver/NetworkChangeReceiver;->networkState:Lcom/samsung/milk/milkvideo/receiver/NetworkChangeReceiver$NetworkState;

    sget-object v1, Lcom/samsung/milk/milkvideo/receiver/NetworkChangeReceiver$NetworkState;->OFFLINE:Lcom/samsung/milk/milkvideo/receiver/NetworkChangeReceiver$NetworkState;

    if-ne v0, v1, :cond_0

    .line 30
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/receiver/NetworkChangeReceiver;->eventBus:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/samsung/milk/milkvideo/events/ConnectivityChangeEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/samsung/milk/milkvideo/events/ConnectivityChangeEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 32
    :cond_0
    sget-object v0, Lcom/samsung/milk/milkvideo/receiver/NetworkChangeReceiver$NetworkState;->ONLINE:Lcom/samsung/milk/milkvideo/receiver/NetworkChangeReceiver$NetworkState;

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/receiver/NetworkChangeReceiver;->networkState:Lcom/samsung/milk/milkvideo/receiver/NetworkChangeReceiver$NetworkState;

    .line 39
    :goto_0
    return-void

    .line 34
    :cond_1
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/receiver/NetworkChangeReceiver;->networkState:Lcom/samsung/milk/milkvideo/receiver/NetworkChangeReceiver$NetworkState;

    sget-object v1, Lcom/samsung/milk/milkvideo/receiver/NetworkChangeReceiver$NetworkState;->ONLINE:Lcom/samsung/milk/milkvideo/receiver/NetworkChangeReceiver$NetworkState;

    if-ne v0, v1, :cond_2

    .line 35
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/receiver/NetworkChangeReceiver;->eventBus:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/samsung/milk/milkvideo/events/ConnectivityChangeEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/samsung/milk/milkvideo/events/ConnectivityChangeEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 37
    :cond_2
    sget-object v0, Lcom/samsung/milk/milkvideo/receiver/NetworkChangeReceiver$NetworkState;->OFFLINE:Lcom/samsung/milk/milkvideo/receiver/NetworkChangeReceiver$NetworkState;

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/receiver/NetworkChangeReceiver;->networkState:Lcom/samsung/milk/milkvideo/receiver/NetworkChangeReceiver$NetworkState;

    goto :goto_0
.end method
