.class public Lcom/facebook/rti/mqtt/common/ssl/openssl/reflect/SocketImplSetter;
.super Ljava/lang/Object;
.source "session["


# static fields
.field private static a:Ljava/lang/reflect/Field;

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    const/4 v0, 0x0

    sput-boolean v0, Lcom/facebook/rti/mqtt/common/ssl/openssl/reflect/SocketImplSetter;->b:Z

    .line 21
    :try_start_0
    const-class v0, Ljava/net/Socket;

    const-string v1, "impl"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 22
    sput-object v0, Lcom/facebook/rti/mqtt/common/ssl/openssl/reflect/SocketImplSetter;->a:Ljava/lang/reflect/Field;

    invoke-static {v0}, Lcom/facebook/rti/common/guavalite/base/Preconditions;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v0, Lcom/facebook/rti/mqtt/common/ssl/openssl/reflect/SocketImplSetter;->a:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 24
    const/4 v0, 0x1

    sput-boolean v0, Lcom/facebook/rti/mqtt/common/ssl/openssl/reflect/SocketImplSetter;->b:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public static a(Ljava/net/Socket;[BLjava/lang/String;I)V
    .locals 2

    .prologue
    .line 69
    :try_start_0
    sget-object v0, Lcom/facebook/rti/mqtt/common/ssl/openssl/reflect/SocketImplSetter;->a:Ljava/lang/reflect/Field;

    new-instance v1, Lcom/facebook/rti/mqtt/common/ssl/openssl/reflect/FakeSocketImpl;

    invoke-direct {v1, p1, p2, p3}, Lcom/facebook/rti/mqtt/common/ssl/openssl/reflect/FakeSocketImpl;-><init>([BLjava/lang/String;I)V

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    return-void

    .line 70
    :catch_0
    move-exception v0

    .line 71
    new-instance v1, Lcom/facebook/rti/mqtt/common/ssl/openssl/UnsupportedOpenSSLVersionException;

    invoke-direct {v1, v0}, Lcom/facebook/rti/mqtt/common/ssl/openssl/UnsupportedOpenSSLVersionException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 35
    sget-boolean v0, Lcom/facebook/rti/mqtt/common/ssl/openssl/reflect/SocketImplSetter;->b:Z

    return v0
.end method
