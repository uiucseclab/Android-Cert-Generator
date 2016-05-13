.class public Lcom/facebook/rti/mqtt/protocol/trafficcontrol/TrafficControlledOuputStream;
.super Ljava/io/OutputStream;
.source "rti.mqtt.stats"


# instance fields
.field private final a:Ljava/io/OutputStream;

.field private final b:Lcom/facebook/mqttlite/trafficcontrol/MqttTrafficControlParams;
    .annotation build Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private c:J


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lcom/facebook/mqttlite/trafficcontrol/MqttTrafficControlParams;)V
    .locals 2
    .param p2    # Lcom/facebook/mqttlite/trafficcontrol/MqttTrafficControlParams;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 15
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/rti/mqtt/protocol/trafficcontrol/TrafficControlledOuputStream;->c:J

    .line 20
    iput-object p1, p0, Lcom/facebook/rti/mqtt/protocol/trafficcontrol/TrafficControlledOuputStream;->a:Ljava/io/OutputStream;

    .line 21
    iput-object p2, p0, Lcom/facebook/rti/mqtt/protocol/trafficcontrol/TrafficControlledOuputStream;->b:Lcom/facebook/mqttlite/trafficcontrol/MqttTrafficControlParams;

    .line 22
    return-void
.end method

.method private declared-synchronized a(I)V
    .locals 6

    .prologue
    .line 53
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/trafficcontrol/TrafficControlledOuputStream;->b:Lcom/facebook/mqttlite/trafficcontrol/MqttTrafficControlParams;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/trafficcontrol/TrafficControlledOuputStream;->b:Lcom/facebook/mqttlite/trafficcontrol/MqttTrafficControlParams;

    invoke-virtual {v0}, Lcom/facebook/mqttlite/trafficcontrol/MqttTrafficControlParams;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    iget-wide v0, p0, Lcom/facebook/rti/mqtt/protocol/trafficcontrol/TrafficControlledOuputStream;->c:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/rti/mqtt/protocol/trafficcontrol/TrafficControlledOuputStream;->c:J

    .line 55
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/trafficcontrol/TrafficControlledOuputStream;->b:Lcom/facebook/mqttlite/trafficcontrol/MqttTrafficControlParams;

    invoke-virtual {v0}, Lcom/facebook/mqttlite/trafficcontrol/MqttTrafficControlParams;->b()I

    move-result v0

    .line 56
    :goto_0
    if-lez v0, :cond_0

    iget-wide v2, p0, Lcom/facebook/rti/mqtt/protocol/trafficcontrol/TrafficControlledOuputStream;->c:J

    int-to-long v4, v0

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    .line 57
    iget-wide v2, p0, Lcom/facebook/rti/mqtt/protocol/trafficcontrol/TrafficControlledOuputStream;->c:J

    int-to-long v4, v0

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/facebook/rti/mqtt/protocol/trafficcontrol/TrafficControlledOuputStream;->c:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    :try_start_1
    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/trafficcontrol/TrafficControlledOuputStream;->b:Lcom/facebook/mqttlite/trafficcontrol/MqttTrafficControlParams;

    invoke-virtual {v1}, Lcom/facebook/mqttlite/trafficcontrol/MqttTrafficControlParams;->c()I

    move-result v1

    int-to-long v2, v1

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 62
    :catch_0
    move-exception v1

    goto :goto_0

    .line 65
    :cond_0
    monitor-exit p0

    return-void

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/trafficcontrol/TrafficControlledOuputStream;->a:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 27
    return-void
.end method

.method public flush()V
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/trafficcontrol/TrafficControlledOuputStream;->a:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 32
    return-void
.end method

.method public write(I)V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/rti/mqtt/protocol/trafficcontrol/TrafficControlledOuputStream;->a(I)V

    .line 49
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/trafficcontrol/TrafficControlledOuputStream;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 50
    return-void
.end method

.method public write([B)V
    .locals 1

    .prologue
    .line 36
    array-length v0, p1

    invoke-direct {p0, v0}, Lcom/facebook/rti/mqtt/protocol/trafficcontrol/TrafficControlledOuputStream;->a(I)V

    .line 37
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/trafficcontrol/TrafficControlledOuputStream;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 38
    return-void
.end method

.method public write([BII)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0, p3}, Lcom/facebook/rti/mqtt/protocol/trafficcontrol/TrafficControlledOuputStream;->a(I)V

    .line 43
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/trafficcontrol/TrafficControlledOuputStream;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 44
    return-void
.end method
