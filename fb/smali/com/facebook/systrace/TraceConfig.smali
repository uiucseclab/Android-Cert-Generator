.class public final Lcom/facebook/systrace/TraceConfig;
.super Ljava/lang/Object;
.source "video_seek_source_time_position"


# static fields
.field private static final a:Ljava/lang/Object;

.field private static final b:Ljava/util/List;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BadMethodUse-java.util.ArrayList._Constructor"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/systrace/TraceListener;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "sLock"
    .end annotation
.end field

.field public static volatile c:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 17
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/facebook/systrace/TraceConfig;->a:Ljava/lang/Object;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/facebook/systrace/TraceConfig;->b:Ljava/util/List;

    .line 22
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/facebook/systrace/TraceConfig;->c:J

    .line 25
    .line 34
    invoke-static {}, Lcom/facebook/systrace/TraceConfig;->e()V

    .line 36
    new-instance v2, Lcom/facebook/systrace/TraceConfig$1;

    invoke-direct {v2}, Lcom/facebook/systrace/TraceConfig$1;-><init>()V

    invoke-static {v2}, Lcom/facebook/androidinternals/android/os/SystemPropertiesInternal;->a(Ljava/lang/Runnable;)V

    .line 43
    .line 26
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method public static final a(Lcom/facebook/systrace/TraceListener;)V
    .locals 6

    .prologue
    .line 49
    sget-object v1, Lcom/facebook/systrace/TraceConfig;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 50
    :try_start_0
    sget-object v0, Lcom/facebook/systrace/TraceConfig;->b:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    sget-wide v2, Lcom/facebook/systrace/TraceConfig;->c:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 53
    invoke-interface {p0}, Lcom/facebook/systrace/TraceListener;->a()V

    .line 55
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static final a(J)Z
    .locals 4

    .prologue
    .line 106
    sget-wide v0, Lcom/facebook/systrace/TraceConfig;->c:J

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final b(Lcom/facebook/systrace/TraceListener;)V
    .locals 6

    .prologue
    .line 59
    sget-object v1, Lcom/facebook/systrace/TraceConfig;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 60
    :try_start_0
    sget-object v0, Lcom/facebook/systrace/TraceConfig;->b:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 61
    sget-wide v2, Lcom/facebook/systrace/TraceConfig;->c:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 62
    invoke-interface {p0}, Lcom/facebook/systrace/TraceListener;->b()V

    .line 64
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static final e()V
    .locals 10

    .prologue
    const-wide/16 v2, 0x0

    .line 68
    invoke-static {}, Lcom/facebook/systrace/SystraceEnabledDetector;->a()Z

    move-result v0

    .line 69
    .line 89
    const-string v6, "debug.fbsystrace.tags"

    const-wide/16 v8, 0x0

    invoke-static {v6, v8, v9}, Lcom/facebook/androidinternals/android/os/SystemPropertiesInternal;->a(Ljava/lang/String;J)J

    move-result-wide v6

    move-wide v4, v6

    .line 70
    if-eqz v0, :cond_0

    cmp-long v0, v4, v2

    if-nez v0, :cond_4

    :cond_0
    move-wide v0, v2

    .line 75
    :goto_0
    sget-wide v4, Lcom/facebook/systrace/TraceConfig;->c:J

    cmp-long v4, v4, v2

    if-nez v4, :cond_1

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    :cond_1
    cmp-long v4, v0, v2

    if-nez v4, :cond_5

    sget-wide v4, Lcom/facebook/systrace/TraceConfig;->c:J

    cmp-long v2, v4, v2

    if-eqz v2, :cond_5

    :cond_2
    const/4 v2, 0x1

    .line 77
    :goto_1
    sput-wide v0, Lcom/facebook/systrace/TraceConfig;->c:J

    .line 78
    if-eqz v2, :cond_3

    .line 79
    sget-wide v0, Lcom/facebook/systrace/TraceConfig;->c:J

    .line 175
    sget-boolean v6, Lcom/facebook/systrace/TraceDirect;->b:Z

    if-eqz v6, :cond_6

    .line 180
    .line 80
    :goto_2
    invoke-static {}, Lcom/facebook/systrace/TraceConfig;->g()V

    .line 82
    :cond_3
    return-void

    .line 73
    :cond_4
    const-wide/16 v0, 0x1

    or-long/2addr v0, v4

    goto :goto_0

    .line 75
    :cond_5
    const/4 v2, 0x0

    goto :goto_1

    .line 179
    :cond_6
    invoke-static {v0, v1}, Lcom/facebook/systrace/TraceDirect;->nativeSetEnabledTags(J)V

    goto :goto_2
.end method

.method private static g()V
    .locals 8

    .prologue
    .line 93
    sget-object v2, Lcom/facebook/systrace/TraceConfig;->a:Ljava/lang/Object;

    monitor-enter v2

    .line 94
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    sget-object v0, Lcom/facebook/systrace/TraceConfig;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 95
    sget-object v0, Lcom/facebook/systrace/TraceConfig;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/systrace/TraceListener;

    .line 96
    sget-wide v4, Lcom/facebook/systrace/TraceConfig;->c:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    .line 97
    invoke-interface {v0}, Lcom/facebook/systrace/TraceListener;->a()V

    .line 94
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 99
    :cond_0
    invoke-interface {v0}, Lcom/facebook/systrace/TraceListener;->b()V

    goto :goto_1

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method
