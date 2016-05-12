.class public Lcom/facebook/rti/push/service/FbnsKeepaliveParms;
.super Ljava/lang/Object;
.source "startNumber"

# interfaces
.implements Lcom/facebook/rti/mqtt/keepalive/KeepaliveParms;


# instance fields
.field private final a:Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;


# direct methods
.method public constructor <init>(Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/facebook/rti/push/service/FbnsKeepaliveParms;->a:Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;

    .line 14
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    return v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsKeepaliveParms;->a:Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;->b()Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;

    move-result-object v0

    iget v0, v0, Lcom/facebook/rti/mqtt/common/config/MqttConnectionConfig;->q:I

    return v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    return v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    return v0
.end method
