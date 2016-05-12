.class public Lcom/facebook/rti/mqtt/system/DeviceUserInteractionManager;
.super Ljava/lang/Object;
.source "optdata"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;


# instance fields
.field private final d:Lcom/facebook/rti/common/broadcast/LocalBroadcastManager;

.field private final e:Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState;

.field private final f:Lcom/facebook/rti/common/time/RealtimeSinceBootClock;

.field private volatile g:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/facebook/rti/mqtt/system/DeviceUserInteractionManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".ACTIVITY_MAYBE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/rti/mqtt/system/DeviceUserInteractionManager;->a:Ljava/lang/String;

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/facebook/rti/mqtt/system/DeviceUserInteractionManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".USER_ENTERED_DEVICE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/rti/mqtt/system/DeviceUserInteractionManager;->b:Ljava/lang/String;

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/facebook/rti/mqtt/system/DeviceUserInteractionManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".USER_LEFT_DEVICE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/rti/mqtt/system/DeviceUserInteractionManager;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/rti/common/broadcast/LocalBroadcastManager;Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState;Lcom/facebook/rti/common/time/RealtimeSinceBootClock;)V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/facebook/rti/mqtt/system/DeviceUserInteractionManager;->d:Lcom/facebook/rti/common/broadcast/LocalBroadcastManager;

    .line 38
    iput-object p2, p0, Lcom/facebook/rti/mqtt/system/DeviceUserInteractionManager;->e:Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState;

    .line 39
    iput-object p3, p0, Lcom/facebook/rti/mqtt/system/DeviceUserInteractionManager;->f:Lcom/facebook/rti/common/time/RealtimeSinceBootClock;

    .line 41
    iget-object v0, p0, Lcom/facebook/rti/mqtt/system/DeviceUserInteractionManager;->e:Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState;

    new-instance v1, Lcom/facebook/rti/mqtt/system/DeviceUserInteractionManager$1;

    invoke-direct {v1, p0}, Lcom/facebook/rti/mqtt/system/DeviceUserInteractionManager$1;-><init>(Lcom/facebook/rti/mqtt/system/DeviceUserInteractionManager;)V

    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState;->a(Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState$PowerChangeListener;)V

    .line 52
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/facebook/rti/mqtt/system/DeviceUserInteractionManager;->e:Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState;->a()Z

    move-result v0

    return v0
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 80
    const-string v0, "DeviceUserInteractionManager"

    const-string v1, "onScreenOn"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/facebook/rti/common/log/BLog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    iget-object v0, p0, Lcom/facebook/rti/mqtt/system/DeviceUserInteractionManager;->d:Lcom/facebook/rti/common/broadcast/LocalBroadcastManager;

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/facebook/rti/mqtt/system/DeviceUserInteractionManager;->b:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/facebook/rti/common/broadcast/LocalBroadcastManager;->a(Landroid/content/Intent;)Z

    .line 82
    iget-object v0, p0, Lcom/facebook/rti/mqtt/system/DeviceUserInteractionManager;->d:Lcom/facebook/rti/common/broadcast/LocalBroadcastManager;

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/facebook/rti/mqtt/system/DeviceUserInteractionManager;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/facebook/rti/common/broadcast/LocalBroadcastManager;->a(Landroid/content/Intent;)Z

    .line 84
    return-void
.end method

.method public final c()V
    .locals 3

    .prologue
    .line 87
    const-string v0, "DeviceUserInteractionManager"

    const-string v1, "onScreenOff"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/facebook/rti/common/log/BLog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    iget-object v0, p0, Lcom/facebook/rti/mqtt/system/DeviceUserInteractionManager;->f:Lcom/facebook/rti/common/time/RealtimeSinceBootClock;

    invoke-virtual {v0}, Lcom/facebook/rti/common/time/RealtimeSinceBootClock;->now()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/rti/mqtt/system/DeviceUserInteractionManager;->g:J

    .line 89
    iget-object v0, p0, Lcom/facebook/rti/mqtt/system/DeviceUserInteractionManager;->d:Lcom/facebook/rti/common/broadcast/LocalBroadcastManager;

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/facebook/rti/mqtt/system/DeviceUserInteractionManager;->c:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/facebook/rti/common/broadcast/LocalBroadcastManager;->a(Landroid/content/Intent;)Z

    .line 90
    iget-object v0, p0, Lcom/facebook/rti/mqtt/system/DeviceUserInteractionManager;->d:Lcom/facebook/rti/common/broadcast/LocalBroadcastManager;

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/facebook/rti/mqtt/system/DeviceUserInteractionManager;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/facebook/rti/common/broadcast/LocalBroadcastManager;->a(Landroid/content/Intent;)Z

    .line 92
    return-void
.end method
