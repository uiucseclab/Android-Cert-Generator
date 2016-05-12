.class Lcom/facebook/rti/orca/MqttLiteBroadcastReceiverRegistrar$3;
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
    .line 85
    iput-object p1, p0, Lcom/facebook/rti/orca/MqttLiteBroadcastReceiverRegistrar$3;->b:Lcom/facebook/rti/orca/MqttLiteBroadcastReceiverRegistrar;

    iput-object p2, p0, Lcom/facebook/rti/orca/MqttLiteBroadcastReceiverRegistrar$3;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Lcom/facebook/content/BroadcastReceiverLike;)V
    .locals 2

    .prologue
    .line 89
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 90
    iget-object v1, p0, Lcom/facebook/rti/orca/MqttLiteBroadcastReceiverRegistrar$3;->b:Lcom/facebook/rti/orca/MqttLiteBroadcastReceiverRegistrar;

    iget-object v1, v1, Lcom/facebook/rti/orca/MqttLiteBroadcastReceiverRegistrar;->d:Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;

    invoke-virtual {v1, v0}, Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/facebook/rti/orca/MqttLiteBroadcastReceiverRegistrar$3;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 93
    :cond_0
    return-void
.end method
