.class final Lcom/facebook/soloader/ExoSoSource$ExoUnpacker$FileBackedInputDsoIterator;
.super Lcom/facebook/soloader/UnpackingSoSource$InputDsoIterator;
.source "open"


# instance fields
.field final synthetic a:Lcom/facebook/soloader/ExoSoSource$ExoUnpacker;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/facebook/soloader/ExoSoSource$ExoUnpacker;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/facebook/soloader/ExoSoSource$ExoUnpacker$FileBackedInputDsoIterator;->a:Lcom/facebook/soloader/ExoSoSource$ExoUnpacker;

    invoke-direct {p0}, Lcom/facebook/soloader/UnpackingSoSource$InputDsoIterator;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .prologue
    .line 134
    iget v0, p0, Lcom/facebook/soloader/ExoSoSource$ExoUnpacker$FileBackedInputDsoIterator;->b:I

    iget-object v1, p0, Lcom/facebook/soloader/ExoSoSource$ExoUnpacker$FileBackedInputDsoIterator;->a:Lcom/facebook/soloader/ExoSoSource$ExoUnpacker;

    iget-object v1, v1, Lcom/facebook/soloader/ExoSoSource$ExoUnpacker;->b:[Lcom/facebook/soloader/ExoSoSource$FileDso;

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
    .line 139
    iget-object v0, p0, Lcom/facebook/soloader/ExoSoSource$ExoUnpacker$FileBackedInputDsoIterator;->a:Lcom/facebook/soloader/ExoSoSource$ExoUnpacker;

    iget-object v0, v0, Lcom/facebook/soloader/ExoSoSource$ExoUnpacker;->b:[Lcom/facebook/soloader/ExoSoSource$FileDso;

    iget v1, p0, Lcom/facebook/soloader/ExoSoSource$ExoUnpacker$FileBackedInputDsoIterator;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/facebook/soloader/ExoSoSource$ExoUnpacker$FileBackedInputDsoIterator;->b:I

    aget-object v0, v0, v1

    .line 140
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, v0, Lcom/facebook/soloader/ExoSoSource$FileDso;->a:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 142
    :try_start_0
    new-instance v2, Lcom/facebook/soloader/UnpackingSoSource$InputDso;

    invoke-direct {v2, v0, v1}, Lcom/facebook/soloader/UnpackingSoSource$InputDso;-><init>(Lcom/facebook/soloader/UnpackingSoSource$Dso;Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    return-object v2

    .line 146
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_0

    .line 147
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    :cond_0
    throw v0
.end method
