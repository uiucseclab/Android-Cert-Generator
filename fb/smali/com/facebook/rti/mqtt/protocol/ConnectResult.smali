.class public Lcom/facebook/rti/mqtt/protocol/ConnectResult;
.super Ljava/lang/Object;
.source "roll"


# instance fields
.field public final a:Z

.field public final b:Lcom/facebook/rti/common/guavalite/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/rti/common/guavalite/base/Optional",
            "<",
            "Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lcom/facebook/rti/common/guavalite/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/rti/common/guavalite/base/Optional",
            "<",
            "Ljava/lang/Exception;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lcom/facebook/rti/common/guavalite/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/rti/common/guavalite/base/Optional",
            "<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lcom/facebook/rti/common/guavalite/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/rti/common/guavalite/base/Optional",
            "<",
            "Lcom/facebook/rti/mqtt/credentials/MqttAuthenticationKeySecretPair;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lcom/facebook/rti/common/guavalite/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/rti/common/guavalite/base/Optional",
            "<",
            "Lcom/facebook/rti/mqtt/credentials/MqttDeviceIdAndSecret;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/rti/mqtt/credentials/MqttAuthenticationKeySecretPair;Lcom/facebook/rti/mqtt/credentials/MqttDeviceIdAndSecret;)V
    .locals 7

    .prologue
    .line 21
    const/4 v1, 0x1

    invoke-static {}, Lcom/facebook/rti/common/guavalite/base/Optional;->c()Lcom/facebook/rti/common/guavalite/base/Optional;

    move-result-object v2

    invoke-static {}, Lcom/facebook/rti/common/guavalite/base/Optional;->c()Lcom/facebook/rti/common/guavalite/base/Optional;

    move-result-object v3

    invoke-static {}, Lcom/facebook/rti/common/guavalite/base/Optional;->c()Lcom/facebook/rti/common/guavalite/base/Optional;

    move-result-object v4

    invoke-static {p1}, Lcom/facebook/rti/common/guavalite/base/Optional;->a(Ljava/lang/Object;)Lcom/facebook/rti/common/guavalite/base/Optional;

    move-result-object v5

    invoke-virtual {p2}, Lcom/facebook/rti/mqtt/credentials/MqttDeviceIdAndSecret;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/facebook/rti/common/guavalite/base/Optional;->c()Lcom/facebook/rti/common/guavalite/base/Optional;

    move-result-object v6

    :goto_0
    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/facebook/rti/mqtt/protocol/ConnectResult;-><init>(ZLcom/facebook/rti/common/guavalite/base/Optional;Lcom/facebook/rti/common/guavalite/base/Optional;Lcom/facebook/rti/common/guavalite/base/Optional;Lcom/facebook/rti/common/guavalite/base/Optional;Lcom/facebook/rti/common/guavalite/base/Optional;)V

    .line 30
    return-void

    .line 21
    :cond_0
    invoke-static {p2}, Lcom/facebook/rti/common/guavalite/base/Optional;->a(Ljava/lang/Object;)Lcom/facebook/rti/common/guavalite/base/Optional;

    move-result-object v6

    goto :goto_0
.end method

