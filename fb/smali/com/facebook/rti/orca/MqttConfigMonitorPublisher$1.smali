.class Lcom/facebook/rti/orca/MqttConfigMonitorPublisher$1;
.super Lcom/facebook/gk/store/OnGatekeeperChangeListener;
.source "t"


# instance fields
.field final synthetic a:Lcom/facebook/rti/orca/MqttConfigMonitorPublisher;


# direct methods
.method constructor <init>(Lcom/facebook/rti/orca/MqttConfigMonitorPublisher;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/facebook/rti/orca/MqttConfigMonitorPublisher$1;->a:Lcom/facebook/rti/orca/MqttConfigMonitorPublisher;

    invoke-direct {p0}, Lcom/facebook/gk/store/OnGatekeeperChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/gk/store/GatekeeperStoreImpl;I)V
    .locals 5

    .prologue
    .line 78
    iget-object v0, p0, Lcom/facebook/rti/orca/MqttConfigMonitorPublisher$1;->a:Lcom/facebook/rti/orca/MqttConfigMonitorPublisher;

    iget-object v0, v0, Lcom/facebook/rti/orca/MqttConfigMonitorPublisher;->e:Lcom/facebook/gk/store/GatekeeperStoreConfig;

    invoke-interface {v0}, Lcom/facebook/gk/store/GatekeeperStoreConfig;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 79
    invoke-virtual {p1, p2}, Lcom/facebook/gk/store/GatekeeperStoreImpl;->a(I)Lcom/facebook/common/util/TriState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/common/util/TriState;->name()Ljava/lang/String;

    move-result-object v1

    .line 80
    .line 41
    sget-object v4, Lcom/facebook/rti/orca/MqttConfigMonitorPublisher;->a:Ljava/lang/String;

    .line 81
    iget-object v2, p0, Lcom/facebook/rti/orca/MqttConfigMonitorPublisher$1;->a:Lcom/facebook/rti/orca/MqttConfigMonitorPublisher;

    iget-object v2, v2, Lcom/facebook/rti/orca/MqttConfigMonitorPublisher;->i:Lcom/facebook/rti/config/ConfigProxyClient;

    const-string v3, "rti.mqtt.gk"

    invoke-virtual {v2, v3}, Lcom/facebook/rti/config/ConfigProxyClient;->a(Ljava/lang/String;)Lcom/facebook/rti/config/ConfigProxyClient$Editor;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/facebook/rti/config/ConfigProxyClient$Editor;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/rti/config/ConfigProxyClient$Editor;

    move-result-object v0

    .line 83
    const/16 v1, 0x32

    if-ne v1, p2, :cond_0

    .line 84
    const-string v1, "BROADCAST_CONFIG_CHANGED"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/facebook/rti/config/ConfigProxyClient$Editor;->a(Ljava/lang/String;Z)Lcom/facebook/rti/config/ConfigProxyClient$Editor;

    .line 86
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/rti/config/ConfigProxyClient$Editor;->a()Z

    .line 87
    return-void
.end method
