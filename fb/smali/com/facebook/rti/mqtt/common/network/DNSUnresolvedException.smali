.class public Lcom/facebook/rti/mqtt/common/network/DNSUnresolvedException;
.super Ljava/io/IOException;
.source "resolveAsync executed"


# instance fields
.field private mDNSResolveStatus:Lcom/facebook/rti/mqtt/common/network/DNSResolveStatus;


# direct methods
.method public constructor <init>(Lcom/facebook/rti/mqtt/common/network/DNSResolveStatus;)V
    .locals 2

    .prologue
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Status: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 16
    iput-object p1, p0, Lcom/facebook/rti/mqtt/common/network/DNSUnresolvedException;->mDNSResolveStatus:Lcom/facebook/rti/mqtt/common/network/DNSResolveStatus;

    .line 17
    return-void
.end method


# virtual methods
.method public final a()Lcom/facebook/rti/mqtt/common/network/DNSResolveStatus;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/network/DNSUnresolvedException;->mDNSResolveStatus:Lcom/facebook/rti/mqtt/common/network/DNSResolveStatus;

    return-object v0
.end method
