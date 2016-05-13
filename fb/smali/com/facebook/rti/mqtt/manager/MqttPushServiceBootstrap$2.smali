.class final Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap$2;
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


# instance fields
.field final synthetic a:Lcom/facebook/rti/mqtt/manager/MqttIdManager;


# direct methods
.method constructor <init>(Lcom/facebook/rti/mqtt/manager/MqttIdManager;)V
    .locals 0

    .prologue
    .line 234
    iput-object p1, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap$2;->a:Lcom/facebook/rti/mqtt/manager/MqttIdManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 234
    .line 237
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap$2;->a:Lcom/facebook/rti/mqtt/manager/MqttIdManager;

    invoke-interface {v0}, Lcom/facebook/rti/mqtt/manager/MqttIdManager;->c()Ljava/lang/String;

    move-result-object v0

    .line 238
    invoke-static {v0}, Lcom/facebook/rti/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "unset"

    :cond_0
    return-object v0
.end method
