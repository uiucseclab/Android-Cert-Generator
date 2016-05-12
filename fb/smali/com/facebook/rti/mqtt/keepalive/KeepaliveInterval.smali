.class public Lcom/facebook/rti/mqtt/keepalive/KeepaliveInterval;
.super Ljava/lang/Object;
.source "setRegenerateOnNextLoadHint called without a main dex store present"

# interfaces
.implements Lcom/facebook/rti/common/util/NonInjectProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/rti/common/util/NonInjectProvider",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveInterval;->a:I

    .line 13
    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 7
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/keepalive/KeepaliveInterval;->b()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized a(I)Z
    .locals 1

    .prologue
    .line 26
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveInterval;->a:I

    if-eq v0, p1, :cond_0

    .line 27
    iput p1, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveInterval;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    const/4 v0, 0x1

    .line 30
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 26
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 17
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveInterval;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveInterval;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
