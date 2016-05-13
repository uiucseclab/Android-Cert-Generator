.class Lcom/facebook/rti/mqtt/protocol/AddressResolver$1;
.super Ljava/lang/Object;
.source "served"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/facebook/rti/mqtt/protocol/AddressResolver;


# direct methods
.method constructor <init>(Lcom/facebook/rti/mqtt/protocol/AddressResolver;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/facebook/rti/mqtt/protocol/AddressResolver$1;->b:Lcom/facebook/rti/mqtt/protocol/AddressResolver;

    iput-object p2, p0, Lcom/facebook/rti/mqtt/protocol/AddressResolver$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 178
    const/4 v4, 0x0

    .line 181
    const-string v0, "AddressResolver"

    const-string v1, "resolveAsync executed"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/facebook/rti/common/log/BLog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    new-instance v0, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/AddressResolver$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/AddressResolver$1;->b:Lcom/facebook/rti/mqtt/protocol/AddressResolver;

    iget-object v3, p0, Lcom/facebook/rti/mqtt/protocol/AddressResolver$1;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/facebook/rti/mqtt/protocol/AddressResolver;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2, v4}, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;-><init>(Ljava/lang/String;Ljava/util/List;I)V

    .line 184
    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/AddressResolver$1;->b:Lcom/facebook/rti/mqtt/protocol/AddressResolver;

    invoke-virtual {v1, v0}, Lcom/facebook/rti/mqtt/protocol/AddressResolver;->c(Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;)V

    .line 185
    return-object v0
.end method
