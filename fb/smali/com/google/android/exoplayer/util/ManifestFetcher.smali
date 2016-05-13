.class public Lcom/google/android/exoplayer/util/ManifestFetcher;
.super Ljava/lang/Object;
.source "persisted_uid"

# interfaces
.implements Lcom/google/android/exoplayer/upstream/Loader$Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer/upstream/Loader$Callback;"
    }
.end annotation


# instance fields
.field volatile a:Ljava/lang/String;

.field private final b:Lcom/google/android/exoplayer/upstream/UriLoadable$Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer/upstream/UriLoadable$Parser",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/exoplayer/upstream/UriDataSource;

.field public final d:Landroid/os/Handler;

.field public final e:Lcom/google/android/exoplayer/util/ManifestFetcher$EventListener;

.field private f:I

.field private g:Lcom/google/android/exoplayer/upstream/Loader;

.field private h:Lcom/google/android/exoplayer/upstream/UriLoadable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer/upstream/UriLoadable",
            "<TT;>;"
        }
    .end annotation
.end field

.field private i:J

.field private j:I

.field private k:J

.field private l:Ljava/io/IOException;

.field private volatile m:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private volatile n:J

.field private volatile o:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/exoplayer/upstream/UriDataSource;Lcom/google/android/exoplayer/upstream/UriLoadable$Parser;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer/upstream/UriDataSource;",
            "Lcom/google/android/exoplayer/upstream/UriLoadable$Parser",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 128
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer/util/ManifestFetcher;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer/upstream/UriDataSource;Lcom/google/android/exoplayer/upstream/UriLoadable$Parser;Landroid/os/Handler;Lcom/google/android/exoplayer/util/ManifestFetcher$EventListener;)V

    .line 129
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/google/android/exoplayer/upstream/UriDataSource;Lcom/google/android/exoplayer/upstream/UriLoadable$Parser;Landroid/os/Handler;Lcom/google/android/exoplayer/util/ManifestFetcher$EventListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer/upstream/UriDataSource;",
            "Lcom/google/android/exoplayer/upstream/UriLoadable$Parser",
            "<TT;>;",
            "Landroid/os/Handler;",
            "Lcom/google/android/exoplayer/util/ManifestFetcher$EventListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    iput-object p3, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->b:Lcom/google/android/exoplayer/upstream/UriLoadable$Parser;

    .line 142
    iput-object p1, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->a:Ljava/lang/String;

    .line 143
    iput-object p2, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->c:Lcom/google/android/exoplayer/upstream/UriDataSource;

    .line 144
    iput-object p4, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->d:Landroid/os/Handler;

    .line 145
    iput-object p5, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->e:Lcom/google/android/exoplayer/util/ManifestFetcher$EventListener;

    .line 146
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 178
    iget-object v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->m:Ljava/lang/Object;

    return-object v0
.end method

.method public final a(Landroid/os/Looper;Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 165
    new-instance v0, Lcom/google/android/exoplayer/util/ManifestFetcher$SingleFetchHelper;

    new-instance v1, Lcom/google/android/exoplayer/upstream/UriLoadable;

    iget-object v2, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->c:Lcom/google/android/exoplayer/upstream/UriDataSource;

    iget-object v4, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->b:Lcom/google/android/exoplayer/upstream/UriLoadable$Parser;

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/exoplayer/upstream/UriLoadable;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer/upstream/UriDataSource;Lcom/google/android/exoplayer/upstream/UriLoadable$Parser;)V

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/google/android/exoplayer/util/ManifestFetcher$SingleFetchHelper;-><init>(Lcom/google/android/exoplayer/util/ManifestFetcher;Lcom/google/android/exoplayer/upstream/UriLoadable;Landroid/os/Looper;Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestCallback;)V

    .line 167
    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ManifestFetcher$SingleFetchHelper;->a()V

    .line 168
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer/upstream/Loader$Loadable;)V
    .locals 5

    .prologue
    .line 258
    iget-object v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->h:Lcom/google/android/exoplayer/upstream/UriLoadable;

    if-eq v0, p1, :cond_0

    .line 278
    :goto_0
    return-void

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->h:Lcom/google/android/exoplayer/upstream/UriLoadable;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/upstream/UriLoadable;->a()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->m:Ljava/lang/Object;

    .line 264
    iget-wide v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->i:J

    iput-wide v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->n:J

    .line 265
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->o:J

    .line 266
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->j:I

    .line 267
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->l:Ljava/io/IOException;

    .line 269
    iget-object v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->m:Ljava/lang/Object;

    instance-of v0, v0, Lcom/google/android/exoplayer/util/ManifestFetcher$RedirectingManifest;

    if-eqz v0, :cond_1

    .line 270
    iget-object v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->m:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer/util/ManifestFetcher$RedirectingManifest;

    .line 271
    invoke-interface {v0}, Lcom/google/android/exoplayer/util/ManifestFetcher$RedirectingManifest;->a()Ljava/lang/String;

    move-result-object v0

    .line 272
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 273
    iput-object v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->a:Ljava/lang/String;

    .line 277
    .line 321
    :cond_1
    iget-object v2, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->d:Landroid/os/Handler;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->e:Lcom/google/android/exoplayer/util/ManifestFetcher$EventListener;

    if-eqz v2, :cond_2

    .line 322
    iget-object v2, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->d:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/exoplayer/util/ManifestFetcher$2;

    invoke-direct {v3, p0}, Lcom/google/android/exoplayer/util/ManifestFetcher$2;-><init>(Lcom/google/android/exoplayer/util/ManifestFetcher;)V

    const v4, -0x2448b97b

    invoke-static {v2, v3, v4}, Lcom/facebook/tools/dextr/runtime/detour/HandlerDetour;->a(Landroid/os/Handler;Ljava/lang/Runnable;I)Z

    .line 329
    :cond_2
    goto :goto_0
