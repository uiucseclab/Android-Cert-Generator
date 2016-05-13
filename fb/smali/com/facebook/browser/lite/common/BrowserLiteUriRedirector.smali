.class public Lcom/facebook/browser/lite/common/BrowserLiteUriRedirector;
.super Ljava/lang/Object;
.source "progress_bar"


# static fields
.field private static final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 15
    new-instance v0, Ljava/util/HashSet;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "www.facebook.com"

    aput-object v2, v1, v3

    const-string v2, "m.facebook.com"

    aput-object v2, v1, v4

    const-string v2, "facebook.com"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/facebook/browser/lite/common/BrowserLiteUriRedirector;->a:Ljava/util/Set;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "dialog/share"

    aput-object v2, v1, v3

    const-string v2, "share.php"

    aput-object v2, v1, v4

    const-string v2, "dialog/share_open_graph"

    aput-object v2, v1, v5

    const-string v2, "dialog/feed"

    aput-object v2, v1, v6

    const/4 v2, 0x4

    const-string v3, "sharer.php"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/facebook/browser/lite/common/BrowserLiteUriRedirector;->b:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/net/Uri;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 26
    if-eqz p0, :cond_0

    sget-object v0, Lcom/facebook/browser/lite/common/BrowserLiteUriRedirector;->a:Ljava/util/Set;

    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    .line 41
    :goto_0
    return v0

    .line 30
    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v2

    .line 31
    if-nez v2, :cond_2

    move v0, v1

    .line 32
    goto :goto_0

    .line 35
    :cond_2
    sget-object v0, Lcom/facebook/browser/lite/common/BrowserLiteUriRedirector;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 36
    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 37
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    move v0, v1

    .line 41
    goto :goto_0
.end method
