.class public final Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;
.super Ljava/lang/Object;
.source "minBufferTime"

# interfaces
.implements Lcom/google/android/exoplayer/upstream/UriDataSource;


# instance fields
.field private final a:Lcom/google/android/exoplayer/upstream/UriDataSource;

.field private final b:Lcom/google/android/exoplayer/upstream/UriDataSource;

.field private final c:Lcom/google/android/exoplayer/upstream/UriDataSource;

.field private final d:Lcom/google/android/exoplayer/upstream/UriDataSource;

.field private e:Lcom/google/android/exoplayer/upstream/UriDataSource;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer/upstream/TransferListener;Lcom/google/android/exoplayer/upstream/UriDataSource;)V
    .locals 1

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    invoke-static {p3}, Lcom/google/android/exoplayer/util/Assertions;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/upstream/UriDataSource;

    iput-object v0, p0, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;->a:Lcom/google/android/exoplayer/upstream/UriDataSource;

    .line 112
    new-instance v0, Lcom/google/android/exoplayer/upstream/FileDataSource;

    invoke-direct {v0, p2}, Lcom/google/android/exoplayer/upstream/FileDataSource;-><init>(Lcom/google/android/exoplayer/upstream/TransferListener;)V

    iput-object v0, p0, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;->b:Lcom/google/android/exoplayer/upstream/UriDataSource;

    .line 113
    new-instance v0, Lcom/google/android/exoplayer/upstream/AssetDataSource;

    invoke-direct {v0, p1, p2}, Lcom/google/android/exoplayer/upstream/AssetDataSource;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer/upstream/TransferListener;)V

    iput-object v0, p0, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;->c:Lcom/google/android/exoplayer/upstream/UriDataSource;

    .line 114
    new-instance v0, Lcom/google/android/exoplayer/upstream/ContentDataSource;

    invoke-direct {v0, p1, p2}, Lcom/google/android/exoplayer/upstream/ContentDataSource;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer/upstream/TransferListener;)V

    iput-object v0, p0, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;->d:Lcom/google/android/exoplayer/upstream/UriDataSource;

    .line 115
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer/upstream/TransferListener;Ljava/lang/String;Z)V
    .locals 7

    .prologue
    const/16 v4, 0x1f40

    .line 96
    new-instance v0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;

    const/4 v2, 0x0

    move-object v1, p3

    move-object v3, p2

    move v5, v4

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer/util/Predicate;Lcom/google/android/exoplayer/upstream/TransferListener;IIZ)V

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer/upstream/TransferListener;Lcom/google/android/exoplayer/upstream/UriDataSource;)V

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 66
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer/upstream/TransferListener;Ljava/lang/String;Z)V

    .line 67
    return-void
.end method


# virtual methods
.method public final a([BII)I
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;->e:Lcom/google/android/exoplayer/upstream/UriDataSource;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer/upstream/DataSource;->a([BII)I

    move-result v0

    return v0
.end method

.method public final a(Lcom/google/android/exoplayer/upstream/DataSpec;)J
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;->e:Lcom/google/android/exoplayer/upstream/UriDataSource;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->b(Z)V

    .line 121
    iget-object v0, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 122
    const-string v1, "file"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 123
    :cond_0
    iget-object v0, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/android_asset/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 124
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;->c:Lcom/google/android/exoplayer/upstream/UriDataSource;

    iput-object v0, p0, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;->e:Lcom/google/android/exoplayer/upstream/UriDataSource;

    .line 136
    :goto_1
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;->e:Lcom/google/android/exoplayer/upstream/UriDataSource;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer/upstream/DataSource;->a(Lcom/google/android/exoplayer/upstream/DataSpec;)J

    move-result-wide v0

    return-wide v0

    .line 119
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 126
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;->b:Lcom/google/android/exoplayer/upstream/UriDataSource;

    iput-object v0, p0, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;->e:Lcom/google/android/exoplayer/upstream/UriDataSource;

    goto :goto_1

    .line 128
    :cond_3
    const-string v1, "asset"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 129
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;->c:Lcom/google/android/exoplayer/upstream/UriDataSource;

    iput-object v0, p0, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;->e:Lcom/google/android/exoplayer/upstream/UriDataSource;

    goto :goto_1

    .line 130
    :cond_4
    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 131
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;->d:Lcom/google/android/exoplayer/upstream/UriDataSource;

    iput-object v0, p0, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;->e:Lcom/google/android/exoplayer/upstream/UriDataSource;

    goto :goto_1

    .line 133
    :cond_5
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;->a:Lcom/google/android/exoplayer/upstream/UriDataSource;

    iput-object v0, p0, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;->e:Lcom/google/android/exoplayer/upstream/UriDataSource;

    goto :goto_1
.end method

.method public final a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 151
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;->e:Lcom/google/android/exoplayer/upstream/UriDataSource;

    if-eqz v0, :cond_0

    .line 153
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;->e:Lcom/google/android/exoplayer/upstream/UriDataSource;

    invoke-interface {v0}, Lcom/google/android/exoplayer/upstream/DataSource;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    iput-object v1, p0, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;->e:Lcom/google/android/exoplayer/upstream/UriDataSource;

    .line 158
    :cond_0
    return-void

    .line 155
    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;->e:Lcom/google/android/exoplayer/upstream/UriDataSource;

    throw v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;->e:Lcom/google/android/exoplayer/upstream/UriDataSource;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;->e:Lcom/google/android/exoplayer/upstream/UriDataSource;

    invoke-interface {v0}, Lcom/google/android/exoplayer/upstream/UriDataSource;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