.method public constructor <init>(Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;)V
    .locals 7

    .prologue
    .line 33
    const/4 v1, 0x0

    invoke-static {p1}, Lcom/facebook/rti/common/guavalite/base/Optional;->a(Ljava/lang/Object;)Lcom/facebook/rti/common/guavalite/base/Optional;

    move-result-object v2

    invoke-static {}, Lcom/facebook/rti/common/guavalite/base/Optional;->c()Lcom/facebook/rti/common/guavalite/base/Optional;

    move-result-object v3

    invoke-static {}, Lcom/facebook/rti/common/guavalite/base/Optional;->c()Lcom/facebook/rti/common/guavalite/base/Optional;

    move-result-object v4

    invoke-static {}, Lcom/facebook/rti/common/guavalite/base/Optional;->c()Lcom/facebook/rti/common/guavalite/base/Optional;

    move-result-object v5

    invoke-static {}, Lcom/facebook/rti/common/guavalite/base/Optional;->c()Lcom/facebook/rti/common/guavalite/base/Optional;

    move-result-object v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/facebook/rti/mqtt/protocol/ConnectResult;-><init>(ZLcom/facebook/rti/common/guavalite/base/Optional;Lcom/facebook/rti/common/guavalite/base/Optional;Lcom/facebook/rti/common/guavalite/base/Optional;Lcom/facebook/rti/common/guavalite/base/Optional;Lcom/facebook/rti/common/guavalite/base/Optional;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;B)V
    .locals 7

    .prologue
    .line 43
    const/4 v1, 0x0

    invoke-static {p1}, Lcom/facebook/rti/common/guavalite/base/Optional;->a(Ljava/lang/Object;)Lcom/facebook/rti/common/guavalite/base/Optional;

    move-result-object v2

    invoke-static {}, Lcom/facebook/rti/common/guavalite/base/Optional;->c()Lcom/facebook/rti/common/guavalite/base/Optional;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/rti/common/guavalite/base/Optional;->a(Ljava/lang/Object;)Lcom/facebook/rti/common/guavalite/base/Optional;

    move-result-object v4

    invoke-static {}, Lcom/facebook/rti/common/guavalite/base/Optional;->c()Lcom/facebook/rti/common/guavalite/base/Optional;

    move-result-object v5

    invoke-static {}, Lcom/facebook/rti/common/guavalite/base/Optional;->c()Lcom/facebook/rti/common/guavalite/base/Optional;

    move-result-object v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/facebook/rti/mqtt/protocol/ConnectResult;-><init>(ZLcom/facebook/rti/common/guavalite/base/Optional;Lcom/facebook/rti/common/guavalite/base/Optional;Lcom/facebook/rti/common/guavalite/base/Optional;Lcom/facebook/rti/common/guavalite/base/Optional;Lcom/facebook/rti/common/guavalite/base/Optional;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;Ljava/lang/Exception;)V
    .locals 7

    .prologue
    .line 53
    const/4 v1, 0x0

    invoke-static {p1}, Lcom/facebook/rti/common/guavalite/base/Optional;->a(Ljava/lang/Object;)Lcom/facebook/rti/common/guavalite/base/Optional;

    move-result-object v2

    invoke-static {p2}, Lcom/facebook/rti/common/guavalite/base/Optional;->b(Ljava/lang/Object;)Lcom/facebook/rti/common/guavalite/base/Optional;

    move-result-object v3

    invoke-static {}, Lcom/facebook/rti/common/guavalite/base/Optional;->c()Lcom/facebook/rti/common/guavalite/base/Optional;

    move-result-object v4

    invoke-static {}, Lcom/facebook/rti/common/guavalite/base/Optional;->c()Lcom/facebook/rti/common/guavalite/base/Optional;

    move-result-object v5

    invoke-static {}, Lcom/facebook/rti/common/guavalite/base/Optional;->c()Lcom/facebook/rti/common/guavalite/base/Optional;

    move-result-object v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/facebook/rti/mqtt/protocol/ConnectResult;-><init>(ZLcom/facebook/rti/common/guavalite/base/Optional;Lcom/facebook/rti/common/guavalite/base/Optional;Lcom/facebook/rti/common/guavalite/base/Optional;Lcom/facebook/rti/common/guavalite/base/Optional;Lcom/facebook/rti/common/guavalite/base/Optional;)V

    .line 60
    return-void
.end method

.method private constructor <init>(ZLcom/facebook/rti/common/guavalite/base/Optional;Lcom/facebook/rti/common/guavalite/base/Optional;Lcom/facebook/rti/common/guavalite/base/Optional;Lcom/facebook/rti/common/guavalite/base/Optional;Lcom/facebook/rti/common/guavalite/base/Optional;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/facebook/rti/common/guavalite/base/Optional",
            "<",
            "Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;",
            ">;",
            "Lcom/facebook/rti/common/guavalite/base/Optional",
            "<",
            "Ljava/lang/Exception;",
            ">;",
            "Lcom/facebook/rti/common/guavalite/base/Optional",
            "<",
            "Ljava/lang/Byte;",
            ">;",
            "Lcom/facebook/rti/common/guavalite/base/Optional",
            "<",
            "Lcom/facebook/rti/mqtt/credentials/MqttAuthenticationKeySecretPair;",
            ">;",
            "Lcom/facebook/rti/common/guavalite/base/Optional",
            "<",
            "Lcom/facebook/rti/mqtt/credentials/MqttDeviceIdAndSecret;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-boolean p1, p0, Lcom/facebook/rti/mqtt/protocol/ConnectResult;->a:Z

    .line 70
    iput-object p2, p0, Lcom/facebook/rti/mqtt/protocol/ConnectResult;->b:Lcom/facebook/rti/common/guavalite/base/Optional;

    .line 71
    iput-object p3, p0, Lcom/facebook/rti/mqtt/protocol/ConnectResult;->c:Lcom/facebook/rti/common/guavalite/base/Optional;

    .line 72
    iput-object p4, p0, Lcom/facebook/rti/mqtt/protocol/ConnectResult;->d:Lcom/facebook/rti/common/guavalite/base/Optional;

    .line 73
    iput-object p5, p0, Lcom/facebook/rti/mqtt/protocol/ConnectResult;->e:Lcom/facebook/rti/common/guavalite/base/Optional;

    .line 74
    iput-object p6, p0, Lcom/facebook/rti/mqtt/protocol/ConnectResult;->f:Lcom/facebook/rti/common/guavalite/base/Optional;

    .line 75
    return-void
.end method
