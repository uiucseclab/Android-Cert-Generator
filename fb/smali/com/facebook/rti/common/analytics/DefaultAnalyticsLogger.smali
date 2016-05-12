.class public Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger;
.super Ljava/lang/Object;
.source "sidx"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/app/AlarmManager;

.field public final c:Lcom/facebook/rti/common/util/NonInjectProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/rti/common/util/NonInjectProvider",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public g:Lcom/facebook/rti/common/analytics/AnalyticsSession;

.field public final h:Landroid/os/Handler;

.field public final i:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Lcom/facebook/rti/common/concurrent/SerialExecutor;

.field public final k:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final l:Ljava/lang/Runnable;

.field private final m:Lcom/facebook/rti/common/analytics/AnalyticsStorage;

.field public final n:Lcom/facebook/rti/common/analytics/AnalyticsUploader;

.field private final o:Lcom/facebook/rti/common/analytics/AnalyticsSamplePolicy;

.field public final p:Landroid/content/SharedPreferences;

.field private final q:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/rti/common/util/NonInjectProvider;Lcom/facebook/rti/common/analytics/AnalyticsSamplePolicy;Landroid/content/SharedPreferences;Lcom/facebook/rti/common/util/NonInjectProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/rti/common/util/NonInjectProvider",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/rti/common/analytics/AnalyticsSamplePolicy;",
            "Landroid/content/SharedPreferences;",
            "Lcom/facebook/rti/common/util/NonInjectProvider",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger;->i:Ljava/util/Queue;

    .line 80
    invoke-static {}, Lcom/facebook/rti/common/concurrent/SerialExecutor$Builder;->a()Lcom/facebook/rti/common/concurrent/SerialExecutor$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/rti/common/concurrent/SerialExecutor$Builder;->b()Lcom/facebook/rti/common/concurrent/SerialExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger;->j:Lcom/facebook/rti/common/concurrent/SerialExecutor;

    .line 81
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 120
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger;->a:Landroid/content/Context;

    .line 121
    iput-object p4, p0, Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger;->p:Landroid/content/SharedPreferences;

    .line 122
    iget-object v0, p0, Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger;->a:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger;->b:Landroid/app/AlarmManager;

    .line 123
    iput-object p5, p0, Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger;->c:Lcom/facebook/rti/common/util/NonInjectProvider;

    .line 124
    iput-object p8, p0, Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger;->e:Ljava/lang/String;

    .line 125
    iput-object p7, p0, Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger;->d:Ljava/lang/String;

    .line 126
    iput-object p9, p0, Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger;->f:Ljava/lang/String;

    .line 128
    new-instance v0, Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger$1;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger$1;-><init>(Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger;->h:Landroid/os/Handler;

    .line 139
    new-instance v0, Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger$AnalyticsBackgroundWorker;

    const/4 v1, 0x0

    invoke-direct {v0, p0}, Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger$AnalyticsBackgroundWorker;-><init>(Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger;)V

    iput-object v0, p0, Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger;->l:Ljava/lang/Runnable;

    .line 140
    new-instance v0, Lcom/facebook/rti/common/analytics/AnalyticsStorage;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/rti/common/analytics/AnalyticsStorage;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger;->m:Lcom/facebook/rti/common/analytics/AnalyticsStorage;

    .line 141
    new-instance v0, Lcom/facebook/rti/common/analytics/AnalyticsUploader;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p6

    move-object v4, p9

    move-object/from16 v5, p10

    invoke-direct/range {v0 .. v5}, Lcom/facebook/rti/common/analytics/AnalyticsUploader;-><init>(Landroid/content/Context;Lcom/facebook/rti/common/util/NonInjectProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger;->n:Lcom/facebook/rti/common/analytics/AnalyticsUploader;

    .line 142
    iput-object p3, p0, Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger;->o:Lcom/facebook/rti/common/analytics/AnalyticsSamplePolicy;

    .line 143
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iput v0, p0, Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger;->q:I

    .line 145
    invoke-static {p0}, Lcom/facebook/rti/common/analytics/Analytics;->a(Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger;)V

    .line 147
    invoke-direct {p0}, Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger;->d()V

    .line 148
    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 93
    invoke-static {p0}, Lcom/facebook/rti/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "0"

    :cond_0
    return-object p0
.end method

.method private d()V
    .locals 8

    .prologue
    .line 162
    iget-object v0, p0, Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger;->g:Lcom/facebook/rti/common/analytics/AnalyticsSession;

    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {p0}, Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger;->f()V

    .line 166
    :cond_0
    const-string v0, "DefaultAnalyticsLogger"

    const-string v1, "Starting new session"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/facebook/rti/common/log/BLog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    .line 171
    new-instance v3, Lcom/facebook/rti/common/analytics/AnalyticsSession;

    invoke-direct {v3}, Lcom/facebook/rti/common/analytics/AnalyticsSession;-><init>()V

    .line 172
    iget-object v4, p0, Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/facebook/rti/common/analytics/AnalyticsSession;->a(Ljava/lang/String;)V

    .line 173
    iget-object v4, p0, Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/facebook/rti/common/analytics/AnalyticsSession;->b(Ljava/lang/String;)V

    .line 174
    .line 151
    iget-object v5, p0, Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger;->p:Landroid/content/SharedPreferences;

    const-string v6, "fb_uid"

    const-string v7, ""

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    invoke-virtual {v3, v4}, Lcom/facebook/rti/common/analytics/AnalyticsSession;->d(Ljava/lang/String;)V

    .line 175
    iget-object v4, p0, Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/facebook/rti/common/analytics/AnalyticsSession;->c(Ljava/lang/String;)V

    .line 176
    iget-object v4, p0, Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger;->c:Lcom/facebook/rti/common/util/NonInjectProvider;

    invoke-virtual {v3, v4}, Lcom/facebook/rti/common/analytics/AnalyticsSession;->a(Lcom/facebook/rti/common/util/NonInjectProvider;)V

    .line 178
    move-object v0, v3

    iput-object v0, p0, Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger;->g:Lcom/facebook/rti/common/analytics/AnalyticsSession;

    .line 168
    return-void
.end method

.method private g()Landroid/app/PendingIntent;
    .locals 4

    .prologue
    .line 201
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger;->a:Landroid/content/Context;

    const-class v2, Lcom/facebook/rti/common/analytics/AnalyticsUploadAlarmReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 202
    iget-object v1, p0, Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 203
    iget-object v1, p0, Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger;->a:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private j()V
    .locals 3

    .prologue
    .line 239
    iget-object v0, p0, Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger;->j:Lcom/facebook/rti/common/concurrent/SerialExecutor;

    iget-object v1, p0, Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger;->l:Ljava/lang/Runnable;

    const v2, -0x43e2cae9

    invoke-static {v0, v1, v2}, Lcom/facebook/tools/dextr/runtime/detour/ExecutorDetour;->a(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;I)V

    .line 242
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 229
    new-instance v0, Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger$UploadRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0}, Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger$UploadRunnable;-><init>(Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger;)V

    invoke-virtual {p0, v0}, Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger;->a(Ljava/lang/Runnable;)V

    .line 230
    return-void
.end method

.method public final a(Lcom/facebook/rti/common/analytics/AnalyticsEvent;)V
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger;->o:Lcom/facebook/rti/common/analytics/AnalyticsSamplePolicy;

    invoke-interface {v0}, Lcom/facebook/rti/common/analytics/AnalyticsSamplePolicy;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    new-instance v0, Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger$EventRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1}, Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger$EventRunnable;-><init>(Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger;Lcom/facebook/rti/common/analytics/AnalyticsEvent;)V

    invoke-virtual {p0, v0}, Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger;->a(Ljava/lang/Runnable;)V

    .line 198
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger;->i:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 235
    invoke-direct {p0}, Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger;->j()V

    .line 236
    return-void
