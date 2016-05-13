.class public Lcom/facebook/rti/common/concurrent/IgThread;
.super Ljava/lang/Thread;
.source "s_mqtt_ms"


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 35
    iput p3, p0, Lcom/facebook/rti/common/concurrent/IgThread;->a:I

    .line 36
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/facebook/rti/common/concurrent/IgThread;->a:I

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 41
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 42
    return-void
.end method
