.class Lcom/facebook/rti/push/client/SharedConfigProvider$3;
.super Ljava/lang/Object;
.source "subt_err"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic b:Lcom/facebook/rti/push/client/FbnsSharedInitializer$Callback;

.field final synthetic c:Lcom/facebook/rti/push/client/SharedConfigProvider;


# direct methods
.method constructor <init>(Lcom/facebook/rti/push/client/SharedConfigProvider;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/facebook/rti/push/client/FbnsSharedInitializer$Callback;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/facebook/rti/push/client/SharedConfigProvider$3;->c:Lcom/facebook/rti/push/client/SharedConfigProvider;

    iput-object p2, p0, Lcom/facebook/rti/push/client/SharedConfigProvider$3;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lcom/facebook/rti/push/client/SharedConfigProvider$3;->b:Lcom/facebook/rti/push/client/FbnsSharedInitializer$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 143
    iget-object v0, p0, Lcom/facebook/rti/push/client/SharedConfigProvider$3;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/facebook/rti/push/client/SharedConfigProvider$3;->b:Lcom/facebook/rti/push/client/FbnsSharedInitializer$Callback;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/rti/push/client/FbnsSharedInitializer$Callback;->a(Ljava/lang/String;)V

    .line 146
    :cond_0
    return-void
.end method
