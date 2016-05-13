.class public Lcom/facebook/rti/mqtt/system/MqttDeviceScreenOnProvider;
.super Ljava/lang/Object;
.source "operationId %d"

# interfaces
.implements Lcom/facebook/rti/common/util/NonInjectProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/rti/common/util/NonInjectProvider",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/facebook/rti/mqtt/system/DeviceUserInteractionManager;


# direct methods
.method public constructor <init>(Lcom/facebook/rti/common/broadcast/LocalBroadcastManager;Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState;Lcom/facebook/rti/common/time/RealtimeSinceBootClock;)V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcom/facebook/rti/mqtt/system/DeviceUserInteractionManager;

    invoke-direct {v0, p1, p2, p3}, Lcom/facebook/rti/mqtt/system/DeviceUserInteractionManager;-><init>(Lcom/facebook/rti/common/broadcast/LocalBroadcastManager;Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState;Lcom/facebook/rti/common/time/RealtimeSinceBootClock;)V

    iput-object v0, p0, Lcom/facebook/rti/mqtt/system/MqttDeviceScreenOnProvider;->a:Lcom/facebook/rti/mqtt/system/DeviceUserInteractionManager;

    .line 20
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 10
    .line 24
    iget-object v0, p0, Lcom/facebook/rti/mqtt/system/MqttDeviceScreenOnProvider;->a:Lcom/facebook/rti/mqtt/system/DeviceUserInteractionManager;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/system/DeviceUserInteractionManager;->a()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
