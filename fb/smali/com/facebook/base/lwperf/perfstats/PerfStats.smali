.class public Lcom/facebook/base/lwperf/perfstats/PerfStats;
.super Ljava/lang/Object;
.source "zip file %s did not contain a classes.dex"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Z

.field private c:Z

.field public d:I

.field private e:I

.field private f:I

.field private g:J

.field public h:J

.field private i:J

.field public j:J

.field private k:Lcom/facebook/common/dextricks/ClassLoadingStats$SnapshotStats;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/facebook/base/lwperf/perfstats/PerfStats;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-direct {p0}, Lcom/facebook/base/lwperf/perfstats/PerfStats;->o()V

    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/facebook/base/lwperf/perfstats/PerfStats;)V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-direct {p0}, Lcom/facebook/base/lwperf/perfstats/PerfStats;->o()V

    .line 42
    if-eqz p1, :cond_0

    .line 43
    iget v0, p1, Lcom/facebook/base/lwperf/perfstats/PerfStats;->d:I

    iput v0, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->d:I

    .line 44
    iget v0, p1, Lcom/facebook/base/lwperf/perfstats/PerfStats;->e:I

    iput v0, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->e:I

    .line 45
    iget-wide v0, p1, Lcom/facebook/base/lwperf/perfstats/PerfStats;->g:J

    iput-wide v0, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->g:J

    .line 46
    iget-wide v0, p1, Lcom/facebook/base/lwperf/perfstats/PerfStats;->h:J

    iput-wide v0, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->h:J

    .line 47
    iget-wide v0, p1, Lcom/facebook/base/lwperf/perfstats/PerfStats;->i:J

    iput-wide v0, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->i:J

    .line 48
    iget-wide v0, p1, Lcom/facebook/base/lwperf/perfstats/PerfStats;->j:J

    iput-wide v0, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->j:J

    .line 49
    iget-object v0, p1, Lcom/facebook/base/lwperf/perfstats/PerfStats;->k:Lcom/facebook/common/dextricks/ClassLoadingStats$SnapshotStats;

    iput-object v0, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->k:Lcom/facebook/common/dextricks/ClassLoadingStats$SnapshotStats;

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->b:Z

    .line 52
    :cond_0
    return-void
.end method

.method private o()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const-wide/16 v0, -0x1

    .line 171
    iput-boolean v3, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->b:Z

    .line 172
    iput-boolean v3, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->c:Z

    .line 173
    iput v2, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->d:I

    .line 174
    iput v2, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->e:I

    .line 175
    iput v2, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->f:I

    .line 176
    iput-wide v0, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->g:J

    .line 177
    iput-wide v0, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->h:J

    .line 178
    iput-wide v0, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->i:J

    .line 179
    iput-wide v0, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->j:J

    .line 180
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->k:Lcom/facebook/common/dextricks/ClassLoadingStats$SnapshotStats;

    .line 181
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->b:Z

    return v0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->c:Z

    return v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->e:I

    return v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->f:I

    return v0
.end method

.method public final e()J
    .locals 2

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->g:J

    return-wide v0
.end method

.method public final f()J
    .locals 2

    .prologue
    .line 76
    iget-wide v0, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->i:J

    return-wide v0
.end method

.method public final g()J
    .locals 2

    .prologue
    .line 80
    iget-wide v0, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->h:J

    return-wide v0
.end method

.method public final h()J
    .locals 2

    .prologue
    .line 84
    iget-wide v0, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->j:J

    return-wide v0
.end method

.method public final i()I
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->k:Lcom/facebook/common/dextricks/ClassLoadingStats$SnapshotStats;

    iget v0, v0, Lcom/facebook/common/dextricks/ClassLoadingStats$SnapshotStats;->classLoadsAttempted:I

    return v0
.end method

.method public final j()I
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->k:Lcom/facebook/common/dextricks/ClassLoadingStats$SnapshotStats;

    iget v0, v0, Lcom/facebook/common/dextricks/ClassLoadingStats$SnapshotStats;->dexFileQueries:I

    return v0
.end method

