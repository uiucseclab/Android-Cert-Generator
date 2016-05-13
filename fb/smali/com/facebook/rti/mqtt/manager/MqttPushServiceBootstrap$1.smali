.class final Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap$1;
.super Ljava/lang/Object;
.source "spherical_video_viewport_change"

# interfaces
.implements Lcom/facebook/rti/common/util/NonInjectProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/rti/common/util/NonInjectProvider",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 227
    .line 230
    sget-object v0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap;->v:Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;->b()Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->c:Ljava/lang/String;

    return-object v0
.end method
