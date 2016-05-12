.class public Lcom/facebook/rti/mqtt/common/ssl/openssl/check/CheckFakeSocketImpl;
.super Ljava/lang/Object;
.source "service_session_id"

# interfaces
.implements Lcom/facebook/rti/mqtt/common/ssl/openssl/check/OpenSSLEnvironmentCheck;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .prologue
    .line 17
    .line 84
    sget-boolean v1, Lcom/facebook/rti/mqtt/common/ssl/openssl/reflect/FakeSocketImpl;->d:Z

    move v0, v1

    return v0
.end method
