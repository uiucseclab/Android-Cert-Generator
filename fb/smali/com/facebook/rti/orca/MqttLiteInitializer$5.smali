.class Lcom/facebook/rti/orca/MqttLiteInitializer$5;
.super Ljava/lang/Object;
.source "switch_to_full_fb"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/facebook/rti/orca/MqttLiteInitializer;


# direct methods
.method constructor <init>(Lcom/facebook/rti/orca/MqttLiteInitializer;Z)V
    .locals 0

    .prologue
    .line 266
    iput-object p1, p0, Lcom/facebook/rti/orca/MqttLiteInitializer$5;->b:Lcom/facebook/rti/orca/MqttLiteInitializer;

    iput-boolean p2, p0, Lcom/facebook/rti/orca/MqttLiteInitializer$5;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 269
    iget-boolean v0, p0, Lcom/facebook/rti/orca/MqttLiteInitializer$5;->a:Z

    if-eqz v0, :cond_1

    .line 270
    iget-object v0, p0, Lcom/facebook/rti/orca/MqttLiteInitializer$5;->b:Lcom/facebook/rti/orca/MqttLiteInitializer;

    iget-object v0, v0, Lcom/facebook/rti/orca/MqttLiteInitializer;->f:Landroid/content/Context;

    const-class v3, Lcom/facebook/rti/push/service/idsharing/FbnsSharingStateReceiver;

    iget-boolean v4, p0, Lcom/facebook/rti/orca/MqttLiteInitializer$5;->a:Z

    invoke-static {v0, v3, v4}, Lcom/facebook/rti/orca/MqttLiteQEUtil;->c(Landroid/content/Context;Ljava/lang/Class;Z)V

    .line 274
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 316
    :cond_0
    :goto_0
    return-void

    .line 279
    :cond_1
    iget-object v0, p0, Lcom/facebook/rti/orca/MqttLiteInitializer$5;->b:Lcom/facebook/rti/orca/MqttLiteInitializer;

    iget-object v0, v0, Lcom/facebook/rti/orca/MqttLiteInitializer;->f:Landroid/content/Context;

    const-class v3, Lcom/facebook/rti/orca/UpdateQeBroadcastReceiver;

    iget-boolean v4, p0, Lcom/facebook/rti/orca/MqttLiteInitializer$5;->a:Z

    invoke-static {v0, v3, v4}, Lcom/facebook/rti/orca/MqttLiteQEUtil;->c(Landroid/content/Context;Ljava/lang/Class;Z)V

    .line 283
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/facebook/rti/orca/MqttLiteInitializer$5;->b:Lcom/facebook/rti/orca/MqttLiteInitializer;

    iget-object v0, v0, Lcom/facebook/rti/orca/MqttLiteInitializer;->f:Landroid/content/Context;

    const-class v3, Lcom/facebook/rti/orca/UserPresentBroadcastReceiver;

    iget-boolean v4, p0, Lcom/facebook/rti/orca/MqttLiteInitializer$5;->a:Z

    invoke-static {v0, v3, v4}, Lcom/facebook/rti/orca/MqttLiteQEUtil;->c(Landroid/content/Context;Ljava/lang/Class;Z)V

    .line 291
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 296
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xf

    if-lt v0, v3, :cond_2

    move v0, v1

    .line 300
    :goto_1
    iget-object v3, p0, Lcom/facebook/rti/orca/MqttLiteInitializer$5;->b:Lcom/facebook/rti/orca/MqttLiteInitializer;

    iget-object v4, v3, Lcom/facebook/rti/orca/MqttLiteInitializer;->f:Landroid/content/Context;

    const-class v5, Lcom/facebook/rti/orca/NetworkBroadcastReceiver;

    iget-boolean v3, p0, Lcom/facebook/rti/orca/MqttLiteInitializer$5;->a:Z

    if-eqz v3, :cond_3

    if-nez v0, :cond_3

    move v3, v1

    :goto_2
    invoke-static {v4, v5, v3}, Lcom/facebook/rti/orca/MqttLiteQEUtil;->c(Landroid/content/Context;Ljava/lang/Class;Z)V

    .line 305
    iget-object v3, p0, Lcom/facebook/rti/orca/MqttLiteInitializer$5;->b:Lcom/facebook/rti/orca/MqttLiteInitializer;

    iget-object v3, v3, Lcom/facebook/rti/orca/MqttLiteInitializer;->f:Landroid/content/Context;

    const-class v4, Lcom/facebook/rti/orca/NetworkChangeImmediateBroadcastReceiver;

    iget-boolean v5, p0, Lcom/facebook/rti/orca/MqttLiteInitializer$5;->a:Z

    if-eqz v5, :cond_4

    if-eqz v0, :cond_4

    move v0, v1

    :goto_3
    invoke-static {v3, v4, v0}, Lcom/facebook/rti/orca/MqttLiteQEUtil;->c(Landroid/content/Context;Ljava/lang/Class;Z)V

    .line 312
    iget-object v0, p0, Lcom/facebook/rti/orca/MqttLiteInitializer$5;->b:Lcom/facebook/rti/orca/MqttLiteInitializer;

    iget-object v0, v0, Lcom/facebook/rti/orca/MqttLiteInitializer;->f:Landroid/content/Context;

    const-class v3, Lcom/facebook/rti/orca/KeepAliveBroadcastReceiver;

    iget-boolean v4, p0, Lcom/facebook/rti/orca/MqttLiteInitializer$5;->a:Z

    if-eqz v4, :cond_5

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v5, "4.4.2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 22
    :goto_4
    if-eqz v1, :cond_6

    .line 23
    invoke-static {v0}, Lcom/facebook/rti/push/service/FbnsServiceKeepAlive;->a(Landroid/content/Context;)V

    .line 27
    :goto_5
    invoke-static {v0, v3, v1}, Lcom/facebook/rti/orca/MqttLiteQEUtil;->c(Landroid/content/Context;Ljava/lang/Class;Z)V

    .line 28
    goto :goto_0

    :cond_2
    move v0, v2

    .line 296
    goto :goto_1

    :cond_3
    move v3, v2

    .line 300
    goto :goto_2

    :cond_4
    move v0, v2

    .line 305
    goto :goto_3

    :cond_5
    move v1, v2

    .line 312
    goto :goto_4

    .line 25
    :cond_6
    invoke-static {v0}, Lcom/facebook/rti/push/service/FbnsServiceKeepAlive;->b(Landroid/content/Context;)V

    goto :goto_5
.end method
