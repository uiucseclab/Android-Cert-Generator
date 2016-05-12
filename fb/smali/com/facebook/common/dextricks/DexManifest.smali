.class final Lcom/facebook/common/dextricks/DexManifest;
.super Ljava/lang/Object;
.source "video.buffer_segment_size"


# instance fields
.field final dexes:[Lcom/facebook/common/dextricks/DexManifest$Dex;

.field final rootRelative:Z


# direct methods
.method constructor <init>(Ljava/io/InputStream;)V
    .locals 10

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 37
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    const-string v5, "UTF-8"

    invoke-direct {v0, p1, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v4, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move v0, v1

    .line 40
    :cond_0
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 41
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_0

    .line 44
    const-string v6, "Secondary program dex metadata: [%s]"

    new-array v7, v2, [Ljava/lang/Object;

    aput-object v5, v7, v1

    invoke-static {v6, v7}, Lcom/facebook/common/dextricks/Mlog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    const-string v6, ".root_relative"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v0, v2

    .line 47
    goto :goto_0

    .line 49
    :cond_1
    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 50
    new-instance v6, Lcom/facebook/common/dextricks/DexManifest$Dex;

    aget-object v7, v5, v1

    aget-object v8, v5, v2

    const/4 v9, 0x2

    aget-object v5, v5, v9

    invoke-direct {v6, v7, v8, v5}, Lcom/facebook/common/dextricks/DexManifest$Dex;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 53
    :cond_2
    iput-boolean v0, p0, Lcom/facebook/common/dextricks/DexManifest;->rootRelative:Z

    .line 54
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/facebook/common/dextricks/DexManifest$Dex;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/common/dextricks/DexManifest$Dex;

    iput-object v0, p0, Lcom/facebook/common/dextricks/DexManifest;->dexes:[Lcom/facebook/common/dextricks/DexManifest$Dex;

    .line 55
    return-void
.end method
