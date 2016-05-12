.class public abstract Lcom/facebook/rti/mqtt/connectivity/AbstractMqttConnectivityMonitor;
.super Ljava/lang/Object;
.source "segmentBase must be of type SingleSegmentBase or MultiSegmentBase"


# instance fields
.field private final a:Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;


# direct methods
.method public constructor <init>(Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/facebook/rti/mqtt/connectivity/AbstractMqttConnectivityMonitor;->a:Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;

    .line 22
    return-void
.end method


# virtual methods
.method protected abstract a()Ljava/lang/String;
.end method

.method protected final a(Ljava/util/Map;Landroid/net/NetworkInfo;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/net/NetworkInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 48
    if-nez p1, :cond_0

    .line 63
    :goto_0
    return-void

    .line 52
    :cond_0
    if-nez p2, :cond_1

    .line 53
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/connectivity/AbstractMqttConnectivityMonitor;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "no_info"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 55
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/connectivity/AbstractMqttConnectivityMonitor;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "%s_%s_%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/facebook/rti/common/util/StringUtil;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final a(Ljava/util/Map;)Z
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
    .line 26
    invoke-virtual {p0, p1}, Lcom/facebook/rti/mqtt/connectivity/AbstractMqttConnectivityMonitor;->b(Ljava/util/Map;)Z

    move-result v0

    return v0
.end method

.method protected b(Ljava/util/Map;)Z
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
    .line 36
    const/4 v0, 0x1

    return v0
.end method
