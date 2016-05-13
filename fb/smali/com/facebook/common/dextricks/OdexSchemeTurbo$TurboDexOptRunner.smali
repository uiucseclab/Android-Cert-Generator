.class public final Lcom/facebook/common/dextricks/OdexSchemeTurbo$TurboDexOptRunner;
.super Lcom/facebook/common/dextricks/DexOptRunner;
.source "video renderer is null"


# instance fields
.field private final mBuffer:[B


# direct methods
.method constructor <init>(Ljava/io/File;)V
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/facebook/common/dextricks/DexOptRunner;-><init>(Ljava/io/File;)V

    .line 95
    const/high16 v0, 0x10000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/facebook/common/dextricks/OdexSchemeTurbo$TurboDexOptRunner;->mBuffer:[B

    .line 99
    return-void
.end method


# virtual methods
.method protected final copyDexToOdex(Ljava/io/InputStream;ILjava/io/RandomAccessFile;)I
    .locals 2

    .prologue
    .line 106
    const v0, 0x7fffffff

    iget-object v1, p0, Lcom/facebook/common/dextricks/OdexSchemeTurbo$TurboDexOptRunner;->mBuffer:[B

    invoke-static {p3, p1, v0, v1}, Lcom/facebook/common/dextricks/Fs;->copyBytes(Ljava/io/RandomAccessFile;Ljava/io/InputStream;I[B)I

    move-result v0

    return v0
.end method
