.class public Lcom/facebook/rti/mqtt/keepalive/BackgroundKeepaliveOverride;
.super Ljava/lang/Object;
.source "secure-playback"


# instance fields
.field private final a:Lcom/facebook/rti/mqtt/keepalive/KeepaliveParms;

.field private final b:Lcom/facebook/rti/mqtt/keepalive/AdaptiveKeepalive;

.field private final c:Lcom/facebook/rti/mqtt/keepalive/CarrierBasedKeepalive;


# direct methods
.method public constructor <init>(Lcom/facebook/rti/mqtt/keepalive/KeepaliveParms;Lcom/facebook/rti/mqtt/keepalive/AdaptiveKeepalive;Lcom/facebook/rti/mqtt/keepalive/CarrierBasedKeepalive;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/facebook/rti/mqtt/keepalive/BackgroundKeepaliveOverride;->a:Lcom/facebook/rti/mqtt/keepalive/KeepaliveParms;

    .line 16
    iput-object p2, p0, Lcom/facebook/rti/mqtt/keepalive/BackgroundKeepaliveOverride;->b:Lcom/facebook/rti/mqtt/keepalive/AdaptiveKeepalive;

    .line 17
    iput-object p3, p0, Lcom/facebook/rti/mqtt/keepalive/BackgroundKeepaliveOverride;->c:Lcom/facebook/rti/mqtt/keepalive/CarrierBasedKeepalive;

    .line 18
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/facebook/rti/mqtt/keepalive/BackgroundKeepaliveOverride;->a:Lcom/facebook/rti/mqtt/keepalive/KeepaliveParms;

    invoke-interface {v0}, Lcom/facebook/rti/mqtt/keepalive/KeepaliveParms;->a()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 26
    iget-object v0, p0, Lcom/facebook/rti/mqtt/keepalive/BackgroundKeepaliveOverride;->a:Lcom/facebook/rti/mqtt/keepalive/KeepaliveParms;

    invoke-interface {v0}, Lcom/facebook/rti/mqtt/keepalive/KeepaliveParms;->b()I

    move-result v0

    :goto_0
    return v0

    .line 23
    :pswitch_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/keepalive/BackgroundKeepaliveOverride;->b:Lcom/facebook/rti/mqtt/keepalive/AdaptiveKeepalive;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/keepalive/AdaptiveKeepalive;->a()I

    move-result v0

    goto :goto_0

    .line 25
    :pswitch_1
    iget-object v0, p0, Lcom/facebook/rti/mqtt/keepalive/BackgroundKeepaliveOverride;->c:Lcom/facebook/rti/mqtt/keepalive/CarrierBasedKeepalive;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/keepalive/CarrierBasedKeepalive;->a()I

    move-result v0

    goto :goto_0

    .line 21
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
