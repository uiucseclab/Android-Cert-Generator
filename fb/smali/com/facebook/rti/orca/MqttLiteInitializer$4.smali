.class Lcom/facebook/rti/orca/MqttLiteInitializer$4;
.super Ljava/lang/Object;
.source "switch_to_full_fb"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/facebook/rti/orca/MqttLiteInitializer;


# direct methods
.method constructor <init>(Lcom/facebook/rti/orca/MqttLiteInitializer;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcom/facebook/rti/orca/MqttLiteInitializer$4;->a:Lcom/facebook/rti/orca/MqttLiteInitializer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 180
    iget-object v0, p0, Lcom/facebook/rti/orca/MqttLiteInitializer$4;->a:Lcom/facebook/rti/orca/MqttLiteInitializer;

    iget-object v0, v0, Lcom/facebook/rti/orca/MqttLiteInitializer;->e:Lcom/facebook/base/broadcast/BaseFbBroadcastManager;

    invoke-virtual {v0}, Lcom/facebook/base/broadcast/BaseFbBroadcastManager;->a()Lcom/facebook/base/broadcast/FbBroadcastManager$ReceiverBuilder;

    move-result-object v0

    sget-object v1, Lcom/facebook/common/appstate/AppStateManager;->b:Ljava/lang/String;

    new-instance v2, Lcom/facebook/rti/orca/MqttLiteInitializer$4$2;

    invoke-direct {v2, p0}, Lcom/facebook/rti/orca/MqttLiteInitializer$4$2;-><init>(Lcom/facebook/rti/orca/MqttLiteInitializer$4;)V

    invoke-interface {v0, v1, v2}, Lcom/facebook/base/broadcast/FbBroadcastManager$ReceiverBuilder;->a(Ljava/lang/String;Lcom/facebook/content/ActionReceiver;)Lcom/facebook/base/broadcast/FbBroadcastManager$ReceiverBuilder;

    move-result-object v0

    sget-object v1, Lcom/facebook/common/appstate/AppStateManager;->c:Ljava/lang/String;

    new-instance v2, Lcom/facebook/rti/orca/MqttLiteInitializer$4$1;

    invoke-direct {v2, p0}, Lcom/facebook/rti/orca/MqttLiteInitializer$4$1;-><init>(Lcom/facebook/rti/orca/MqttLiteInitializer$4;)V

    invoke-interface {v0, v1, v2}, Lcom/facebook/base/broadcast/FbBroadcastManager$ReceiverBuilder;->a(Ljava/lang/String;Lcom/facebook/content/ActionReceiver;)Lcom/facebook/base/broadcast/FbBroadcastManager$ReceiverBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/base/broadcast/FbBroadcastManager$ReceiverBuilder;->a()Lcom/facebook/base/broadcast/BaseFbBroadcastManager$SelfRegistrableReceiverImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/base/broadcast/BaseFbBroadcastManager$SelfRegistrableReceiverImpl;->b()V

    .line 210
    iget-object v0, p0, Lcom/facebook/rti/orca/MqttLiteInitializer$4;->a:Lcom/facebook/rti/orca/MqttLiteInitializer;

    iget-object v0, v0, Lcom/facebook/rti/orca/MqttLiteInitializer;->l:Lcom/facebook/rti/orca/MqttLiteBroadcastReceiverRegistrar;

    iget-object v1, p0, Lcom/facebook/rti/orca/MqttLiteInitializer$4;->a:Lcom/facebook/rti/orca/MqttLiteInitializer;

    iget-object v1, v1, Lcom/facebook/rti/orca/MqttLiteInitializer;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/facebook/rti/orca/MqttLiteBroadcastReceiverRegistrar;->a(Ljava/lang/Runnable;)V

    .line 211
    return-void
.end method
