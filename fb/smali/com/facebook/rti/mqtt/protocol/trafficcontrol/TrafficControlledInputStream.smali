.class public Lcom/facebook/rti/mqtt/protocol/trafficcontrol/TrafficControlledInputStream;
.super Ljava/io/InputStream;
.source "rtmp"


# instance fields
.field private final a:Ljava/io/InputStream;

.field private final b:Lcom/facebook/mqttlite/trafficcontrol/MqttTrafficControlParams;
    .annotation build Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private c:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/facebook/mqttlite/trafficcontrol/MqttTrafficControlParams;)V
    .locals 2
    .param p2    # Lcom/facebook/mqttlite/trafficcontrol/MqttTrafficControlParams;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 15
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/rti/mqtt/protocol/trafficcontrol/TrafficControlledInputStream;->c:J

    .line 20
    iput-object p1, p0, Lcom/facebook/rti/mqtt/protocol/trafficcontrol/TrafficControlledInputStream;->a:Ljava/io/InputStream;

    .line 21
    iput-object p2, p0, Lcom/facebook/rti/mqtt/protocol/trafficcontrol/TrafficControlledInputStream;->b:Lcom/facebook/mqttlite/trafficcontrol/MqttTrafficControlParams;

    .line 22
    return-void
.end method

.method private declared-synchronized a(I)V
    .locals 6

    .prologue
    .line 73
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/trafficcontrol/TrafficControlledInputStream;->b:Lcom/facebook/mqttlite/trafficcontrol/MqttTrafficControlParams;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/trafficcontrol/TrafficControlledInputStream;->b:Lcom/facebook/mqttlite/trafficcontrol/MqttTrafficControlParams;

    invoke-virtual {v0}, Lcom/facebook/mqttlite/trafficcontrol/MqttTrafficControlParams;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-wide v0, p0, Lcom/facebook/rti/mqtt/protocol/trafficcontrol/TrafficControlledInputStream;->c:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/rti/mqtt/protocol/trafficcontrol/TrafficControlledInputStream;->c:J

    .line 75
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/trafficcontrol/TrafficControlledInputStream;->b:Lcom/facebook/mqttlite/trafficcontrol/MqttTrafficControlParams;

    invoke-virtual {v0}, Lcom/facebook/mqttlite/trafficcontrol/MqttTrafficControlParams;->b()I

    move-result v0

    .line 76
    :goto_0
    if-lez v0, :cond_0

    iget-wide v2, p0, Lcom/facebook/rti/mqtt/protocol/trafficcontrol/TrafficControlledInputStream;->c:J

    int-to-long v4, v0

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    .line 77
    iget-wide v2, p0, Lcom/facebook/rti/mqtt/protocol/trafficcontrol/TrafficControlledInputStream;->c:J

    int-to-long v4, v0

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/facebook/rti/mqtt/protocol/trafficcontrol/TrafficControlledInputStream;->c:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    :try_start_1
    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/trafficcontrol/TrafficControlledInputStream;->b:Lcom/facebook/mqttlite/trafficcontrol/MqttTrafficControlParams;

    invoke-virtual {v1}, Lcom/facebook/mqttlite/trafficcontrol/MqttTrafficControlParams;->c()I

    move-result v1

    int-to-long v2, v1

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 82
    :catch_0
    move-exception v1

    goto :goto_0

    .line 85
    :cond_0
    monitor-exit p0

    return-void

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public available()I
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/trafficcontrol/TrafficControlledInputStream;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/trafficcontrol/TrafficControlledInputStream;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 32
    return-void
.end method

.method public mark(I)V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/trafficcontrol/TrafficControlledInputStream;->a:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    .line 37
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/trafficcontrol/TrafficControlledInputStream;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public read()I
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/rti/mqtt/protocol/trafficcontrol/TrafficControlledInputStream;->a(I)V

    .line 69
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/trafficcontrol/TrafficControlledInputStream;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method public read([B)I
    .locals 1

    .prologue
    .line 46
    array-length v0, p1

    invoke-direct {p0, v0}, Lcom/facebook/rti/mqtt/protocol/trafficcontrol/TrafficControlledInputStream;->a(I)V

    .line 47
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/trafficcontrol/TrafficControlledInputStream;->a:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0, p3}, Lcom/facebook/rti/mqtt/protocol/trafficcontrol/TrafficControlledInputStream;->a(I)V

    .line 53
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/trafficcontrol/TrafficControlledInputStream;->a:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public declared-synchronized reset()V
    .locals 1

    .prologue
    .line 58
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/trafficcontrol/TrafficControlledInputStream;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    monitor-exit p0

    return-void

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .locals 3

    .prologue
    .line 63
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/trafficcontrol/TrafficControlledInputStream;->a:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    return-wide v0
.end method
