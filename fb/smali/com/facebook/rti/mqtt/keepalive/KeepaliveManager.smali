.class public Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;
.super Ljava/lang/Object;
.source "sendMqttHealthStats %s"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x3
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# static fields
.field public static final a:Ljava/lang/String;
    .annotation build Lcom/facebook/rti/common/guavalite/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Ljava/lang/String;

.field private final d:Landroid/content/Context;

.field private final e:Lcom/facebook/rti/mqtt/keepalive/KeepaliveInterval;

.field public final f:Landroid/app/AlarmManager;

.field public final g:Lcom/facebook/rti/common/time/RealtimeSinceBootClock;

.field public final h:I

.field private final i:Landroid/os/Handler;

.field private final j:Landroid/content/BroadcastReceiver;

.field public final k:Landroid/app/PendingIntent;

.field public volatile l:Ljava/lang/Runnable;

.field public m:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field public n:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field public o:J
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field public p:J
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".ACTION_INEXACT_ALARM."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->a:Ljava/lang/String;

    .line 54
    new-instance v0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager$1;

    invoke-direct {v0}, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager$1;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->c:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/rti/mqtt/manager/MqttPushService;Lcom/facebook/rti/mqtt/keepalive/KeepaliveInterval;Lcom/facebook/rti/common/time/RealtimeSinceBootClock;Landroid/app/AlarmManager;Landroid/os/Handler;)V
    .locals 3

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->d:Landroid/content/Context;

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 106
    invoke-virtual {p1}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 107
    invoke-static {v1}, Lcom/facebook/rti/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 108
    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->b:Ljava/lang/String;

    .line 111
    iput-object p2, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->e:Lcom/facebook/rti/mqtt/keepalive/KeepaliveInterval;

    .line 112
    iput-object p4, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->f:Landroid/app/AlarmManager;

    .line 113
    iput-object p3, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->g:Lcom/facebook/rti/common/time/RealtimeSinceBootClock;

    .line 114
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iput v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->h:I

    .line 115
    iput-object p5, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->i:Landroid/os/Handler;

    .line 116
    new-instance v0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager$2;

    invoke-direct {v0, p0}, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager$2;-><init>(Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;)V

    iput-object v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->j:Landroid/content/BroadcastReceiver;

    .line 155
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p1}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    const/4 v1, 0x0

    const/high16 v2, 0x8000000

    invoke-static {p1, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->k:Landroid/app/PendingIntent;

    .line 162
    return-void
.end method

.method static synthetic a(Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;J)J
    .locals 1

    .prologue
    .line 40
    iput-wide p1, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->p:J

    return-wide p1
.end method

.method private declared-synchronized a(J)V
    .locals 1

    .prologue
    .line 207
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->m:Z

    if-nez v0, :cond_0

    .line 208
    iput-wide p1, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->o:J

    .line 210
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    :goto_0
    monitor-exit p0

    return-void

    .line 213
    :cond_0
    :try_start_1
    iput-wide p1, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->o:J

    .line 214
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->f()V

    .line 215
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->d()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 207
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static b(J)J
    .locals 6
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .prologue
    const-wide/32 v2, 0xdbba0

    .line 320
    cmp-long v0, p0, v2

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/rti/common/guavalite/base/Preconditions;->a(Z)V

    .line 321
    sget-object v0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 322
    cmp-long v5, p0, v0

    if-ltz v5, :cond_0

    .line 326
    :goto_1
    return-wide v0

    .line 320
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move-wide v0, v2

    .line 326
    goto :goto_1
.end method

.method private d()V
    .locals 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetRepeatingUse",
            "SetInexactRepeatingArgs"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .prologue
    const-wide/32 v10, 0xdbba0

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v1, 0x2

    .line 233
    iput-boolean v9, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->m:Z

    .line 235
    iget-object v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->g:Lcom/facebook/rti/common/time/RealtimeSinceBootClock;

    invoke-virtual {v0}, Lcom/facebook/rti/common/time/RealtimeSinceBootClock;->now()J

    move-result-wide v2

    .line 236
    iget-wide v4, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->o:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->p:J

    .line 237
    iget-wide v4, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->p:J

    .line 239
    iget-wide v6, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->o:J

    cmp-long v0, v6, v10

    if-ltz v0, :cond_3

    .line 244
    iget-wide v4, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->o:J

    invoke-static {v4, v5}, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->b(J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->o:J

    .line 259
    :goto_0
    iget v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->h:I

    const/16 v4, 0x17

    if-lt v0, v4, :cond_1

    .line 260
    iput-boolean v8, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->n:Z

    .line 261
    iget-wide v4, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->o:J

    cmp-long v0, v4, v10

    if-gez v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->f:Landroid/app/AlarmManager;

    iget-object v4, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->k:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    .line 289
    :goto_1
    const-string v0, "KeepaliveManager"

    const-string v1, "Scheduling repeating keepalive with %s seconds"

    new-array v2, v9, [Ljava/lang/Object;

    iget-wide v4, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->o:J

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v0, v1, v2}, Lcom/facebook/rti/common/log/BLog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 290
    return-void

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->f:Landroid/app/AlarmManager;

    iget-object v4, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->k:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->setAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    goto :goto_1

    .line 273
    :cond_1
    iget v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->h:I

    const/16 v4, 0x13

    if-lt v0, v4, :cond_2

    iget-wide v4, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->o:J

    cmp-long v0, v4, v10

    if-gez v0, :cond_2

    .line 275
    iput-boolean v8, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->n:Z

    .line 277
    iget-object v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->f:Landroid/app/AlarmManager;

    iget-object v4, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->k:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_1

    .line 282
    :cond_2
    iput-boolean v9, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->n:Z

    .line 283
    iget-object v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->f:Landroid/app/AlarmManager;

    iget-wide v4, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->o:J

    iget-object v6, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->k:Landroid/app/PendingIntent;

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    goto :goto_1

    :cond_3
    move-wide v2, v4

    goto :goto_0
.end method

.method private e()V
    .locals 1
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .prologue
    .line 297
    iget-boolean v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->m:Z

    if-nez v0, :cond_0

    .line 298
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->d()V

    .line 300
    :cond_0
    return-void
.end method

.method private f()V
    .locals 3
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 307
    iget-boolean v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->m:Z

    if-eqz v0, :cond_0

    .line 308
    iput-boolean v2, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->m:Z

    .line 310
    const-string v0, "KeepaliveManager"

    const-string v1, "Stopping the alarm."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/facebook/rti/common/log/BLog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 311
    iget-object v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->f:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->k:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 313
    :cond_0
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 8

    .prologue
    .line 178
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->m:Z

    if-nez v0, :cond_0

    .line 179
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    :goto_0
    monitor-exit p0

    return-void

    .line 181
    :cond_0
    :try_start_1
    const-string v0, "KeepaliveManager"

    const-string v1, "Alarm has already been scheduled. Expected to fire in %d seconds"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->p:J

    iget-object v6, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->g:Lcom/facebook/rti/common/time/RealtimeSinceBootClock;

    invoke-virtual {v6}, Lcom/facebook/rti/common/time/RealtimeSinceBootClock;->now()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/facebook/rti/common/log/BLog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 178
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/Runnable;)V
    .locals 5

    .prologue
    .line 166
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->l:Ljava/lang/Runnable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 171
    :goto_0
    monitor-exit p0

    return-void

    .line 169
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->l:Ljava/lang/Runnable;

    .line 170
    iget-object v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->j:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    iget-object v3, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->b:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->i:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 166
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()V
    .locals 2

    .prologue
    .line 192
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->e:Lcom/facebook/rti/mqtt/keepalive/KeepaliveInterval;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/keepalive/KeepaliveInterval;->b()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->a(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    monitor-exit p0

    return-void

    .line 192
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()V
    .locals 2

    .prologue
    .line 223
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->f()V

    .line 224
    const-wide/32 v0, 0xdbba0

    iput-wide v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->o:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    monitor-exit p0

    return-void

    .line 223
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
