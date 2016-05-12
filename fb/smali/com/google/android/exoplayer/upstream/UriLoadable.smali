.class public final Lcom/google/android/exoplayer/upstream/UriLoadable;
.super Ljava/lang/Object;
.source "nf_onpause"

# interfaces
.implements Lcom/google/android/exoplayer/upstream/Loader$Loadable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer/upstream/Loader$Loadable;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/exoplayer/upstream/DataSpec;

.field private final b:Lcom/google/android/exoplayer/upstream/UriDataSource;

.field private final c:Lcom/google/android/exoplayer/upstream/UriLoadable$Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer/upstream/UriLoadable$Parser",
            "<TT;>;"
        }
    .end annotation
.end field

.field private volatile d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private volatile e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/exoplayer/upstream/UriDataSource;Lcom/google/android/exoplayer/upstream/UriLoadable$Parser;)V
    .locals 3
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
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p2, p0, Lcom/google/android/exoplayer/upstream/UriLoadable;->b:Lcom/google/android/exoplayer/upstream/UriDataSource;

    .line 65
    iput-object p3, p0, Lcom/google/android/exoplayer/upstream/UriLoadable;->c:Lcom/google/android/exoplayer/upstream/UriLoadable$Parser;

    .line 66
    new-instance v0, Lcom/google/android/exoplayer/upstream/DataSpec;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer/upstream/DataSpec;-><init>(Landroid/net/Uri;I)V

    iput-object v0, p0, Lcom/google/android/exoplayer/upstream/UriLoadable;->a:Lcom/google/android/exoplayer/upstream/DataSpec;

    .line 67
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
    .line 73
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/UriLoadable;->d:Ljava/lang/Object;

    return-object v0
.end method

.method public final f()V
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer/upstream/UriLoadable;->e:Z

    .line 81
    return-void
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/google/android/exoplayer/upstream/UriLoadable;->e:Z

    return v0
.end method

.method public final h()V
    .locals 3

    .prologue
    .line 90
    new-instance v1, Lcom/google/android/exoplayer/upstream/DataSourceInputStream;

    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/UriLoadable;->b:Lcom/google/android/exoplayer/upstream/UriDataSource;

    iget-object v2, p0, Lcom/google/android/exoplayer/upstream/UriLoadable;->a:Lcom/google/android/exoplayer/upstream/DataSpec;

    invoke-direct {v1, v0, v2}, Lcom/google/android/exoplayer/upstream/DataSourceInputStream;-><init>(Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/upstream/DataSpec;)V

    .line 92
    :try_start_0
    invoke-virtual {v1}, Lcom/google/android/exoplayer/upstream/DataSourceInputStream;->a()V

    .line 93
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/UriLoadable;->c:Lcom/google/android/exoplayer/upstream/UriLoadable$Parser;

    iget-object v2, p0, Lcom/google/android/exoplayer/upstream/UriLoadable;->b:Lcom/google/android/exoplayer/upstream/UriDataSource;

    invoke-interface {v2}, Lcom/google/android/exoplayer/upstream/UriDataSource;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lcom/google/android/exoplayer/upstream/UriLoadable$Parser;->b(Ljava/lang/String;Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/upstream/UriLoadable;->d:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    invoke-virtual {v1}, Lcom/google/android/exoplayer/upstream/DataSourceInputStream;->close()V

    .line 96
    return-void

    .line 95
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/google/android/exoplayer/upstream/DataSourceInputStream;->close()V

    throw v0
.end method
