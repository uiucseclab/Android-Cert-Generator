.class public Lcom/facebook/soloader/ApkSoSource;
.super Lcom/facebook/soloader/ExtractFromZipSoSource;
.source "video_cache_request_finished"


# instance fields
.field public final f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 30
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v1, "^lib/([^/]+)/([^/]+\\.so)$"

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/facebook/soloader/ExtractFromZipSoSource;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    .line 37
    iput p3, p0, Lcom/facebook/soloader/ApkSoSource;->f:I

    .line 38
    return-void
.end method


# virtual methods
.method protected final a()Lcom/facebook/soloader/UnpackingSoSource$Unpacker;
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/facebook/soloader/ApkSoSource$ApkUnpacker;

    invoke-direct {v0, p0}, Lcom/facebook/soloader/ApkSoSource$ApkUnpacker;-><init>(Lcom/facebook/soloader/ApkSoSource;)V

    return-object v0
.end method

.method protected final b()[B
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/facebook/soloader/ApkSoSource;->c:Ljava/io/File;

    invoke-static {v0}, Lcom/facebook/soloader/SysUtil;->d(Ljava/io/File;)[B

    move-result-object v0

    return-object v0
.end method
