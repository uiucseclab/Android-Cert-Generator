.class public Lcom/facebook/video/view/exo/DirectDataSourceFactory;
.super Ljava/lang/Object;
.source "onCreate()"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    const-class v0, Lcom/facebook/video/view/exo/DirectDataSourceFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/video/view/exo/DirectDataSourceFactory;->a:Ljava/lang/String;

    .line 38
    const-string v0, "http"

    const-string v1, "https"

    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/facebook/video/view/exo/DirectDataSourceFactory;->b:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/facebook/video/server/VideoServer;Landroid/net/Uri;Lcom/facebook/common/eventbus/TypedEventBus;Lcom/facebook/common/executors/DefaultAndroidThreadUtil;Lcom/facebook/video/abtest/SourceType;)Lcom/google/android/exoplayer/upstream/DataSource;
    .locals 3

    .prologue
    .line 48
    invoke-static {p2}, Lcom/facebook/video/server/VideoServer;->d(Landroid/net/Uri;)Z

    move-result v0

    .line 49
    if-eqz v0, :cond_0

    .line 51
    .line 62
    new-instance v1, Lcom/facebook/video/view/exo/VideoServerDataSource;

    invoke-direct {v1, p1, p3, p4, p5}, Lcom/facebook/video/view/exo/VideoServerDataSource;-><init>(Lcom/facebook/video/server/VideoServer;Lcom/facebook/common/eventbus/TypedEventBus;Lcom/facebook/common/executors/DefaultAndroidThreadUtil;Lcom/facebook/video/abtest/SourceType;)V

    move-object v0, v1

    .line 54
    :goto_0
    return-object v0

    .line 70
    :cond_0
    new-instance v1, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;

    const-string v2, "DefaultUriSourceExo"

    invoke-direct {v1, p0, v2}, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method