.end method

.method public final b(Lcom/facebook/rti/common/analytics/AnalyticsEvent;)V
    .locals 4

    .prologue
    .line 250
    .line 155
    iget-object v1, p0, Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger;->p:Landroid/content/SharedPreferences;

    const-string v2, "user_id"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    invoke-virtual {p1, v0}, Lcom/facebook/rti/common/analytics/AnalyticsEvent;->a(Ljava/lang/String;)Lcom/facebook/rti/common/analytics/AnalyticsEvent;

    .line 251
    return-void
.end method

.method public final f()V
    .locals 5

    .prologue
    .line 186
    iget-object v0, p0, Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger;->g:Lcom/facebook/rti/common/analytics/AnalyticsSession;

    invoke-virtual {v0}, Lcom/facebook/rti/common/analytics/AnalyticsSession;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 187
    const-string v0, "DefaultAnalyticsLogger"

    const-string v1, "Storing batch %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger;->g:Lcom/facebook/rti/common/analytics/AnalyticsSession;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/facebook/rti/common/log/BLog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 188
    iget-object v0, p0, Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger;->m:Lcom/facebook/rti/common/analytics/AnalyticsStorage;

    iget-object v1, p0, Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger;->g:Lcom/facebook/rti/common/analytics/AnalyticsSession;

    invoke-virtual {v0, v1}, Lcom/facebook/rti/common/analytics/AnalyticsStorage;->a(Lcom/facebook/rti/common/analytics/AnalyticsSession;)V

    .line 189
    iget-object v0, p0, Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger;->g:Lcom/facebook/rti/common/analytics/AnalyticsSession;

    invoke-virtual {v0}, Lcom/facebook/rti/common/analytics/AnalyticsSession;->a()V

    .line 191
    :cond_0
    return-void
.end method

.method public final h()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 211
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/32 v2, 0x6ddd00

    add-long/2addr v0, v2

    .line 212
    iget v2, p0, Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger;->q:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_0

    .line 213
    iget-object v2, p0, Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger;->b:Landroid/app/AlarmManager;

    invoke-direct {p0}, Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger;->g()Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v2, v4, v0, v1, v3}, Landroid/app/AlarmManager;->setAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    .line 220
    :goto_0
    const-string v0, "DefaultAnalyticsLogger"

    const-string v1, "scheduleUploadAlarm"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/facebook/rti/common/log/BLog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 221
    return-void

    .line 218
    :cond_0
    iget-object v2, p0, Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger;->b:Landroid/app/AlarmManager;

    invoke-direct {p0}, Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger;->g()Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v2, v4, v0, v1, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public final i()V
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger;->b:Landroid/app/AlarmManager;

    invoke-direct {p0}, Lcom/facebook/rti/common/analytics/DefaultAnalyticsLogger;->g()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 225
    return-void
.end method
