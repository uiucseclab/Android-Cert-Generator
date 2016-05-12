.class public Lcom/facebook/soloader/ExtractFromZipSoSource;
.super Lcom/facebook/soloader/UnpackingSoSource;
.source "video_cache_request_failed"


# instance fields
.field protected final c:Ljava/io/File;

.field protected final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/facebook/soloader/UnpackingSoSource;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 42
    iput-object p3, p0, Lcom/facebook/soloader/ExtractFromZipSoSource;->c:Ljava/io/File;

    .line 43
    iput-object p4, p0, Lcom/facebook/soloader/ExtractFromZipSoSource;->d:Ljava/lang/String;

    .line 44
    return-void
.end method


# virtual methods
.method protected a()Lcom/facebook/soloader/UnpackingSoSource$Unpacker;
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipUnpacker;

    invoke-direct {v0, p0}, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipUnpacker;-><init>(Lcom/facebook/soloader/ExtractFromZipSoSource;)V

    return-object v0
.end method
