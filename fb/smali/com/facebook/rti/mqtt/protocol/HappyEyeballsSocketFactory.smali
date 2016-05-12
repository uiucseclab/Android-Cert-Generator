.class public Lcom/facebook/rti/mqtt/protocol/HappyEyeballsSocketFactory;
.super Ljava/lang/Object;
.source "requested_playing"


# instance fields
.field private final a:Lcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryAdapter;

.field private final b:Ljava/net/InetAddress;

.field public final c:Ljava/net/InetAddress;

.field private final d:I

.field private final e:I

.field private final f:Ljava/util/concurrent/ScheduledExecutorService;

.field private final g:I

.field private h:Ljava/net/Socket;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/net/InetAddress;Ljava/net/InetAddress;IILcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryAdapter;Ljava/util/concurrent/ScheduledExecutorService;I)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p5, p0, Lcom/facebook/rti/mqtt/protocol/HappyEyeballsSocketFactory;->a:Lcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryAdapter;

    .line 65
    iput-object p1, p0, Lcom/facebook/rti/mqtt/protocol/HappyEyeballsSocketFactory;->b:Ljava/net/InetAddress;

    .line 66
    iput-object p2, p0, Lcom/facebook/rti/mqtt/protocol/HappyEyeballsSocketFactory;->c:Ljava/net/InetAddress;

    .line 67
    iput p3, p0, Lcom/facebook/rti/mqtt/protocol/HappyEyeballsSocketFactory;->d:I

    .line 68
    iput p4, p0, Lcom/facebook/rti/mqtt/protocol/HappyEyeballsSocketFactory;->e:I

    .line 69
    iput-object p6, p0, Lcom/facebook/rti/mqtt/protocol/HappyEyeballsSocketFactory;->f:Ljava/util/concurrent/ScheduledExecutorService;

    .line 70
    iput p7, p0, Lcom/facebook/rti/mqtt/protocol/HappyEyeballsSocketFactory;->g:I

    .line 71
    return-void
.end method


# virtual methods
.method public final a()Ljava/net/Socket;
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 74
    const-string v0, "HappyEyeballsSocketFactory"

    const-string v1, "getSocket for %s and %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/facebook/rti/mqtt/protocol/HappyEyeballsSocketFactory;->b:Ljava/net/InetAddress;

    aput-object v3, v2, v7

    iget-object v3, p0, Lcom/facebook/rti/mqtt/protocol/HappyEyeballsSocketFactory;->c:Ljava/net/InetAddress;

    aput-object v3, v2, v8

    invoke-static {v0, v1, v2}, Lcom/facebook/rti/common/log/BLog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    invoke-static {}, Lcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryAdapter;->a()Ljava/net/Socket;

    move-result-object v1

    .line 77
    invoke-static {}, Lcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryAdapter;->a()Ljava/net/Socket;

    move-result-object v2

    .line 80
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/HappyEyeballsSocketFactory;->f:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v3, Lcom/facebook/rti/mqtt/protocol/HappyEyeballsSocketFactory$1;

    invoke-direct {v3, p0, v2, v1}, Lcom/facebook/rti/mqtt/protocol/HappyEyeballsSocketFactory$1;-><init>(Lcom/facebook/rti/mqtt/protocol/HappyEyeballsSocketFactory;Ljava/net/Socket;Ljava/net/Socket;)V

    iget v4, p0, Lcom/facebook/rti/mqtt/protocol/HappyEyeballsSocketFactory;->g:I

    int-to-long v4, v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v3, v4, v5, v6}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v3

    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/HappyEyeballsSocketFactory;->b:Ljava/net/InetAddress;

    invoke-virtual {p0, v1, v0, v2}, Lcom/facebook/rti/mqtt/protocol/HappyEyeballsSocketFactory;->a(Ljava/net/Socket;Ljava/net/InetAddress;Ljava/net/Socket;)V

    .line 95
    const/4 v0, 0x0

    invoke-interface {v3, v0}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :goto_0
    monitor-enter p0

    .line 108
    :try_start_1
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/HappyEyeballsSocketFactory;->h:Ljava/net/Socket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/HappyEyeballsSocketFactory;->h:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    const-string v0, "HappyEyeballsSocketFactory"

    const-string v1, "HE is returning socket connected to %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/facebook/rti/mqtt/protocol/HappyEyeballsSocketFactory;->h:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/facebook/rti/common/log/BLog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/HappyEyeballsSocketFactory;->h:Ljava/net/Socket;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0

    .line 96
    :catch_0
    move-exception v0

    .line 97
    invoke-static {v1}, Lcom/facebook/rti/mqtt/protocol/MqttSocketUtil;->b(Ljava/net/Socket;)V

    .line 100
    :try_start_2
    invoke-interface {v3}, Ljava/util/concurrent/ScheduledFuture;->get()Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 101
    :catch_1
    move-exception v1

    .line 102
    invoke-static {v2}, Lcom/facebook/rti/mqtt/protocol/MqttSocketUtil;->b(Ljava/net/Socket;)V

    .line 103
    const-string v2, "HappyEyeballsSocketFactory"

    const-string v3, "Failed to connect to both sockets: %s"

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v1, v4, v7

    invoke-static {v2, v0, v3, v4}, Lcom/facebook/rti/common/log/BLog;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to connect to both sockets: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 112
    :cond_0
    :try_start_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "socket connect call succeeded but socket is not connected."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public final a(Ljava/net/Socket;Ljava/net/InetAddress;Ljava/net/Socket;)V
    .locals 4

    .prologue
    .line 121
    invoke-static {p1}, Lcom/facebook/rti/mqtt/protocol/MqttSocketUtil;->a(Ljava/net/Socket;)V

    .line 122
    const-string v0, "HappyEyeballsSocketFactory"

    const-string v1, "Connecting to %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/facebook/rti/common/log/BLog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    new-instance v0, Ljava/net/InetSocketAddress;

    iget v1, p0, Lcom/facebook/rti/mqtt/protocol/HappyEyeballsSocketFactory;->d:I

    invoke-direct {v0, p2, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iget v1, p0, Lcom/facebook/rti/mqtt/protocol/HappyEyeballsSocketFactory;->e:I

    invoke-virtual {p1, v0, v1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 124
    monitor-enter p0

    .line 126
    :try_start_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/HappyEyeballsSocketFactory;->h:Ljava/net/Socket;

    if-nez v0, :cond_0

    .line 127
    iput-object p1, p0, Lcom/facebook/rti/mqtt/protocol/HappyEyeballsSocketFactory;->h:Ljava/net/Socket;

    .line 128
    invoke-static {p3}, Lcom/facebook/rti/mqtt/protocol/MqttSocketUtil;->b(Ljava/net/Socket;)V

    .line 130
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
