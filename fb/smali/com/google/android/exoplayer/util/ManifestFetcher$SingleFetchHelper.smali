.class Lcom/google/android/exoplayer/util/ManifestFetcher$SingleFetchHelper;
.super Ljava/lang/Object;
.source "persisted_uid"

# interfaces
.implements Lcom/google/android/exoplayer/upstream/Loader$Callback;


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer/util/ManifestFetcher;

.field private final b:Lcom/google/android/exoplayer/upstream/UriLoadable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer/upstream/UriLoadable",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final c:Landroid/os/Looper;

.field private final d:Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestCallback",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final e:Lcom/google/android/exoplayer/upstream/Loader;

.field private f:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/util/ManifestFetcher;Lcom/google/android/exoplayer/upstream/UriLoadable;Landroid/os/Looper;Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer/upstream/UriLoadable",
            "<TT;>;",
            "Landroid/os/Looper;",
            "Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 352
    iput-object p1, p0, Lcom/google/android/exoplayer/util/ManifestFetcher$SingleFetchHelper;->a:Lcom/google/android/exoplayer/util/ManifestFetcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 353
    iput-object p2, p0, Lcom/google/android/exoplayer/util/ManifestFetcher$SingleFetchHelper;->b:Lcom/google/android/exoplayer/upstream/UriLoadable;

    .line 354
    iput-object p3, p0, Lcom/google/android/exoplayer/util/ManifestFetcher$SingleFetchHelper;->c:Landroid/os/Looper;

    .line 355
    iput-object p4, p0, Lcom/google/android/exoplayer/util/ManifestFetcher$SingleFetchHelper;->d:Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestCallback;

    .line 356
    new-instance v0, Lcom/google/android/exoplayer/upstream/Loader;

    const-string v1, "manifestLoader:single"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher$SingleFetchHelper;->e:Lcom/google/android/exoplayer/upstream/Loader;

    .line 357
    return-void
.end method

.method private b()V
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher$SingleFetchHelper;->e:Lcom/google/android/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/upstream/Loader;->c()V

    .line 397
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 360
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher$SingleFetchHelper;->f:J

    .line 361
    iget-object v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher$SingleFetchHelper;->e:Lcom/google/android/exoplayer/upstream/Loader;

    iget-object v1, p0, Lcom/google/android/exoplayer/util/ManifestFetcher$SingleFetchHelper;->c:Landroid/os/Looper;

    iget-object v2, p0, Lcom/google/android/exoplayer/util/ManifestFetcher$SingleFetchHelper;->b:Lcom/google/android/exoplayer/upstream/UriLoadable;

    invoke-virtual {v0, v1, v2, p0}, Lcom/google/android/exoplayer/upstream/Loader;->a(Landroid/os/Looper;Lcom/google/android/exoplayer/upstream/Loader$Loadable;Lcom/google/android/exoplayer/upstream/Loader$Callback;)V

    .line 362
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer/upstream/Loader$Loadable;)V
    .locals 4

    .prologue
    .line 367
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher$SingleFetchHelper;->b:Lcom/google/android/exoplayer/upstream/UriLoadable;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/upstream/UriLoadable;->a()Ljava/lang/Object;

    move-result-object v0

    .line 368
    iget-object v1, p0, Lcom/google/android/exoplayer/util/ManifestFetcher$SingleFetchHelper;->a:Lcom/google/android/exoplayer/util/ManifestFetcher;

    iget-wide v2, p0, Lcom/google/android/exoplayer/util/ManifestFetcher$SingleFetchHelper;->f:J

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/exoplayer/util/ManifestFetcher;->a(Ljava/lang/Object;J)V

    .line 369
    iget-object v1, p0, Lcom/google/android/exoplayer/util/ManifestFetcher$SingleFetchHelper;->d:Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestCallback;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestCallback;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 371
    invoke-direct {p0}, Lcom/google/android/exoplayer/util/ManifestFetcher$SingleFetchHelper;->b()V

    .line 372
    return-void

    .line 371
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/google/android/exoplayer/util/ManifestFetcher$SingleFetchHelper;->b()V

    throw v0
.end method

.method public final a(Lcom/google/android/exoplayer/upstream/Loader$Loadable;Ljava/io/IOException;)V
    .locals 1

    .prologue
    .line 389
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher$SingleFetchHelper;->d:Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestCallback;

    invoke-interface {v0, p2}, Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestCallback;->a(Ljava/io/IOException;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 391
    invoke-direct {p0}, Lcom/google/android/exoplayer/util/ManifestFetcher$SingleFetchHelper;->b()V

    .line 392
    return-void

    .line 391
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/google/android/exoplayer/util/ManifestFetcher$SingleFetchHelper;->b()V

    throw v0
.end method

.method public final f()V
    .locals 3

    .prologue
    .line 379
    :try_start_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Load cancelled"

    new-instance v2, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2}, Ljava/util/concurrent/CancellationException;-><init>()V

    invoke-direct {v0, v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 380
    iget-object v1, p0, Lcom/google/android/exoplayer/util/ManifestFetcher$SingleFetchHelper;->d:Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestCallback;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestCallback;->a(Ljava/io/IOException;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 382
    invoke-direct {p0}, Lcom/google/android/exoplayer/util/ManifestFetcher$SingleFetchHelper;->b()V

    .line 383
    return-void

    .line 382
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/google/android/exoplayer/util/ManifestFetcher$SingleFetchHelper;->b()V

    throw v0
.end method
