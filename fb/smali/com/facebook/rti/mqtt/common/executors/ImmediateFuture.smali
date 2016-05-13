.class public Lcom/facebook/rti/mqtt/common/executors/ImmediateFuture;
.super Ljava/lang/Object;
.source "schemeIdUri"

# interfaces
.implements Ljava/util/concurrent/Future;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Future",
        "<TV;>;"
    }
.end annotation


# static fields
.field public static final a:Lcom/facebook/rti/mqtt/common/executors/ImmediateFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/rti/mqtt/common/executors/ImmediateFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 11
    new-instance v0, Lcom/facebook/rti/mqtt/common/executors/ImmediateFuture;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/rti/mqtt/common/executors/ImmediateFuture;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/facebook/rti/mqtt/common/executors/ImmediateFuture;->a:Lcom/facebook/rti/mqtt/common/executors/ImmediateFuture;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/facebook/rti/mqtt/common/executors/ImmediateFuture;->b:Ljava/lang/Object;

    .line 17
    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    return v0
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 26
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/executors/ImmediateFuture;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/common/executors/ImmediateFuture;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isCancelled()Z
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public isDone()Z
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x1

    return v0
.end method
