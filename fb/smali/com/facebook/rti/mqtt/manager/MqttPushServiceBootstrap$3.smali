.class final Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap$3;
.super Lcom/facebook/rti/mqtt/manager/NextMessageIdProvider;
.source "spherical_video_viewport_change"


# instance fields
.field a:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 335
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/manager/NextMessageIdProvider;-><init>()V

    .line 336
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap$3;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 335
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap$3;->b()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 339
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushServiceBootstrap$3;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    .line 340
    const v1, 0xffff

    and-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
