.class Lcom/facebook/exoplayer/VideoPlayerService$CachingDataSource;
.super Ljava/lang/Object;
.source "tkhd"

# interfaces
.implements Lcom/google/android/exoplayer/upstream/DataSource;


# instance fields
.field final a:Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;

.field final b:Ljava/lang/String;

.field final c:Ljava/lang/Boolean;

.field final synthetic d:Lcom/facebook/exoplayer/VideoPlayerService;


# direct methods
.method public constructor <init>(Lcom/facebook/exoplayer/VideoPlayerService;Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 1175
    iput-object p1, p0, Lcom/facebook/exoplayer/VideoPlayerService$CachingDataSource;->d:Lcom/facebook/exoplayer/VideoPlayerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1176
    iput-object p2, p0, Lcom/facebook/exoplayer/VideoPlayerService$CachingDataSource;->a:Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;

    .line 1177
    iput-object p3, p0, Lcom/facebook/exoplayer/VideoPlayerService$CachingDataSource;->b:Ljava/lang/String;

    .line 1178
    iput-object p4, p0, Lcom/facebook/exoplayer/VideoPlayerService$CachingDataSource;->c:Ljava/lang/Boolean;

    .line 1179
    return-void
.end method

.method private a(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .locals 3

    .prologue
    .line 1211
    if-nez p1, :cond_1

    .line 1212
    const/4 p1, 0x0

    .line 1226
    :cond_0
    :goto_0
    return-object p1

    .line 1215
    :cond_1
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$CachingDataSource;->d:Lcom/facebook/exoplayer/VideoPlayerService;

    iget-object v0, v0, Lcom/facebook/exoplayer/VideoPlayerService;->d:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 1219
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, "127.0.0.1"

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1223
    :cond_2
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$CachingDataSource;->d:Lcom/facebook/exoplayer/VideoPlayerService;

    iget-object v0, v0, Lcom/facebook/exoplayer/VideoPlayerService;->d:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "remote-uri"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "vid"

    invoke-virtual {v0, v1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1226
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public final a([BII)I
    .locals 1

    .prologue
    .line 1207
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$CachingDataSource;->a:Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;->a([BII)I

    move-result v0

    return v0
.end method

.method public final a(Lcom/google/android/exoplayer/upstream/DataSpec;)J
    .locals 12

    .prologue
    .line 1188
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$CachingDataSource;->c:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$CachingDataSource;->d:Lcom/facebook/exoplayer/VideoPlayerService;

    iget-object v0, v0, Lcom/facebook/exoplayer/VideoPlayerService;->d:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".m3u8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1191
    :cond_0
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$CachingDataSource;->a:Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;->a(Lcom/google/android/exoplayer/upstream/DataSpec;)J

    move-result-wide v0

    .line 1202
    :goto_0
    return-wide v0

    .line 1194
    :cond_1
    new-instance v1, Lcom/google/android/exoplayer/upstream/DataSpec;

    iget-object v0, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->a:Landroid/net/Uri;

    iget-object v2, p0, Lcom/facebook/exoplayer/VideoPlayerService$CachingDataSource;->b:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/facebook/exoplayer/VideoPlayerService$CachingDataSource;->a(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->b:[B

    iget-wide v4, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->c:J

    iget-wide v6, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->d:J

    iget-wide v8, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->e:J

    iget-object v10, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->f:Ljava/lang/String;

    iget v11, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->g:I

    invoke-direct/range {v1 .. v11}, Lcom/google/android/exoplayer/upstream/DataSpec;-><init>(Landroid/net/Uri;[BJJJLjava/lang/String;I)V

    .line 1202
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$CachingDataSource;->a:Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;->a(Lcom/google/android/exoplayer/upstream/DataSpec;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 1183
    iget-object v0, p0, Lcom/facebook/exoplayer/VideoPlayerService$CachingDataSource;->a:Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;->a()V

    .line 1184
    return-void
.end method
