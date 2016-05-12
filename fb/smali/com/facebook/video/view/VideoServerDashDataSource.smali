.class public Lcom/facebook/video/view/VideoServerDashDataSource;
.super Ljava/lang/Object;
.source "onInit"

# interfaces
.implements Lcom/google/android/exoplayer/upstream/DataSource;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/facebook/video/server/VideoServer;

.field private final c:Ljava/lang/String;

.field private d:Lcom/facebook/video/server/FileResource$Reader;

.field private e:Ljava/io/InputStream;

.field private f:Z

.field public final g:Lcom/facebook/common/eventbus/TypedEventBus;

.field private final h:Lcom/facebook/common/executors/DefaultAndroidThreadUtil;

.field private final i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/facebook/video/view/VideoServerDashDataSource;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/video/view/VideoServerDashDataSource;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/video/server/VideoServer;Landroid/net/Uri;Lcom/facebook/common/eventbus/TypedEventBus;Lcom/facebook/common/executors/DefaultAndroidThreadUtil;Z)V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/facebook/video/view/VideoServerDashDataSource;->b:Lcom/facebook/video/server/VideoServer;

    .line 47
    invoke-static {p2}, Lcom/facebook/video/server/VideoServer;->e(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/video/view/VideoServerDashDataSource;->c:Ljava/lang/String;

    .line 48
    iput-object p3, p0, Lcom/facebook/video/view/VideoServerDashDataSource;->g:Lcom/facebook/common/eventbus/TypedEventBus;

    .line 49
    iput-object p4, p0, Lcom/facebook/video/view/VideoServerDashDataSource;->h:Lcom/facebook/common/executors/DefaultAndroidThreadUtil;

    .line 50
    iput-boolean p5, p0, Lcom/facebook/video/view/VideoServerDashDataSource;->i:Z

    .line 51
    return-void
.end method

.method private a(Lcom/facebook/common/eventbus/TypedEvent;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/eventbus/TypedEvent",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Lcom/facebook/video/view/VideoServerDashDataSource;->h:Lcom/facebook/common/executors/DefaultAndroidThreadUtil;

    new-instance v1, Lcom/facebook/video/view/VideoServerDashDataSource$1;

    invoke-direct {v1, p0, p1}, Lcom/facebook/video/view/VideoServerDashDataSource$1;-><init>(Lcom/facebook/video/view/VideoServerDashDataSource;Lcom/facebook/common/eventbus/TypedEvent;)V

    invoke-virtual {v0, v1}, Lcom/facebook/common/executors/DefaultAndroidThreadUtil;->a(Ljava/lang/Runnable;)V

    .line 129
    return-void
.end method


# virtual methods
.method public final a([BII)I
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/facebook/video/view/VideoServerDashDataSource;->d:Lcom/facebook/video/server/FileResource$Reader;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iget-object v0, p0, Lcom/facebook/video/view/VideoServerDashDataSource;->e:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object v0, p0, Lcom/facebook/video/view/VideoServerDashDataSource;->e:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 106
    return v0
.end method

.method public final a(Lcom/google/android/exoplayer/upstream/DataSpec;)J
    .locals 14

    .prologue
    const/4 v1, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v10, -0x1

    const/4 v9, 0x1

    .line 60
    iget-object v0, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->a:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-wide v2, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->d:J

    cmp-long v0, v2, v12

    if-ltz v0, :cond_3

    move v0, v9

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 62
    iget-wide v2, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->e:J

    cmp-long v0, v2, v12

    if-gez v0, :cond_0

    iget-wide v2, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->e:J

    cmp-long v0, v2, v10

    if-nez v0, :cond_4

    :cond_0
    move v0, v9

    :goto_1
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 63
    iget-object v0, p0, Lcom/facebook/video/view/VideoServerDashDataSource;->d:Lcom/facebook/video/server/FileResource$Reader;

    if-nez v0, :cond_1

    move v1, v9

    :cond_1
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 64
    iget-wide v0, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->d:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    iget-wide v0, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->e:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 65
    iget-wide v0, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->e:J

    cmp-long v0, v0, v10

    if-nez v0, :cond_5

    move-wide v4, v10

    .line 69
    :goto_2
    :try_start_0
    iget-object v0, p0, Lcom/facebook/video/view/VideoServerDashDataSource;->b:Lcom/facebook/video/server/VideoServer;

    iget-object v1, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->a:Landroid/net/Uri;

    iget-wide v2, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->d:J

    iget-object v6, p0, Lcom/facebook/video/view/VideoServerDashDataSource;->c:Ljava/lang/String;

    const/4 v7, -0x1

    sget-object v8, Lcom/facebook/video/abtest/SourceType;->DIRECT:Lcom/facebook/video/abtest/SourceType;

    invoke-virtual/range {v0 .. v8}, Lcom/facebook/video/server/VideoServer;->a(Landroid/net/Uri;JJLjava/lang/String;ILcom/facebook/video/abtest/SourceType;)Lcom/facebook/video/server/FileResource$Reader;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/video/view/VideoServerDashDataSource;->d:Lcom/facebook/video/server/FileResource$Reader;

    .line 76
    cmp-long v0, v4, v12

    if-gtz v0, :cond_2

    .line 77
    iget-object v0, p0, Lcom/facebook/video/view/VideoServerDashDataSource;->d:Lcom/facebook/video/server/FileResource$Reader;

    invoke-interface {v0}, Lcom/facebook/video/server/FileResource$Reader;->a()Lcom/facebook/ui/media/cache/FileMetadata;

    move-result-object v0

    iget-wide v4, v0, Lcom/facebook/ui/media/cache/FileMetadata;->a:J

    .line 79
    :cond_2
    iget-object v0, p0, Lcom/facebook/video/view/VideoServerDashDataSource;->d:Lcom/facebook/video/server/FileResource$Reader;

    invoke-interface {v0}, Lcom/facebook/video/server/FileResource$Reader;->b()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/video/view/VideoServerDashDataSource;->e:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    iput-boolean v9, p0, Lcom/facebook/video/view/VideoServerDashDataSource;->f:Z

    .line 84
    new-instance v0, Lcom/facebook/video/view/VideoServerDashDataSource$DataSourceOpenedEvent;

    invoke-direct {v0}, Lcom/facebook/video/view/VideoServerDashDataSource$DataSourceOpenedEvent;-><init>()V

    invoke-direct {p0, v0}, Lcom/facebook/video/view/VideoServerDashDataSource;->a(Lcom/facebook/common/eventbus/TypedEvent;)V

    .line 85
    cmp-long v0, v4, v12

    if-gez v0, :cond_6

    :goto_3
    return-wide v10

    :cond_3
    move v0, v1

    .line 61
    goto :goto_0

    :cond_4
    move v0, v1

    .line 62
    goto :goto_1

    .line 65
    :cond_5
    iget-wide v0, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->d:J

    iget-wide v2, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->e:J

    add-long v4, v0, v2

    goto :goto_2

    .line 80
    :catch_0
    move-exception v0

    .line 81
    throw v0

    .line 85
    :cond_6
    iget-wide v0, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->d:J

    sub-long v10, v4, v0

    goto :goto_3
.end method

.method public final a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 91
    iput-object v1, p0, Lcom/facebook/video/view/VideoServerDashDataSource;->d:Lcom/facebook/video/server/FileResource$Reader;

    .line 92
    iget-object v0, p0, Lcom/facebook/video/view/VideoServerDashDataSource;->e:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/facebook/video/view/VideoServerDashDataSource;->e:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 95
    :cond_0
    iput-object v1, p0, Lcom/facebook/video/view/VideoServerDashDataSource;->e:Ljava/io/InputStream;

    .line 96
    iget-boolean v0, p0, Lcom/facebook/video/view/VideoServerDashDataSource;->f:Z

    if-eqz v0, :cond_1

    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/video/view/VideoServerDashDataSource;->f:Z

    .line 99
    :cond_1
    return-void
.end method