.method public final k()Z
    .locals 2

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->c:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->d:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 100
    const/4 v0, 0x1

    .line 103
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final l()Lcom/facebook/base/lwperf/perfstats/PerfStats;
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 114
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    iput v0, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->d:I

    .line 115
    iget v0, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->d:I

    invoke-static {v0}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v0

    iput v0, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->e:I

    .line 116
    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->g:J

    .line 117
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->h:J

    .line 119
    invoke-static {}, Lcom/facebook/base/lwperf/perfstats/ProcIoStats;->b()[J

    move-result-object v0

    .line 120
    aget-wide v0, v0, v2

    iput-wide v0, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->i:J

    .line 121
    invoke-static {}, Lcom/facebook/base/lwperf/perfstats/ProcIoStats;->c()[J

    move-result-object v0

    .line 122
    aget-wide v0, v0, v2

    iput-wide v0, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->j:J

    .line 124
    invoke-static {}, Lcom/facebook/common/dextricks/ClassLoadingStats;->getInstance()Lcom/facebook/common/dextricks/ClassLoadingStats;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/common/dextricks/ClassLoadingStats;->getSnapShot()Lcom/facebook/common/dextricks/ClassLoadingStats$SnapshotStats;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->k:Lcom/facebook/common/dextricks/ClassLoadingStats$SnapshotStats;

    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->b:Z

    .line 127
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->c:Z

    .line 128
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->f:I

    .line 130
    return-object p0
.end method

.method public final m()V
    .locals 13

    .prologue
    const/4 v8, 0x2

    const-wide/16 v6, 0x0

    .line 134
    iget-boolean v0, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->b:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->c:Z

    if-eqz v0, :cond_1

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    .line 139
    invoke-static {v0}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v1

    iput v1, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->f:I

    .line 140
    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->g:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->g:J

    .line 142
    invoke-static {}, Lcom/facebook/base/lwperf/perfstats/ProcIoStats;->b()[J

    move-result-object v1

    .line 143
    aget-wide v2, v1, v8

    iget-wide v4, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->i:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->i:J

    .line 144
    iget v1, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->d:I

    if-ne v0, v1, :cond_4

    .line 145
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->h:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->h:J

    .line 147
    invoke-static {}, Lcom/facebook/base/lwperf/perfstats/ProcIoStats;->c()[J

    move-result-object v0

    .line 148
    aget-wide v0, v0, v8

    iget-wide v2, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->j:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->j:J

    .line 153
    :goto_1
    invoke-static {}, Lcom/facebook/common/dextricks/ClassLoadingStats;->getInstance()Lcom/facebook/common/dextricks/ClassLoadingStats;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->k:Lcom/facebook/common/dextricks/ClassLoadingStats$SnapshotStats;

    invoke-virtual {v0, v1}, Lcom/facebook/common/dextricks/ClassLoadingStats;->getDifference(Lcom/facebook/common/dextricks/ClassLoadingStats$SnapshotStats;)Lcom/facebook/common/dextricks/ClassLoadingStats$SnapshotStats;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->k:Lcom/facebook/common/dextricks/ClassLoadingStats$SnapshotStats;

    .line 156
    iget-wide v0, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->g:J

    cmp-long v0, v0, v6

    if-ltz v0, :cond_2

    iget-wide v0, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->i:J

    cmp-long v0, v0, v6

    if-ltz v0, :cond_2

    invoke-virtual {p0}, Lcom/facebook/base/lwperf/perfstats/PerfStats;->k()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-wide v0, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->h:J

    cmp-long v0, v0, v6

    if-ltz v0, :cond_2

    iget-wide v0, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->j:J

    cmp-long v0, v0, v6

    if-gez v0, :cond_5

    .line 160
    :cond_2
    sget-object v0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->a:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 161
    sget-object v0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->a:Ljava/lang/String;

    const-string v1, "Negative values detected for PerfStats, discarding stats."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_3
    invoke-direct {p0}, Lcom/facebook/base/lwperf/perfstats/PerfStats;->o()V

    goto :goto_0

    .line 150
    :cond_4
    const-wide/16 v11, -0x1

    .line 107
    const/4 v9, -0x1

    iput v9, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->d:I

    .line 108
    iput-wide v11, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->h:J

    .line 109
    iput-wide v11, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->j:J

    .line 110
    goto :goto_1

    .line 167
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->c:Z

    goto/16 :goto_0
.end method
