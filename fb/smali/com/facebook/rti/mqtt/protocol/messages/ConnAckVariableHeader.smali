.class public Lcom/facebook/rti/mqtt/protocol/messages/ConnAckVariableHeader;
.super Ljava/lang/Object;
.source "rti.mqtt.analytics"


# instance fields
.field public final a:B


# direct methods
.method public constructor <init>(B)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-byte p1, p0, Lcom/facebook/rti/mqtt/protocol/messages/ConnAckVariableHeader;->a:B

    .line 19
    return-void
.end method
