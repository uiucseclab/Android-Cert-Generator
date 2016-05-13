.class public Lcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryAdapterHelper;
.super Ljava/lang/Object;
.source "setHandshakeTimeout"


# instance fields
.field private final a:Ljava/util/concurrent/ExecutorService;

.field private final b:Lcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryHelper;

.field private final c:Lcom/facebook/rti/mqtt/common/ssl/socket/SSLVerifier;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ExecutorService;Lcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryHelper;Lcom/facebook/rti/mqtt/common/ssl/socket/SSLVerifier;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryAdapterHelper;->a:Ljava/util/concurrent/ExecutorService;

    .line 29
    iput-object p2, p0, Lcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryAdapterHelper;->b:Lcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryHelper;

    .line 30
    iput-object p3, p0, Lcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryAdapterHelper;->c:Lcom/facebook/rti/mqtt/common/ssl/socket/SSLVerifier;

    .line 31
    return-void
.end method


# virtual methods
.method public final a()Lcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryAdapter;
    .locals 4

    .prologue
    .line 34
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryAdapterHelper;->b:Lcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryHelper;->a(Lorg/apache/http/conn/scheme/SocketFactory;)Lorg/apache/http/conn/scheme/SocketFactory;

    move-result-object v0

    .line 36
    if-eqz v0, :cond_0

    .line 39
    new-instance v1, Lcom/facebook/rti/mqtt/common/ssl/ApacheSSLSocketFactoryAdapter;

    iget-object v2, p0, Lcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryAdapterHelper;->a:Ljava/util/concurrent/ExecutorService;

    check-cast v0, Lcom/facebook/rti/mqtt/common/ssl/openssl/TicketEnabledOpenSSLSocketFactory;

    invoke-direct {v1, v2, v0}, Lcom/facebook/rti/mqtt/common/ssl/ApacheSSLSocketFactoryAdapter;-><init>(Ljava/util/concurrent/ExecutorService;Lcom/facebook/rti/mqtt/common/ssl/openssl/TicketEnabledOpenSSLSocketFactory;)V

    move-object v0, v1

    .line 43
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/facebook/rti/mqtt/common/ssl/JavaSSLSocketFactoryAdapter;

    iget-object v2, p0, Lcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryAdapterHelper;->a:Ljava/util/concurrent/ExecutorService;

    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocketFactory;

    iget-object v3, p0, Lcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryAdapterHelper;->c:Lcom/facebook/rti/mqtt/common/ssl/socket/SSLVerifier;

    invoke-direct {v1, v2, v0, v3}, Lcom/facebook/rti/mqtt/common/ssl/JavaSSLSocketFactoryAdapter;-><init>(Ljava/util/concurrent/ExecutorService;Ljavax/net/ssl/SSLSocketFactory;Lcom/facebook/rti/mqtt/common/ssl/socket/SSLVerifier;)V

    move-object v0, v1

    goto :goto_0
.end method
