.class final Lcom/facebook/forker/Process$WaiterThread;
.super Ljava/lang/Thread;
.source "thread_view_dismiss"


# instance fields
.field final synthetic this$0:Lcom/facebook/forker/Process;


# direct methods
.method constructor <init>(Lcom/facebook/forker/Process;)V
    .locals 1

    .prologue
    .line 432
    iput-object p1, p0, Lcom/facebook/forker/Process$WaiterThread;->this$0:Lcom/facebook/forker/Process;

    .line 433
    const-string v0, "PidWaiter:Ready"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 434
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lcom/facebook/forker/Process$WaiterThread;->this$0:Lcom/facebook/forker/Process;

    invoke-virtual {v0}, Lcom/facebook/forker/Process;->nativeWait()V

    .line 439
    return-void
.end method
