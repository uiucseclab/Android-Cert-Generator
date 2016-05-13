.class public Lcom/facebook/soloader/DirectorySoSource;
.super Lcom/facebook/soloader/SoSource;
.source "video_chaining_depth_level"


# instance fields
.field protected final a:Ljava/io/File;

.field protected final b:I


# direct methods
.method public constructor <init>(Ljava/io/File;I)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/facebook/soloader/SoSource;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/facebook/soloader/DirectorySoSource;->a:Ljava/io/File;

    .line 36
    iput p2, p0, Lcom/facebook/soloader/DirectorySoSource;->b:I

    .line 37
    return-void
.end method

.method private a(Ljava/lang/String;ILjava/io/File;)I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 46
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p3, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 47
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 71
    :goto_0
    return v0

    .line 51
    :cond_0
    and-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/facebook/soloader/DirectorySoSource;->b:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 53
    const/4 v0, 0x2

    goto :goto_0

    .line 56
    :cond_1
    iget v2, p0, Lcom/facebook/soloader/DirectorySoSource;->b:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3

    .line 57
    invoke-static {v1}, Lcom/facebook/soloader/DirectorySoSource;->a(Ljava/io/File;)[Ljava/lang/String;

    move-result-object v2

    .line 58
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_3

    .line 59
    aget-object v3, v2, v0

    .line 60
    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 64
    or-int/lit8 v4, p2, 0x1

    invoke-static {v3, v4}, Lcom/facebook/soloader/SoLoader;->a(Ljava/lang/String;I)V

    .line 58
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 70
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 71
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static a(Ljava/io/File;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    :try_start_0
    invoke-static {p0}, Lcom/facebook/soloader/MinElf;->a(Ljava/io/File;)[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    return-object v0

    .line 81
    :catchall_0
    move-exception v0

    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/facebook/soloader/DirectorySoSource;->a:Ljava/io/File;

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/soloader/DirectorySoSource;->a(Ljava/lang/String;ILjava/io/File;)I

    move-result v0

    return v0
.end method

.method public final a(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .prologue
    .line 89
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/facebook/soloader/DirectorySoSource;->a:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 90
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
