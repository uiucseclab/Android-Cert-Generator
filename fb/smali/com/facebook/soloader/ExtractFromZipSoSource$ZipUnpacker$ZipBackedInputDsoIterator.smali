.class final Lcom/facebook/soloader/ExtractFromZipSoSource$ZipUnpacker$ZipBackedInputDsoIterator;
.super Lcom/facebook/soloader/UnpackingSoSource$InputDsoIterator;
.source "video_cache_request_failed"


# instance fields
.field final synthetic a:Lcom/facebook/soloader/ExtractFromZipSoSource$ZipUnpacker;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/facebook/soloader/ExtractFromZipSoSource$ZipUnpacker;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipUnpacker$ZipBackedInputDsoIterator;->a:Lcom/facebook/soloader/ExtractFromZipSoSource$ZipUnpacker;

    invoke-direct {p0}, Lcom/facebook/soloader/UnpackingSoSource$InputDsoIterator;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipUnpacker$ZipBackedInputDsoIterator;->a:Lcom/facebook/soloader/ExtractFromZipSoSource$ZipUnpacker;

    invoke-virtual {v0}, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipUnpacker;->c()[Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;

    .line 138
    iget v0, p0, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipUnpacker$ZipBackedInputDsoIterator;->b:I

    iget-object v1, p0, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipUnpacker$ZipBackedInputDsoIterator;->a:Lcom/facebook/soloader/ExtractFromZipSoSource$ZipUnpacker;

    iget-object v1, v1, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipUnpacker;->a:[Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Lcom/facebook/soloader/UnpackingSoSource$InputDso;
    .locals 3

    .prologue
    .line 143
    iget-object v0, p0, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipUnpacker$ZipBackedInputDsoIterator;->a:Lcom/facebook/soloader/ExtractFromZipSoSource$ZipUnpacker;

    invoke-virtual {v0}, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipUnpacker;->c()[Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;

    .line 144
    iget-object v0, p0, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipUnpacker$ZipBackedInputDsoIterator;->a:Lcom/facebook/soloader/ExtractFromZipSoSource$ZipUnpacker;

    iget-object v0, v0, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipUnpacker;->a:[Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;

    iget v1, p0, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipUnpacker$ZipBackedInputDsoIterator;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipUnpacker$ZipBackedInputDsoIterator;->b:I

    aget-object v0, v0, v1

    .line 145
    iget-object v1, p0, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipUnpacker$ZipBackedInputDsoIterator;->a:Lcom/facebook/soloader/ExtractFromZipSoSource$ZipUnpacker;

    iget-object v1, v1, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipUnpacker;->c:Ljava/util/zip/ZipFile;

    iget-object v2, v0, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;->a:Ljava/util/zip/ZipEntry;

    invoke-virtual {v1, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    .line 147
    :try_start_0
    new-instance v2, Lcom/facebook/soloader/UnpackingSoSource$InputDso;

    invoke-direct {v2, v0, v1}, Lcom/facebook/soloader/UnpackingSoSource$InputDso;-><init>(Lcom/facebook/soloader/UnpackingSoSource$Dso;Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    return-object v2

    .line 151
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_0

    .line 152
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_0
    throw v0
.end method
