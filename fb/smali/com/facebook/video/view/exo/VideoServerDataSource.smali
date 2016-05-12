.class public Lcom/facebook/video/view/exo/VideoServerDataSource;
.super Ljava/lang/Object;
.source "text/html"

# interfaces
.implements Lcom/google/android/exoplayer/upstream/DataSource;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/facebook/video/server/VideoServer;

.field private final c:Lcom/facebook/video/abtest/SourceType;

.field private d:Landroid/net/Uri;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Lcom/facebook/video/server/FileResource$Reader;

.field private h:Ljava/io/InputStream;

.field public final i:Lcom/facebook/common/eventbus/TypedEventBus;

.field private final j:Lcom/facebook/common/executors/DefaultAndroidThreadUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/facebook/video/view/exo/VideoServerDataSource;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/video/view/exo/VideoServerDataSource;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/video/server/VideoServer;Lcom/facebook/common/eventbus/TypedEventBus;Lcom/facebook/common/executors/DefaultAndroidThreadUtil;Lcom/facebook/video/abtest/SourceType;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/facebook/video/view/exo/VideoServerDataSource;->b:Lcom/facebook/video/server/VideoServer;

    .line 47
    iput-object p2, p0, Lcom/facebook/video/view/exo/VideoServerDataSource;->i:Lcom/facebook/common/eventbus/TypedEventBus;

    .line 48
    iput-object p3, p0, Lcom/facebook/video/view/exo/VideoServerDataSource;->j:Lcom/facebook/common/executors/DefaultAndroidThreadUtil;

    .line 49
    iput-object p4, p0, Lcom/facebook/video/view/exo/VideoServerDataSource;->c:Lcom/facebook/video/abtest/SourceType;

    .line 50
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
    .line 119
    iget-object v0, p0, Lcom/facebook/video/view/exo/VideoServerDataSource;->j:Lcom/facebook/common/executors/DefaultAndroidThreadUtil;

    new-instance v1, Lcom/facebook/video/view/exo/VideoServerDataSource$1;

    invoke-direct {v1, p0, p1}, Lcom/facebook/video/view/exo/VideoServerDataSource$1;-><init>(Lcom/facebook/video/view/exo/VideoServerDataSource;Lcom/facebook/common/eventbus/TypedEvent;)V

    invoke-virtual {v0, v1}, Lcom/facebook/common/executors/DefaultAndroidThreadUtil;->a(Ljava/lang/Runnable;)V

    .line 126
    return-void
.end method


