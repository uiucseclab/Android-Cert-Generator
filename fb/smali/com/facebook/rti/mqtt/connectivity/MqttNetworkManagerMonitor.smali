.class public Lcom/facebook/rti/mqtt/connectivity/MqttNetworkManagerMonitor;
.super Lcom/facebook/rti/mqtt/connectivity/AbstractMqttConnectivityMonitor;
.source "senc"


# instance fields
.field private a:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;


# direct methods
.method public constructor <init>(Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/facebook/rti/mqtt/connectivity/AbstractMqttConnectivityMonitor;-><init>(Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;)V

    .line 22
    iput-object p2, p0, Lcom/facebook/rti/mqtt/connectivity/MqttNetworkManagerMonitor;->a:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;

    .line 23
    return-void
.end method

.method private c(Ljava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcom/facebook/rti/mqtt/connectivity/MqttNetworkManagerMonitor;->a:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->b()Z

    move-result v0

    .line 43
    if-nez v0, :cond_0

    .line 44
    iget-object v1, p0, Lcom/facebook/rti/mqtt/connectivity/MqttNetworkManagerMonitor;->a:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;

    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->c()Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/facebook/rti/mqtt/connectivity/AbstractMqttConnectivityMonitor;->a(Ljava/util/Map;Landroid/net/NetworkInfo;)V

    .line 47
    :cond_0
    return v0
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    const-string v0, "MqttNetworkManagerMonitor"

    return-object v0
.end method

.method protected final b(Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/facebook/rti/mqtt/connectivity/MqttNetworkManagerMonitor;->c(Ljava/util/Map;)Z

    move-result v0

    return v0
.end method
