.class final Lcom/facebook/sosource/XzsAssetSoSource$XzsUnpacker$XzsBackedInputDsoIterator;
.super Lcom/facebook/soloader/UnpackingSoSource$InputDsoIterator;
.source "video_already_seen"


# instance fields
.field final synthetic a:Lcom/facebook/sosource/XzsAssetSoSource$XzsUnpacker;

.field private b:I

.field private c:I

.field public final d:Lcom/facebook/xzdecoder/XzInputStream;


# direct methods
.method constructor <init>(Lcom/facebook/sosource/XzsAssetSoSource$XzsUnpacker;)V
    .locals 2

    .prologue
    .line 181
    iput-object p1, p0, Lcom/facebook/sosource/XzsAssetSoSource$XzsUnpacker$XzsBackedInputDsoIterator;->a:Lcom/facebook/sosource/XzsAssetSoSource$XzsUnpacker;

    invoke-direct {p0}, Lcom/facebook/soloader/UnpackingSoSource$InputDsoIterator;-><init>()V

    .line 182
    iget-object v0, p1, Lcom/facebook/sosource/XzsAssetSoSource$XzsUnpacker;->c:Ljava/util/zip/ZipFile;

    iget-object v1, p1, Lcom/facebook/sosource/XzsAssetSoSource$XzsUnpacker;->e:Ljava/util/zip/ZipEntry;

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    .line 184
    :try_start_0
    new-instance v0, Lcom/facebook/xzdecoder/XzInputStream;

    invoke-direct {v0, v1}, Lcom/facebook/xzdecoder/XzInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/facebook/sosource/XzsAssetSoSource$XzsUnpacker$XzsBackedInputDsoIterator;->d:Lcom/facebook/xzdecoder/XzInputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    :try_start_1
    invoke-direct {p0}, Lcom/facebook/sosource/XzsAssetSoSource$XzsUnpacker$XzsBackedInputDsoIterator;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 197
    return-void

    .line 187
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_0

    .line 188
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_0
    throw v0

    .line 197
    :catchall_1
    move-exception v0

    .line 198
    invoke-virtual {p0}, Lcom/facebook/sosource/XzsAssetSoSource$XzsUnpacker$XzsBackedInputDsoIterator;->close()V

    throw v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 209
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/sosource/XzsAssetSoSource$XzsUnpacker$XzsBackedInputDsoIterator;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/sosource/XzsAssetSoSource$XzsUnpacker$XzsBackedInputDsoIterator;->a:Lcom/facebook/sosource/XzsAssetSoSource$XzsUnpacker;

    iget-object v0, v0, Lcom/facebook/sosource/XzsAssetSoSource$XzsUnpacker;->b:[Lcom/facebook/sosource/XzsAssetSoSource$XzsDso;

    iget v1, p0, Lcom/facebook/sosource/XzsAssetSoSource$XzsUnpacker$XzsBackedInputDsoIterator;->b:I

    aget-object v0, v0, v1

    iget-boolean v0, v0, Lcom/facebook/sosource/XzsAssetSoSource$XzsDso;->e:Z

    if-nez v0, :cond_0

    .line 210
    invoke-virtual {p0}, Lcom/facebook/sosource/XzsAssetSoSource$XzsUnpacker$XzsBackedInputDsoIterator;->b()Lcom/facebook/soloader/UnpackingSoSource$InputDso;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/soloader/UnpackingSoSource$InputDso;->close()V

    goto :goto_0

    .line 212
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .prologue
    .line 216
    iget v0, p0, Lcom/facebook/sosource/XzsAssetSoSource$XzsUnpacker$XzsBackedInputDsoIterator;->b:I

    iget-object v1, p0, Lcom/facebook/sosource/XzsAssetSoSource$XzsUnpacker$XzsBackedInputDsoIterator;->a:Lcom/facebook/sosource/XzsAssetSoSource$XzsUnpacker;

    iget-object v1, v1, Lcom/facebook/sosource/XzsAssetSoSource$XzsUnpacker;->b:[Lcom/facebook/sosource/XzsAssetSoSource$XzsDso;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/facebook/sosource/XzsAssetSoSource$XzsUnpacker$XzsBackedInputDsoIterator;->c:I

    iget-object v1, p0, Lcom/facebook/sosource/XzsAssetSoSource$XzsUnpacker$XzsBackedInputDsoIterator;->a:Lcom/facebook/sosource/XzsAssetSoSource$XzsUnpacker;

    iget v1, v1, Lcom/facebook/sosource/XzsAssetSoSource$XzsUnpacker;->d:I

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
    .line 222
    iget-object v0, p0, Lcom/facebook/sosource/XzsAssetSoSource$XzsUnpacker$XzsBackedInputDsoIterator;->a:Lcom/facebook/sosource/XzsAssetSoSource$XzsUnpacker;

    iget-object v0, v0, Lcom/facebook/sosource/XzsAssetSoSource$XzsUnpacker;->b:[Lcom/facebook/sosource/XzsAssetSoSource$XzsDso;

    iget v1, p0, Lcom/facebook/sosource/XzsAssetSoSource$XzsUnpacker$XzsBackedInputDsoIterator;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/facebook/sosource/XzsAssetSoSource$XzsUnpacker$XzsBackedInputDsoIterator;->b:I

    aget-object v0, v0, v1

    .line 223
    new-instance v1, Lcom/facebook/sosource/XzsAssetSoSource$XzsUnpacker$XzsBackedInputDsoIterator$XzsSliceStream;

    iget v2, v0, Lcom/facebook/sosource/XzsAssetSoSource$XzsDso;->a:I

    invoke-direct {v1, p0, v2}, Lcom/facebook/sosource/XzsAssetSoSource$XzsUnpacker$XzsBackedInputDsoIterator$XzsSliceStream;-><init>(Lcom/facebook/sosource/XzsAssetSoSource$XzsUnpacker$XzsBackedInputDsoIterator;I)V

    .line 226
    :try_start_0
    new-instance v2, Lcom/facebook/soloader/UnpackingSoSource$InputDso;

    invoke-direct {v2, v0, v1}, Lcom/facebook/soloader/UnpackingSoSource$InputDso;-><init>(Lcom/facebook/soloader/UnpackingSoSource$Dso;Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    :try_start_1
    invoke-direct {p0}, Lcom/facebook/sosource/XzsAssetSoSource$XzsUnpacker$XzsBackedInputDsoIterator;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 244
    return-object v2

    .line 229
    :catchall_0
    move-exception v0

    .line 230
    invoke-virtual {v1}, Lcom/facebook/sosource/XzsAssetSoSource$XzsUnpacker$XzsBackedInputDsoIterator$XzsSliceStream;->close()V

    throw v0

    .line 239
    :catchall_1
    move-exception v0

    .line 240
    invoke-virtual {v2}, Lcom/facebook/soloader/UnpackingSoSource$InputDso;->close()V

    throw v0
.end method

.method public final close()V
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/facebook/sosource/XzsAssetSoSource$XzsUnpacker$XzsBackedInputDsoIterator;->d:Lcom/facebook/xzdecoder/XzInputStream;

    invoke-virtual {v0}, Lcom/facebook/xzdecoder/XzInputStream;->close()V

    .line 206
    return-void
.end method
