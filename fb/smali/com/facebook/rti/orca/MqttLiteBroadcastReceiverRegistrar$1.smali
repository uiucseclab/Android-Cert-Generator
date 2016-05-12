.class Lcom/facebook/rti/orca/MqttLiteBroadcastReceiverRegistrar$1;
.super Ljava/lang/Object;
.source "switch_to_dialtone"

# interfaces
.implements Lcom/facebook/content/ActionReceiver;


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/facebook/rti/orca/MqttLiteBroadcastReceiverRegistrar;


# direct methods
.method constructor <init>(Lcom/facebook/rti/orca/MqttLiteBroadcastReceiverRegistrar;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/facebook/rti/orca/MqttLiteBroadcastReceiverRegistrar$1;->b:Lcom/facebook/rti/orca/MqttLiteBroadcastReceiverRegistrar;

    iput-object p2, p0, Lcom/facebook/rti/orca/MqttLiteBroadcastReceiverRegistrar$1;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Lcom/facebook/content/BroadcastReceiverLike;)V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/facebook/rti/orca/MqttLiteBroadcastReceiverRegistrar$1;->b:Lcom/facebook/rti/orca/MqttLiteBroadcastReceiverRegistrar;

    iget-object v0, v0, Lcom/facebook/rti/orca/MqttLiteBroadcastReceiverRegistrar;->d:Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;

    invoke-virtual {v0, p2}, Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;->a(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/facebook/rti/mqtt/common/config/ServiceLeaderElectionUtil;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/facebook/rti/orca/MqttLiteBroadcastReceiverRegistrar$1;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 70
    :cond_0
    return-void
.end method