.end method

.method public final a(Lcom/google/android/exoplayer/upstream/Loader$Loadable;Ljava/io/IOException;)V
    .locals 5

    .prologue
    .line 287
    iget-object v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->h:Lcom/google/android/exoplayer/upstream/UriLoadable;

    if-eq v0, p1, :cond_0

    .line 297
    :goto_0
    return-void

    .line 292
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->j:I

    .line 293
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->k:J

    .line 294
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    iput-object v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->l:Ljava/io/IOException;

    .line 296
    iget-object v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->l:Ljava/io/IOException;

    .line 332
    iget-object v2, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->d:Landroid/os/Handler;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->e:Lcom/google/android/exoplayer/util/ManifestFetcher$EventListener;

    if-eqz v2, :cond_1

    .line 333
    iget-object v2, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->d:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/exoplayer/util/ManifestFetcher$3;

    invoke-direct {v3, p0, v0}, Lcom/google/android/exoplayer/util/ManifestFetcher$3;-><init>(Lcom/google/android/exoplayer/util/ManifestFetcher;Ljava/io/IOException;)V

    const v4, 0xbaee929

    invoke-static {v2, v3, v4}, Lcom/facebook/tools/dextr/runtime/detour/HandlerDetour;->a(Landroid/os/Handler;Ljava/lang/Runnable;I)Z

    .line 340
    :cond_1
    goto :goto_0
.end method

.method final a(Ljava/lang/Object;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)V"
        }
    .end annotation

    .prologue
    .line 300
    iput-object p1, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->m:Ljava/lang/Object;

    .line 301
    iput-wide p2, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->n:J

    .line 302
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->o:J

    .line 303
    return-void
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 188
    iget-wide v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->n:J

    return-wide v0
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->l:Ljava/io/IOException;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->j:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    .line 209
    :cond_0
    return-void

    .line 211
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->l:Ljava/io/IOException;

    throw v0
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 218
    iget v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->f:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->f:I

    if-nez v0, :cond_0

    .line 219
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->j:I

    .line 220
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->l:Ljava/io/IOException;

    .line 222
    :cond_0
    return-void
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 228
    iget v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->f:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->f:I

    if-nez v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->g:Lcom/google/android/exoplayer/upstream/Loader;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->g:Lcom/google/android/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/upstream/Loader;->c()V

    .line 231
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->g:Lcom/google/android/exoplayer/upstream/Loader;

    .line 234
    :cond_0
    return-void
.end method

.method public final f()V
    .locals 0

    .prologue
    .line 283
    return-void
.end method

.method public final g()V
    .locals 10

    .prologue
    .line 240
    iget-object v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->l:Ljava/io/IOException;

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->k:J

    iget v4, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->j:I

    int-to-long v4, v4

    .line 306
    const-wide/16 v6, 0x1

    sub-long v6, v4, v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    const-wide/16 v8, 0x1388

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    move-wide v4, v6

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 254
    :cond_0
    :goto_0
    return-void

    .line 245
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->g:Lcom/google/android/exoplayer/upstream/Loader;

    if-nez v0, :cond_2

    .line 246
    new-instance v0, Lcom/google/android/exoplayer/upstream/Loader;

    const-string v1, "manifestLoader"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->g:Lcom/google/android/exoplayer/upstream/Loader;

    .line 248
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->g:Lcom/google/android/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/upstream/Loader;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 249
    new-instance v0, Lcom/google/android/exoplayer/upstream/UriLoadable;

    iget-object v1, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->c:Lcom/google/android/exoplayer/upstream/UriDataSource;

    iget-object v3, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->b:Lcom/google/android/exoplayer/upstream/UriLoadable$Parser;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/exoplayer/upstream/UriLoadable;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer/upstream/UriDataSource;Lcom/google/android/exoplayer/upstream/UriLoadable$Parser;)V

    iput-object v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->h:Lcom/google/android/exoplayer/upstream/UriLoadable;

    .line 250
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->i:J

    .line 251
    iget-object v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->g:Lcom/google/android/exoplayer/upstream/Loader;

    iget-object v1, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->h:Lcom/google/android/exoplayer/upstream/UriLoadable;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/exoplayer/upstream/Loader;->a(Lcom/google/android/exoplayer/upstream/Loader$Loadable;Lcom/google/android/exoplayer/upstream/Loader$Callback;)V

    .line 252
    .line 310
    iget-object v6, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->d:Landroid/os/Handler;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->e:Lcom/google/android/exoplayer/util/ManifestFetcher$EventListener;

    if-eqz v6, :cond_3

    .line 311
    iget-object v6, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->d:Landroid/os/Handler;

    new-instance v7, Lcom/google/android/exoplayer/util/ManifestFetcher$1;

    invoke-direct {v7, p0}, Lcom/google/android/exoplayer/util/ManifestFetcher$1;-><init>(Lcom/google/android/exoplayer/util/ManifestFetcher;)V

    const v8, 0x699392cd

    invoke-static {v6, v7, v8}, Lcom/facebook/tools/dextr/runtime/detour/HandlerDetour;->a(Landroid/os/Handler;Ljava/lang/Runnable;I)Z

    .line 318
    :cond_3
    goto :goto_0
.end method
