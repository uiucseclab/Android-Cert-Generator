.class Lcom/facebook/sosource/XzsAssetSoSource;
.super Lcom/facebook/soloader/UnpackingSoSource;
.source "video_already_seen"


# instance fields
.field private final c:Ljava/io/File;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/facebook/soloader/UnpackingSoSource;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 35
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/facebook/sosource/XzsAssetSoSource;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/sosource/XzsAssetSoSource;->c:Ljava/io/File;

    .line 36
    return-void
.end method

.method static synthetic a(Lcom/facebook/sosource/XzsAssetSoSource;)Ljava/io/File;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/facebook/sosource/XzsAssetSoSource;->c:Ljava/io/File;

    return-object v0
.end method


# virtual methods
.method protected final a()Lcom/facebook/soloader/UnpackingSoSource$Unpacker;
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lcom/facebook/sosource/XzsAssetSoSource$XzsUnpacker;

    invoke-direct {v0, p0}, Lcom/facebook/sosource/XzsAssetSoSource$XzsUnpacker;-><init>(Lcom/facebook/sosource/XzsAssetSoSource;)V

    return-object v0
.end method

.method protected final b()[B
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/facebook/sosource/XzsAssetSoSource;->c:Ljava/io/File;

    invoke-static {v0}, Lcom/facebook/soloader/SysUtil;->d(Ljava/io/File;)[B

    move-result-object v0

    return-object v0
.end method
