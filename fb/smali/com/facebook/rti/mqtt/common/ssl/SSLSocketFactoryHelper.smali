.class public Lcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryHelper;
.super Ljava/lang/Object;
.source "setAppTracingAllowed"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:I

.field private final c:I

.field private final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/rti/mqtt/common/ssl/openssl/check/OpenSSLEnvironmentCheck;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/facebook/rti/mqtt/common/ssl/openssl/reflect/SSLParametersGetter;

.field private final f:Lcom/facebook/rti/mqtt/common/ssl/openssl/reflect/SSLSessionTimeoutSetter;

.field private final g:Lcom/facebook/rti/mqtt/common/ssl/openssl/reflect/SocketImplSetter;

.field private final h:Lcom/facebook/rti/mqtt/common/ssl/openssl/TicketEnabledOpenSSLSocketFactoryHelper;

.field private final i:Lcom/facebook/rti/mqtt/common/ssl/socket/SSLVerifier;

.field private final j:Lorg/apache/http/conn/ssl/X509HostnameVerifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryHelper;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/rti/mqtt/common/ssl/socket/SSLVerifier;Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V
    .locals 3

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryHelper;->d:Ljava/util/Set;

    .line 84
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iput v0, p0, Lcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryHelper;->c:I

    .line 85
    const v0, 0x14ff0

    iput v0, p0, Lcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryHelper;->b:I

    .line 86
    new-instance v0, Lcom/facebook/rti/mqtt/common/ssl/openssl/reflect/SSLParametersGetter;

    invoke-direct {v0}, Lcom/facebook/rti/mqtt/common/ssl/openssl/reflect/SSLParametersGetter;-><init>()V

    iput-object v0, p0, Lcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryHelper;->e:Lcom/facebook/rti/mqtt/common/ssl/openssl/reflect/SSLParametersGetter;

    .line 87
    new-instance v0, Lcom/facebook/rti/mqtt/common/ssl/openssl/reflect/SSLSessionTimeoutSetter;

    invoke-direct {v0}, Lcom/facebook/rti/mqtt/common/ssl/openssl/reflect/SSLSessionTimeoutSetter;-><init>()V

    iput-object v0, p0, Lcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryHelper;->f:Lcom/facebook/rti/mqtt/common/ssl/openssl/reflect/SSLSessionTimeoutSetter;

    .line 88
    new-instance v0, Lcom/facebook/rti/mqtt/common/ssl/openssl/reflect/SocketImplSetter;

    invoke-direct {v0}, Lcom/facebook/rti/mqtt/common/ssl/openssl/reflect/SocketImplSetter;-><init>()V

    iput-object v0, p0, Lcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryHelper;->g:Lcom/facebook/rti/mqtt/common/ssl/openssl/reflect/SocketImplSetter;

    .line 89
    new-instance v0, Lcom/facebook/rti/mqtt/common/ssl/openssl/TicketEnabledOpenSSLSocketFactoryHelper;

    invoke-direct {v0}, Lcom/facebook/rti/mqtt/common/ssl/openssl/TicketEnabledOpenSSLSocketFactoryHelper;-><init>()V

    iput-object v0, p0, Lcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryHelper;->h:Lcom/facebook/rti/mqtt/common/ssl/openssl/TicketEnabledOpenSSLSocketFactoryHelper;

    .line 90
    iput-object p1, p0, Lcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryHelper;->i:Lcom/facebook/rti/mqtt/common/ssl/socket/SSLVerifier;

    .line 91
    iput-object p2, p0, Lcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryHelper;->j:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    .line 93
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryHelper;->d:Ljava/util/Set;

    new-instance v1, Lcom/facebook/rti/mqtt/common/ssl/openssl/check/CheckFakeSocketImpl;

    invoke-direct {v1}, Lcom/facebook/rti/mqtt/common/ssl/openssl/check/CheckFakeSocketImpl;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 94
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryHelper;->d:Ljava/util/Set;

    new-instance v1, Lcom/facebook/rti/mqtt/common/ssl/openssl/check/CheckOpenSSLImplHasRequiredMethods;

    invoke-direct {v1}, Lcom/facebook/rti/mqtt/common/ssl/openssl/check/CheckOpenSSLImplHasRequiredMethods;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 95
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryHelper;->d:Ljava/util/Set;

    new-instance v1, Lcom/facebook/rti/mqtt/common/ssl/openssl/check/CheckSocketImplSetter;

    iget-object v2, p0, Lcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryHelper;->g:Lcom/facebook/rti/mqtt/common/ssl/openssl/reflect/SocketImplSetter;

    invoke-direct {v1, v2}, Lcom/facebook/rti/mqtt/common/ssl/openssl/check/CheckSocketImplSetter;-><init>(Lcom/facebook/rti/mqtt/common/ssl/openssl/reflect/SocketImplSetter;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 96
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryHelper;->d:Ljava/util/Set;

    new-instance v1, Lcom/facebook/rti/mqtt/common/ssl/openssl/check/CheckSSLParametersGetter;

    iget-object v2, p0, Lcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryHelper;->e:Lcom/facebook/rti/mqtt/common/ssl/openssl/reflect/SSLParametersGetter;

    invoke-direct {v1, v2}, Lcom/facebook/rti/mqtt/common/ssl/openssl/check/CheckSSLParametersGetter;-><init>(Lcom/facebook/rti/mqtt/common/ssl/openssl/reflect/SSLParametersGetter;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 97
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryHelper;->d:Ljava/util/Set;

    new-instance v1, Lcom/facebook/rti/mqtt/common/ssl/openssl/check/CheckSSLSessionTimeoutSetter;

    iget-object v2, p0, Lcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryHelper;->f:Lcom/facebook/rti/mqtt/common/ssl/openssl/reflect/SSLSessionTimeoutSetter;

    invoke-direct {v1, v2}, Lcom/facebook/rti/mqtt/common/ssl/openssl/check/CheckSSLSessionTimeoutSetter;-><init>(Lcom/facebook/rti/mqtt/common/ssl/openssl/reflect/SSLSessionTimeoutSetter;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 98
    return-void
.end method

.method private static a()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .prologue
    .line 136
    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/util/Set;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/rti/mqtt/common/ssl/openssl/check/OpenSSLEnvironmentCheck;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 148
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/common/ssl/openssl/check/OpenSSLEnvironmentCheck;

    .line 149
    sget-object v4, Lcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryHelper;->a:Ljava/lang/String;

    const-string v5, "trying check %s"

    new-array v6, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v4, v5, v6}, Lcom/facebook/rti/common/log/BLog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    invoke-interface {v0}, Lcom/facebook/rti/mqtt/common/ssl/openssl/check/OpenSSLEnvironmentCheck;->a()Z

    move-result v4

    if-nez v4, :cond_0

    .line 151
    sget-object v3, Lcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryHelper;->a:Ljava/lang/String;

    const-string v4, "check fail %s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    invoke-static {v3, v4, v2}, Lcom/facebook/rti/common/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 156
    :goto_1
    return v0

    .line 154
    :cond_0
    sget-object v0, Lcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryHelper;->a:Ljava/lang/String;

    const-string v4, "check pass"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lcom/facebook/rti/common/log/BLog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 156
    goto :goto_1
.end method

.method private b(Lorg/apache/http/conn/scheme/SocketFactory;)Lorg/apache/http/conn/scheme/SocketFactory;
    .locals 2

    .prologue
    .line 140
    instance-of v0, p1, Lorg/apache/http/conn/ssl/SSLSocketFactory;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 141
    check-cast v0, Lorg/apache/http/conn/ssl/SSLSocketFactory;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryHelper;->j:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 144
    :cond_0
    return-object p1
.end method


# virtual methods
.method public final a(Lorg/apache/http/conn/scheme/SocketFactory;)Lorg/apache/http/conn/scheme/SocketFactory;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 111
    iget v0, p0, Lcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryHelper;->c:I

    const/16 v1, 0x8

    if-gt v0, v1, :cond_0

    .line 112
    invoke-direct {p0, p1}, Lcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryHelper;->b(Lorg/apache/http/conn/scheme/SocketFactory;)Lorg/apache/http/conn/scheme/SocketFactory;

    move-result-object v0

    .line 132
    :goto_0
    return-object v0

    .line 116
    :cond_0
    :try_start_0
    iget v0, p0, Lcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryHelper;->c:I

    const/16 v1, 0x10

    if-gt v0, v1, :cond_1

    .line 117
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryHelper;->d:Ljava/util/Set;

    invoke-static {v0}, Lcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryHelper;->a(Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    sget-object v0, Lcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryHelper;->a:Ljava/lang/String;

    const-string v1, "all checks passed, using TicketEnabledOpenSSLSocketFactory"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/facebook/rti/common/log/BLog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    new-instance v0, Lcom/facebook/rti/mqtt/common/ssl/openssl/TicketEnabledOpenSSLSocketFactory;

    invoke-static {}, Lcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryHelper;->a()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryHelper;->i:Lcom/facebook/rti/mqtt/common/ssl/socket/SSLVerifier;

    iget-object v3, p0, Lcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryHelper;->e:Lcom/facebook/rti/mqtt/common/ssl/openssl/reflect/SSLParametersGetter;

    iget-object v4, p0, Lcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryHelper;->f:Lcom/facebook/rti/mqtt/common/ssl/openssl/reflect/SSLSessionTimeoutSetter;

    iget-object v5, p0, Lcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryHelper;->g:Lcom/facebook/rti/mqtt/common/ssl/openssl/reflect/SocketImplSetter;

    iget-object v6, p0, Lcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryHelper;->h:Lcom/facebook/rti/mqtt/common/ssl/openssl/TicketEnabledOpenSSLSocketFactoryHelper;

    iget v7, p0, Lcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryHelper;->b:I

    invoke-direct/range {v0 .. v7}, Lcom/facebook/rti/mqtt/common/ssl/openssl/TicketEnabledOpenSSLSocketFactory;-><init>(Ljavax/net/ssl/SSLSocketFactory;Lcom/facebook/rti/mqtt/common/ssl/socket/SSLVerifier;Lcom/facebook/rti/mqtt/common/ssl/openssl/reflect/SSLParametersGetter;Lcom/facebook/rti/mqtt/common/ssl/openssl/reflect/SSLSessionTimeoutSetter;Lcom/facebook/rti/mqtt/common/ssl/openssl/reflect/SocketImplSetter;Lcom/facebook/rti/mqtt/common/ssl/openssl/TicketEnabledOpenSSLSocketFactoryHelper;I)V
    :try_end_0
    .catch Lcom/facebook/rti/mqtt/common/ssl/openssl/UnsupportedOpenSSLVersionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 128
    :catch_0
    move-exception v0

    .line 129
    sget-object v1, Lcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryHelper;->a:Ljava/lang/String;

    const-string v2, "exception occurred while trying to create the socket factory"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/facebook/rti/common/log/BLog;->b(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    :cond_1
    invoke-direct {p0, p1}, Lcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryHelper;->b(Lorg/apache/http/conn/scheme/SocketFactory;)Lorg/apache/http/conn/scheme/SocketFactory;

    move-result-object v0

    goto :goto_0
.end method
