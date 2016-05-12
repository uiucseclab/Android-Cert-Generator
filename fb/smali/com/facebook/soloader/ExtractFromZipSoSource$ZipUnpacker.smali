.class public Lcom/facebook/soloader/ExtractFromZipSoSource$ZipUnpacker;
.super Lcom/facebook/soloader/UnpackingSoSource$Unpacker;
.source "video_cache_request_failed"


# instance fields
.field public a:[Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;

.field final synthetic b:Lcom/facebook/soloader/ExtractFromZipSoSource;

.field public final c:Ljava/util/zip/ZipFile;


# direct methods
.method constructor <init>(Lcom/facebook/soloader/ExtractFromZipSoSource;)V
    .locals 2

    .prologue
    .line 56
    iput-object p1, p0, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipUnpacker;->b:Lcom/facebook/soloader/ExtractFromZipSoSource;

    invoke-direct {p0}, Lcom/facebook/soloader/UnpackingSoSource$Unpacker;-><init>()V

    .line 57
    new-instance v0, Ljava/util/zip/ZipFile;

    iget-object v1, p1, Lcom/facebook/soloader/ExtractFromZipSoSource;->c:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipUnpacker;->c:Ljava/util/zip/ZipFile;

    .line 58
    return-void
.end method


# virtual methods
.method protected final a()Lcom/facebook/soloader/UnpackingSoSource$DsoManifest;
    .locals 2

    .prologue
    .line 123
    new-instance v0, Lcom/facebook/soloader/UnpackingSoSource$DsoManifest;

    invoke-virtual {p0}, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipUnpacker;->c()[Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/soloader/UnpackingSoSource$DsoManifest;-><init>([Lcom/facebook/soloader/UnpackingSoSource$Dso;)V

    return-object v0
.end method

.method protected a(Ljava/util/zip/ZipEntry;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x1

    return v0
.end method

.method protected final b()Lcom/facebook/soloader/UnpackingSoSource$InputDsoIterator;
    .locals 2

    .prologue
    .line 128
    new-instance v0, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipUnpacker$ZipBackedInputDsoIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0}, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipUnpacker$ZipBackedInputDsoIterator;-><init>(Lcom/facebook/soloader/ExtractFromZipSoSource$ZipUnpacker;)V

    return-object v0
.end method

.method final c()[Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 61
    iget-object v0, p0, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipUnpacker;->a:[Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;

    if-nez v0, :cond_7

    .line 62
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 63
    iget-object v0, p0, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipUnpacker;->b:Lcom/facebook/soloader/ExtractFromZipSoSource;

    iget-object v0, v0, Lcom/facebook/soloader/ExtractFromZipSoSource;->d:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 64
    invoke-static {}, Lcom/facebook/soloader/SysUtil;->a()[Ljava/lang/String;

    move-result-object v5

    .line 65
    iget-object v0, p0, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipUnpacker;->c:Ljava/util/zip/ZipFile;

    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v6

    .line 66
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 67
    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    .line 68
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 69
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 70
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    .line 71
    const/4 v8, 0x2

    invoke-virtual {v1, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    .line 72
    invoke-static {v5, v7}, Lcom/facebook/soloader/SysUtil;->a([Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 73
    if-ltz v7, :cond_0

    .line 74
    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;

    .line 75
    if-eqz v1, :cond_1

    iget v1, v1, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;->b:I

    if-ge v7, v1, :cond_0

    .line 76
    :cond_1
    new-instance v1, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;

    invoke-direct {v1, v8, v0, v7}, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;-><init>(Ljava/lang/String;Ljava/util/zip/ZipEntry;I)V

    invoke-virtual {v3, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 82
    :cond_2
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v1

    new-array v1, v1, [Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;

    .line 83
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    move v1, v2

    move v3, v2

    .line 85
    :goto_1
    array-length v4, v0

    if-ge v1, v4, :cond_4

    .line 86
    aget-object v4, v0, v1

    .line 87
    iget-object v5, v4, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;->a:Ljava/util/zip/ZipEntry;

    iget-object v4, v4, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;->c:Ljava/lang/String;

    invoke-virtual {p0, v5, v4}, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipUnpacker;->a(Ljava/util/zip/ZipEntry;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 88
    add-int/lit8 v3, v3, 0x1

    .line 85
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 90
    :cond_3
    const/4 v4, 0x0

    aput-object v4, v0, v1

    goto :goto_2

    .line 93
    :cond_4
    new-array v4, v3, [Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;

    move v1, v2

    .line 94
    :goto_3
    array-length v3, v0

    if-ge v1, v3, :cond_6

    .line 95
    aget-object v5, v0, v1

    .line 96
    if-eqz v5, :cond_5

    .line 97
    add-int/lit8 v3, v2, 0x1

    aput-object v5, v4, v2

    move v2, v3

    .line 94
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 100
    :cond_6
    iput-object v4, p0, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipUnpacker;->a:[Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;

    .line 102
    :cond_7
    iget-object v0, p0, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipUnpacker;->a:[Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;

    return-object v0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipUnpacker;->c:Ljava/util/zip/ZipFile;

    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V

    .line 119
    return-void
.end method
