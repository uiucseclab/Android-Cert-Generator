.class Lcom/facebook/rti/push/service/FbnsService$1;
.super Ljava/lang/Object;
.source "system_server_anr"

# interfaces
.implements Lcom/facebook/rti/common/util/NonInjectProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/rti/common/util/NonInjectProvider",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/rti/push/service/FbnsService;


# direct methods
.method constructor <init>(Lcom/facebook/rti/push/service/FbnsService;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/facebook/rti/push/service/FbnsService$1;->a:Lcom/facebook/rti/push/service/FbnsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 111
    .line 114
    const-wide/16 v0, 0x0

    sget-object v2, Lcom/facebook/rti/mqtt/capability/MqttCapability;->SHARED_SECRET:Lcom/facebook/rti/mqtt/capability/MqttCapability;

    invoke-static {v2}, Lcom/facebook/rti/common/util/BitmaskEnumUtil;->a(Ljava/lang/Enum;)J

    move-result-wide v2

    or-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
