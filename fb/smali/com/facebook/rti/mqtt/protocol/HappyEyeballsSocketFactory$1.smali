.class Lcom/facebook/rti/mqtt/protocol/HappyEyeballsSocketFactory$1;
.super Ljava/lang/Object;
.source "requested_playing"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/net/Socket;

.field final synthetic b:Ljava/net/Socket;

.field final synthetic c:Lcom/facebook/rti/mqtt/protocol/HappyEyeballsSocketFactory;


# direct methods
.method constructor <init>(Lcom/facebook/rti/mqtt/protocol/HappyEyeballsSocketFactory;Ljava/net/Socket;Ljava/net/Socket;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/facebook/rti/mqtt/protocol/HappyEyeballsSocketFactory$1;->c:Lcom/facebook/rti/mqtt/protocol/HappyEyeballsSocketFactory;

    iput-object p2, p0, Lcom/facebook/rti/mqtt/protocol/HappyEyeballsSocketFactory$1;->a:Ljava/net/Socket;

    iput-object p3, p0, Lcom/facebook/rti/mqtt/protocol/HappyEyeballsSocketFactory$1;->b:Ljava/net/Socket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 81
    .line 84
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/HappyEyeballsSocketFactory$1;->c:Lcom/facebook/rti/mqtt/protocol/HappyEyeballsSocketFactory;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/HappyEyeballsSocketFactory$1;->a:Ljava/net/Socket;

    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/HappyEyeballsSocketFactory$1;->c:Lcom/facebook/rti/mqtt/protocol/HappyEyeballsSocketFactory;

    iget-object v2, v2, Lcom/facebook/rti/mqtt/protocol/HappyEyeballsSocketFactory;->c:Ljava/net/InetAddress;

    iget-object v3, p0, Lcom/facebook/rti/mqtt/protocol/HappyEyeballsSocketFactory$1;->b:Ljava/net/Socket;

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/rti/mqtt/protocol/HappyEyeballsSocketFactory;->a(Ljava/net/Socket;Ljava/net/InetAddress;Ljava/net/Socket;)V

    .line 85
    const/4 v0, 0x0

    return-object v0
.end method
