.class public Lcom/facebook/video/view/exo/ManifestContentFetcher;
.super Ljava/lang/Object;
.source "null intent"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/google/common/util/concurrent/ListeningExecutorService;

.field private final e:Lcom/facebook/common/executors/DefaultAndroidThreadUtil;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;Ljava/lang/String;Ljava/lang/String;Lcom/google/common/util/concurrent/ListeningExecutorService;Lcom/facebook/common/executors/DefaultAndroidThreadUtil;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    iput-object p1, p0, Lcom/facebook/video/view/exo/ManifestContentFetcher;->a:Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;

    .line 37
    iput-object p2, p0, Lcom/facebook/video/view/exo/ManifestContentFetcher;->c:Ljava/lang/String;

    .line 38
    iput-object p3, p0, Lcom/facebook/video/view/exo/ManifestContentFetcher;->b:Ljava/lang/String;

    .line 39
    iput-object p4, p0, Lcom/facebook/video/view/exo/ManifestContentFetcher;->d:Lcom/google/common/util/concurrent/ListeningExecutorService;

    .line 40
    iput-object p5, p0, Lcom/facebook/video/view/exo/ManifestContentFetcher;->e:Lcom/facebook/common/executors/DefaultAndroidThreadUtil;

    .line 41
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestCallback",
            "<",
            "Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/video/view/exo/ManifestContentFetcher;->a(Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestCallback;Z)V

    .line 49
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestCallback;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestCallback",
            "<",
            "Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 54
    const-string v0, "ManifestContentFetcher.startParsing"

    const v1, -0x34e7019e    # -1.0026594E7f

    invoke-static {v0, v1}, Lcom/facebook/tools/dextr/runtime/detour/TracerDetour;->a(Ljava/lang/String;I)V

    .line 56
    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 61
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    :try_start_1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/facebook/video/view/exo/ManifestContentFetcher;->b:Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 67
    iget-object v1, p0, Lcom/facebook/video/view/exo/ManifestContentFetcher;->a:Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;

    iget-object v2, p0, Lcom/facebook/video/view/exo/ManifestContentFetcher;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->a(Ljava/lang/String;Ljava/io/InputStream;)Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    move-result-object v0

    .line 70
    if-eqz p2, :cond_1

    .line 71
    iget-object v1, p0, Lcom/facebook/video/view/exo/ManifestContentFetcher;->e:Lcom/facebook/common/executors/DefaultAndroidThreadUtil;

    new-instance v2, Lcom/facebook/video/view/exo/ManifestContentFetcher$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/facebook/video/view/exo/ManifestContentFetcher$1;-><init>(Lcom/facebook/video/view/exo/ManifestContentFetcher;Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestCallback;Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;)V

    invoke-virtual {v1, v2}, Lcom/facebook/common/executors/DefaultAndroidThreadUtil;->b(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    :goto_1
    const v0, -0x28d2fd6c

    invoke-static {v0}, Lcom/facebook/tools/dextr/runtime/detour/TracerDetour;->a(I)V

    .line 97
    return-void

    .line 56
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 79
    :cond_1
    :try_start_2
    invoke-interface {p1, v0}, Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestCallback;->a(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 81
    :catch_0
    move-exception v0

    .line 83
    if-eqz p2, :cond_2

    .line 84
    :try_start_3
    iget-object v1, p0, Lcom/facebook/video/view/exo/ManifestContentFetcher;->e:Lcom/facebook/common/executors/DefaultAndroidThreadUtil;

    new-instance v2, Lcom/facebook/video/view/exo/ManifestContentFetcher$2;

    invoke-direct {v2, p0, p1, v0}, Lcom/facebook/video/view/exo/ManifestContentFetcher$2;-><init>(Lcom/facebook/video/view/exo/ManifestContentFetcher;Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestCallback;Ljava/io/IOException;)V

    invoke-virtual {v1, v2}, Lcom/facebook/common/executors/DefaultAndroidThreadUtil;->b(Ljava/lang/Runnable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 96
    :catchall_0
    move-exception v0

    const v1, 0x73148e5d

    invoke-static {v1}, Lcom/facebook/tools/dextr/runtime/detour/TracerDetour;->a(I)V

    throw v0

    .line 92
    :cond_2
    :try_start_4
    invoke-interface {p1, v0}, Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestCallback;->a(Ljava/io/IOException;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public final b(Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestCallback",
            "<",
            "Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lcom/facebook/video/view/exo/ManifestContentFetcher;->d:Lcom/google/common/util/concurrent/ListeningExecutorService;

    new-instance v1, Lcom/facebook/video/view/exo/ManifestContentFetcher$3;

    invoke-direct {v1, p0, p1}, Lcom/facebook/video/view/exo/ManifestContentFetcher$3;-><init>(Lcom/facebook/video/view/exo/ManifestContentFetcher;Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestCallback;)V

    const v2, 0x6abc34c2

    invoke-static {v0, v1, v2}, Lcom/facebook/tools/dextr/runtime/detour/ExecutorDetour;->a(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;I)V

    .line 110
    return-void
.end method
