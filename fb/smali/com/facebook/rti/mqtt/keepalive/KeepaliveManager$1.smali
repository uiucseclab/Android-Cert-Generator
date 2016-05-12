.class final Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager$1;
.super Ljava/util/ArrayList;
.source "sendMqttHealthStats %s"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 56
    const-wide/32 v0, 0x5265c00

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager$1;->add(Ljava/lang/Object;)Z

    .line 57
    const-wide/32 v0, 0x2932e00

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager$1;->add(Ljava/lang/Object;)Z

    .line 58
    const-wide/32 v0, 0x36ee80

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager$1;->add(Ljava/lang/Object;)Z

    .line 59
    const-wide/32 v0, 0x1b7740

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager$1;->add(Ljava/lang/Object;)Z

    .line 60
    const-wide/32 v0, 0xdbba0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager$1;->add(Ljava/lang/Object;)Z

    .line 61
    return-void
.end method
