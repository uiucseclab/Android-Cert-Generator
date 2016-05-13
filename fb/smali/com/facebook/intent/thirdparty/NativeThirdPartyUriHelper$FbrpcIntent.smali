.class public Lcom/facebook/intent/thirdparty/NativeThirdPartyUriHelper$FbrpcIntent;
.super Landroid/content/Intent;
.source "page_videolist_story"


# instance fields
.field transient a:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1362
    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1363
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 1358
    invoke-direct {p0, p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1359
    return-void
.end method


# virtual methods
.method public final a()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 1366
    iget-object v0, p0, Lcom/facebook/intent/thirdparty/NativeThirdPartyUriHelper$FbrpcIntent;->a:Landroid/net/Uri;

    return-object v0
.end method
