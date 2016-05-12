.class public Lcom/facebook/video/analytics/BytesViewedTracking;
.super Ljava/lang/Object;
.source "resolved non-canonical data directory %s to %s"


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/ui/media/cache/Range;",
            ">;>;"
        }
    .end annotation
.end field

.field private c:J

.field private d:J

.field private e:J

.field private f:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Landroid/support/v4/util/LruCache;

    const/16 v1, 0x12c

    invoke-direct {v0, v1}, Landroid/support/v4/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/video/analytics/BytesViewedTracking;->b:Landroid/support/v4/util/LruCache;

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/video/analytics/BytesViewedTracking;->a:Ljava/lang/Object;

    .line 45
    return-void
.end method

.method private a(J)V
    .locals 3

    .prologue
    .line 107
    iget-wide v0, p0, Lcom/facebook/video/analytics/BytesViewedTracking;->c:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/facebook/video/analytics/BytesViewedTracking;->c:J

    .line 108
    return-void
.end method

.method private a(Ljava/lang/String;JJI)V
    .locals 9

    .prologue
    .line 65
    new-instance v1, Lcom/facebook/ui/media/cache/Range;

    invoke-direct {v1, p2, p3, p4, p5}, Lcom/facebook/ui/media/cache/Range;-><init>(JJ)V

    .line 66
    if-eqz p1, :cond_2

    if-lez p6, :cond_2

    .line 67
    iget-object v0, p0, Lcom/facebook/video/analytics/BytesViewedTracking;->b:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/LruCache;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 68
    if-nez v0, :cond_0

    .line 69
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 71
    :cond_0
    invoke-virtual {v1, v0}, Lcom/facebook/ui/media/cache/Range;->b(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    .line 72
    invoke-virtual {v1, v0}, Lcom/facebook/ui/media/cache/Range;->c(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 73
    iget-object v3, p0, Lcom/facebook/video/analytics/BytesViewedTracking;->b:Landroid/support/v4/util/LruCache;

    invoke-virtual {v3, p1, v0}, Landroid/support/v4/util/LruCache;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 99
    const-wide/16 v4, 0x0

    .line 100
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-wide v6, v4

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ui/media/cache/Range;

    .line 101
    invoke-virtual {v4}, Lcom/facebook/ui/media/cache/Range;->a()J

    move-result-wide v4

    add-long/2addr v4, v6

    move-wide v6, v4

    .line 102
    goto :goto_0

    .line 103
    :cond_1
    int-to-long v4, p6

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x1f40

    div-long/2addr v4, v6

    move-wide v2, v4

    invoke-direct {p0, v2, v3}, Lcom/facebook/video/analytics/BytesViewedTracking;->a(J)V

    .line 77
    :cond_2
    invoke-virtual {v1}, Lcom/facebook/ui/media/cache/Range;->a()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/facebook/video/analytics/BytesViewedTracking;->b(J)V

    .line 78
    return-void
.end method

.method private b(J)V
    .locals 3

    .prologue
    .line 111
    iget-wide v0, p0, Lcom/facebook/video/analytics/BytesViewedTracking;->e:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/facebook/video/analytics/BytesViewedTracking;->e:J

    .line 112
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 6

    .prologue
    .line 81
    iget-object v1, p0, Lcom/facebook/video/analytics/BytesViewedTracking;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 82
    :try_start_0
    iget-wide v2, p0, Lcom/facebook/video/analytics/BytesViewedTracking;->c:J

    iget-wide v4, p0, Lcom/facebook/video/analytics/BytesViewedTracking;->d:J

    sub-long/2addr v2, v4

    .line 85
    iget-wide v4, p0, Lcom/facebook/video/analytics/BytesViewedTracking;->c:J

    iput-wide v4, p0, Lcom/facebook/video/analytics/BytesViewedTracking;->d:J

    .line 86
    monitor-exit v1

    return-wide v2

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Lcom/facebook/ui/media/cache/MediaCacheKey;JJI)V
    .locals 8
    .param p1    # Lcom/facebook/ui/media/cache/MediaCacheKey;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 55
    iget-object v7, p0, Lcom/facebook/video/analytics/BytesViewedTracking;->a:Ljava/lang/Object;

    monitor-enter v7

    .line 56
    cmp-long v0, p2, p4

    if-ltz v0, :cond_0

    .line 57
    :try_start_0
    monitor-exit v7

    .line 61
    :goto_0
    return-void

    .line 59
    :cond_0
    if-nez p1, :cond_1

    const/4 v1, 0x0

    :goto_1
    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    .line 60
    invoke-direct/range {v0 .. v6}, Lcom/facebook/video/analytics/BytesViewedTracking;->a(Ljava/lang/String;JJI)V

    .line 61
    monitor-exit v7

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 59
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/facebook/ui/media/cache/MediaCacheKey;->a()Lcom/facebook/cache/common/CacheKey;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/cache/common/CacheKey;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_1
.end method

.method public final a(Ljava/io/DataInputStream;)V
    .locals 13

    .prologue
    const/4 v8, 0x0

    .line 115
    iget-object v10, p0, Lcom/facebook/video/analytics/BytesViewedTracking;->a:Ljava/lang/Object;

    monitor-enter v10

    .line 116
    :try_start_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/video/analytics/BytesViewedTracking;->c:J

    .line 117
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/video/analytics/BytesViewedTracking;->d:J

    .line 118
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/video/analytics/BytesViewedTracking;->e:J

    .line 119
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/video/analytics/BytesViewedTracking;->f:J

    .line 120
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v11

    move v9, v8

    .line 121
    :goto_0
    if-ge v9, v11, :cond_1

    .line 122
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    .line 123
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v12

    move v7, v8

    .line 124
    :goto_1
    if-ge v7, v12, :cond_0

    .line 125
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    .line 126
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v4

    .line 127
    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/facebook/video/analytics/BytesViewedTracking;->a(Ljava/lang/String;JJI)V

    .line 124
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_1

    .line 121
    :cond_0
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_0

    .line 130
    :cond_1
    monitor-exit v10

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Ljava/io/DataOutputStream;)V
    .locals 6

    .prologue
    .line 134
    iget-object v2, p0, Lcom/facebook/video/analytics/BytesViewedTracking;->a:Ljava/lang/Object;

    monitor-enter v2

    .line 135
    :try_start_0
    iget-wide v0, p0, Lcom/facebook/video/analytics/BytesViewedTracking;->c:J

    invoke-virtual {p1, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 136
    iget-wide v0, p0, Lcom/facebook/video/analytics/BytesViewedTracking;->d:J

    invoke-virtual {p1, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 137
    iget-wide v0, p0, Lcom/facebook/video/analytics/BytesViewedTracking;->e:J

    invoke-virtual {p1, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 138
    iget-wide v0, p0, Lcom/facebook/video/analytics/BytesViewedTracking;->f:J

    invoke-virtual {p1, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 139
    iget-object v0, p0, Lcom/facebook/video/analytics/BytesViewedTracking;->b:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0}, Landroid/support/v4/util/LruCache;->d()Ljava/util/Map;

    move-result-object v0

    .line 140
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 141
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 142
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 143
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 144
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 145
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ui/media/cache/Range;

    .line 146
    iget-wide v4, v0, Lcom/facebook/ui/media/cache/Range;->a:J

    invoke-virtual {p1, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 147
    iget-wide v4, v0, Lcom/facebook/ui/media/cache/Range;->b:J

    invoke-virtual {p1, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V

    goto :goto_0

    .line 150
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

.method public final b()J
    .locals 6

    .prologue
    .line 91
    iget-object v1, p0, Lcom/facebook/video/analytics/BytesViewedTracking;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 92
    :try_start_0
    iget-wide v2, p0, Lcom/facebook/video/analytics/BytesViewedTracking;->e:J

    iget-wide v4, p0, Lcom/facebook/video/analytics/BytesViewedTracking;->f:J

    sub-long/2addr v2, v4

    .line 93
    iget-wide v4, p0, Lcom/facebook/video/analytics/BytesViewedTracking;->e:J

    iput-wide v4, p0, Lcom/facebook/video/analytics/BytesViewedTracking;->f:J

    .line 94
    monitor-exit v1

    return-wide v2

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