# virtual methods
.method public final a([BII)I
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/facebook/video/view/exo/VideoServerDataSource;->g:Lcom/facebook/video/server/FileResource$Reader;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object v0, p0, Lcom/facebook/video/view/exo/VideoServerDataSource;->h:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iget-object v0, p0, Lcom/facebook/video/view/exo/VideoServerDataSource;->h:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public final a(Lcom/google/android/exoplayer/upstream/DataSpec;)J
    .locals 14

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v10, -0x1

    .line 59
    iget-object v0, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->a:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-wide v4, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->d:J

    cmp-long v0, v4, v12

    if-ltz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 61
    iget-wide v4, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->e:J

    cmp-long v0, v4, v12

    if-gez v0, :cond_0

    iget-wide v4, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->e:J

    cmp-long v0, v4, v10

    if-nez v0, :cond_3

    :cond_0
    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 62
    iget-object v0, p0, Lcom/facebook/video/view/exo/VideoServerDataSource;->g:Lcom/facebook/video/server/FileResource$Reader;

    if-nez v0, :cond_4

    :goto_2
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 63
    iget-wide v0, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->d:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    iget-wide v0, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->e:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 66
    iget-object v0, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->a:Landroid/net/Uri;

    invoke-static {v0}, Lcom/facebook/video/server/VideoServer;->c(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/video/view/exo/VideoServerDataSource;->d:Landroid/net/Uri;

    .line 67
    iget-object v0, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->a:Landroid/net/Uri;

    invoke-static {v0}, Lcom/facebook/video/server/VideoServer;->a(Landroid/net/Uri;)I

    move-result v0

    iput v0, p0, Lcom/facebook/video/view/exo/VideoServerDataSource;->f:I

    .line 68
    iget-object v0, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->a:Landroid/net/Uri;

    invoke-static {v0}, Lcom/facebook/video/server/VideoServer;->e(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/video/view/exo/VideoServerDataSource;->e:Ljava/lang/String;

    .line 70
    iget-wide v0, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->e:J

    cmp-long v0, v0, v10

    if-nez v0, :cond_5

    move-wide v4, v10

    .line 72
    :goto_3
    iget-object v0, p0, Lcom/facebook/video/view/exo/VideoServerDataSource;->b:Lcom/facebook/video/server/VideoServer;

    iget-object v1, p0, Lcom/facebook/video/view/exo/VideoServerDataSource;->d:Landroid/net/Uri;

    iget-wide v2, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->d:J

    iget-object v6, p0, Lcom/facebook/video/view/exo/VideoServerDataSource;->e:Ljava/lang/String;

    iget v7, p0, Lcom/facebook/video/view/exo/VideoServerDataSource;->f:I

    iget-object v8, p0, Lcom/facebook/video/view/exo/VideoServerDataSource;->c:Lcom/facebook/video/abtest/SourceType;

    invoke-virtual/range {v0 .. v8}, Lcom/facebook/video/server/VideoServer;->a(Landroid/net/Uri;JJLjava/lang/String;ILcom/facebook/video/abtest/SourceType;)Lcom/facebook/video/server/FileResource$Reader;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/video/view/exo/VideoServerDataSource;->g:Lcom/facebook/video/server/FileResource$Reader;

    .line 79
    cmp-long v0, v4, v12

    if-gtz v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/facebook/video/view/exo/VideoServerDataSource;->g:Lcom/facebook/video/server/FileResource$Reader;

    invoke-interface {v0}, Lcom/facebook/video/server/FileResource$Reader;->a()Lcom/facebook/ui/media/cache/FileMetadata;

    move-result-object v0

    iget-wide v4, v0, Lcom/facebook/ui/media/cache/FileMetadata;->a:J

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/facebook/video/view/exo/VideoServerDataSource;->g:Lcom/facebook/video/server/FileResource$Reader;

    invoke-interface {v0}, Lcom/facebook/video/server/FileResource$Reader;->b()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/video/view/exo/VideoServerDataSource;->h:Ljava/io/InputStream;

    .line 83
    new-instance v0, Lcom/facebook/video/view/exo/VideoServerDataSource$DataSourceOpenedEvent;

    invoke-direct {v0}, Lcom/facebook/video/view/exo/VideoServerDataSource$DataSourceOpenedEvent;-><init>()V

    invoke-direct {p0, v0}, Lcom/facebook/video/view/exo/VideoServerDataSource;->a(Lcom/facebook/common/eventbus/TypedEvent;)V

    .line 84
    cmp-long v0, v4, v12

    if-gez v0, :cond_6

    :goto_4
    return-wide v10

    :cond_2
    move v0, v2

    .line 60
    goto :goto_0

    :cond_3
    move v0, v2

    .line 61
    goto :goto_1

    :cond_4
    move v1, v2

    .line 62
    goto :goto_2

    .line 70
    :cond_5
    iget-wide v0, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->d:J

    iget-wide v2, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->e:J

    add-long v4, v0, v2

    goto :goto_3

    .line 84
    :cond_6
    iget-wide v0, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->d:J

    sub-long v10, v4, v0

    goto :goto_4
.end method

.method public final a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 89
    iget-object v0, p0, Lcom/facebook/video/view/exo/VideoServerDataSource;->g:Lcom/facebook/video/server/FileResource$Reader;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iput-object v1, p0, Lcom/facebook/video/view/exo/VideoServerDataSource;->g:Lcom/facebook/video/server/FileResource$Reader;

    .line 92
    iget-object v0, p0, Lcom/facebook/video/view/exo/VideoServerDataSource;->h:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 93
    iput-object v1, p0, Lcom/facebook/video/view/exo/VideoServerDataSource;->h:Ljava/io/InputStream;

    .line 94
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/video/view/exo/VideoServerDataSource;->f:I

    .line 95
    iput-object v1, p0, Lcom/facebook/video/view/exo/VideoServerDataSource;->e:Ljava/lang/String;

    .line 96
    iput-object v1, p0, Lcom/facebook/video/view/exo/VideoServerDataSource;->d:Landroid/net/Uri;

    .line 97
    return-void
.end method
