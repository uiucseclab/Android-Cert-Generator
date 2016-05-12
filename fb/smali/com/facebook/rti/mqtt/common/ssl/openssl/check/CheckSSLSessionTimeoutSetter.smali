.class public Lcom/facebook/rti/mqtt/common/ssl/openssl/check/CheckSSLSessionTimeoutSetter;
.super Ljava/lang/Object;
.source "server_blocked"

# interfaces
.implements Lcom/facebook/rti/mqtt/common/ssl/openssl/check/OpenSSLEnvironmentCheck;


# instance fields
.field private final a:Lcom/facebook/rti/mqtt/common/ssl/openssl/reflect/SSLSessionTimeoutSetter;


# direct methods
.method public constructor <init>(Lcom/facebook/rti/mqtt/common/ssl/openssl/reflect/SSLSessionTimeoutSetter;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/facebook/rti/mqtt/common/ssl/openssl/check/CheckSSLSessionTimeoutSetter;->a:Lcom/facebook/rti/mqtt/common/ssl/openssl/reflect/SSLSessionTimeoutSetter;

    .line 16
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .prologue
    .line 20
    .line 38
    sget-boolean v1, Lcom/facebook/rti/mqtt/common/ssl/openssl/reflect/SSLSessionTimeoutSetter;->b:Z

    move v0, v1

    return v0
.end method
