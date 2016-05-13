.class public Lcom/facebook/loom/logger/FileManager;
.super Ljava/lang/Object;
.source "unset"


# static fields
.field private static final c:Ljava/io/FilenameFilter;

.field private static final d:Ljava/io/FilenameFilter;


# instance fields
.field private a:I

.field private b:J

.field private final e:Ljava/io/File;

.field public f:Lcom/facebook/analytics/logger/AnalyticsLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lcom/facebook/loom/logger/FileManager$1;

    invoke-direct {v0}, Lcom/facebook/loom/logger/FileManager$1;-><init>()V

    sput-object v0, Lcom/facebook/loom/logger/FileManager;->c:Ljava/io/FilenameFilter;

    .line 62
    new-instance v0, Lcom/facebook/loom/logger/FileManager$2;

    invoke-direct {v0}, Lcom/facebook/loom/logger/FileManager$2;-><init>()V

    sput-object v0, Lcom/facebook/loom/logger/FileManager;->d:Ljava/io/FilenameFilter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 77
    invoke-static {p1}, Lcom/facebook/loom/logger/FileManager;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/loom/logger/FileManager;-><init>(Ljava/io/File;)V

    .line 78
    return-void
.end method

.method private constructor <init>(Ljava/io/File;)V
    .locals 2

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/loom/logger/FileManager;->a:I

    .line 51
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/loom/logger/FileManager;->b:J

    .line 73
    iput-object p1, p0, Lcom/facebook/loom/logger/FileManager;->e:Ljava/io/File;

    .line 74
    return-void
.end method

.method private static a(Landroid/content/Context;)Ljava/io/File;
    .locals 4

    .prologue
    .line 81
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    .line 82
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    .line 85
    invoke-static {}, Lcom/facebook/common/build/BuildConstants;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v3, "mounted"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    .line 89
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 100
    :cond_0
    :goto_0
    return-object v0

    .line 95
    :cond_1
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move-object v0, v1

    .line 97
    goto :goto_0

    :cond_3
    move-object v0, v2

    .line 100
    goto :goto_0
.end method

.method private static a(Ljava/io/File;Ljava/io/FilenameFilter;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/FilenameFilter;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 291
    invoke-virtual {p0, p1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    .line 292
    if-nez v0, :cond_0

    .line 293
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 296
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Ljava/io/File;I)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 233
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    .line 253
    :cond_0
    return-void

    .line 237
    :cond_1
    sget-object v0, Lcom/facebook/loom/logger/FileManager;->c:Ljava/io/FilenameFilter;

    invoke-static {p1, v0}, Lcom/facebook/loom/logger/FileManager;->a(Ljava/io/File;Ljava/io/FilenameFilter;)Ljava/util/List;

    move-result-object v0

    .line 239
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, p2, :cond_0

    .line 241
    new-instance v1, Lcom/facebook/loom/logger/FileManager$5;

    invoke-direct {v1, p0}, Lcom/facebook/loom/logger/FileManager$5;-><init>(Lcom/facebook/loom/logger/FileManager;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 247
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, p2

    invoke-interface {v0, v5, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 248
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_2

    .line 249
    const-string v2, "Dextr"

    const-string v3, "Can\'t delete cache file: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/facebook/debug/log/BLog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private a(Ljava/io/File;Ljava/io/File;J)V
    .locals 7

    .prologue
    .line 260
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    .line 288
    :cond_0
    return-void

    .line 264
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v2, v0, p3

    .line 266
    sget-object v0, Lcom/facebook/loom/logger/FileManager;->c:Ljava/io/FilenameFilter;

    invoke-static {p1, v0}, Lcom/facebook/loom/logger/FileManager;->a(Ljava/io/File;Ljava/io/FilenameFilter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 267
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-gez v4, :cond_2

    .line 268
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 269
    new-instance v4, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0, v4}, Lcom/facebook/loom/logger/FileManager;->a(Ljava/io/File;Ljava/io/File;)Z

    .line 272
    new-instance v0, Lcom/facebook/loom/logger/FileManager$6;

    invoke-direct {v0, p0}, Lcom/facebook/loom/logger/FileManager$6;-><init>(Lcom/facebook/loom/logger/FileManager;)V

    invoke-virtual {v0}, Lcom/facebook/loom/logger/FileManager$6;->run()V

    goto :goto_0
.end method

.method private static a(Ljava/io/File;Ljava/io/File;)Z
    .locals 6
    .param p1    # Ljava/io/File;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 206
    if-eqz p1, :cond_1

    .line 207
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 218
    :goto_0
    return v0

    .line 211
    :cond_0
    const-string v2, "Dextr"

    const-string v3, "Can\'t move file: %s"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v2, v3, v4}, Lcom/facebook/debug/log/BLog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 214
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_2

    .line 215
    const-string v2, "Dextr"

    const-string v3, "Can\'t delete file: %s"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    invoke-static {v2, v3, v0}, Lcom/facebook/debug/log/BLog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    move v0, v1

    .line 218
    goto :goto_0
.end method

.method private f()Ljava/io/File;
    .locals 3

    .prologue
    .line 226
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/facebook/loom/logger/FileManager;->e:Ljava/io/File;

    const-string v2, "upload"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/facebook/loom/logger/FileManager;->f()Ljava/io/File;

    move-result-object v0

    .line 156
    iget-object v1, p0, Lcom/facebook/loom/logger/FileManager;->e:Ljava/io/File;

    iget-wide v2, p0, Lcom/facebook/loom/logger/FileManager;->b:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/facebook/loom/logger/FileManager;->a(Ljava/io/File;Ljava/io/File;J)V

    .line 158
    sget-object v1, Lcom/facebook/loom/logger/FileManager;->c:Ljava/io/FilenameFilter;

    invoke-static {v0, v1}, Lcom/facebook/loom/logger/FileManager;->a(Ljava/io/File;Ljava/io/FilenameFilter;)Ljava/util/List;

    move-result-object v0

    .line 160
    new-instance v1, Lcom/facebook/loom/logger/FileManager$3;

    invoke-direct {v1, p0}, Lcom/facebook/loom/logger/FileManager$3;-><init>(Lcom/facebook/loom/logger/FileManager;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 167
    return-object v0
.end method

.method public final a(I)V
    .locals 0

    .prologue
    .line 108
    iput p1, p0, Lcom/facebook/loom/logger/FileManager;->a:I

    .line 109
    return-void
.end method

.method public final a(J)V
    .locals 3

    .prologue
    .line 112
    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, p1

    iput-wide v0, p0, Lcom/facebook/loom/logger/FileManager;->b:J

    .line 113
    return-void
.end method

.method public final a(Ljava/io/File;)V
    .locals 3

    .prologue
    .line 148
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/facebook/loom/logger/FileManager;->e:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 149
    invoke-static {p1, v0}, Lcom/facebook/loom/logger/FileManager;->a(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/facebook/loom/logger/FileManager;->e:Ljava/io/File;

    iget v1, p0, Lcom/facebook/loom/logger/FileManager;->a:I

    invoke-direct {p0, v0, v1}, Lcom/facebook/loom/logger/FileManager;->a(Ljava/io/File;I)V

    .line 152
    :cond_0
    return-void
.end method

.method public final a(Ljava/io/File;Z)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 122
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 123
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 124
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 125
    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 127
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".log"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 128
    if-nez p2, :cond_1

    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "override-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 132
    :cond_1
    invoke-direct {p0}, Lcom/facebook/loom/logger/FileManager;->f()Ljava/io/File;

    move-result-object v1

    .line 134
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 135
    :cond_2
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 136
    invoke-virtual {p1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 137
    const-string v0, "Dextr"

    const-string v2, "Can\'t move file to upload folder: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {v0, v2, v3}, Lcom/facebook/debug/log/BLog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    :cond_3
    iget-object v0, p0, Lcom/facebook/loom/logger/FileManager;->e:Ljava/io/File;

    iget-wide v2, p0, Lcom/facebook/loom/logger/FileManager;->b:J

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/facebook/loom/logger/FileManager;->a(Ljava/io/File;Ljava/io/File;J)V

    .line 141
    iget-object v0, p0, Lcom/facebook/loom/logger/FileManager;->e:Ljava/io/File;

    iget v1, p0, Lcom/facebook/loom/logger/FileManager;->a:I

    invoke-direct {p0, v0, v1}, Lcom/facebook/loom/logger/FileManager;->a(Ljava/io/File;I)V

    .line 145
    :goto_0
    return-void

    .line 143
    :cond_4
    const-string v0, "Dextr"

    const-string v1, "Couldn\'t create upload directory"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 171
    invoke-direct {p0}, Lcom/facebook/loom/logger/FileManager;->f()Ljava/io/File;

    move-result-object v0

    sget-object v1, Lcom/facebook/loom/logger/FileManager;->d:Ljava/io/FilenameFilter;

    invoke-static {v0, v1}, Lcom/facebook/loom/logger/FileManager;->a(Ljava/io/File;Ljava/io/FilenameFilter;)Ljava/util/List;

    move-result-object v0

    .line 174
    new-instance v1, Lcom/facebook/loom/logger/FileManager$4;

    invoke-direct {v1, p0}, Lcom/facebook/loom/logger/FileManager$4;-><init>(Lcom/facebook/loom/logger/FileManager;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 181
    return-object v0
.end method

.method public final c()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 185
    .line 186
    invoke-virtual {p0}, Lcom/facebook/loom/logger/FileManager;->d()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 187
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 188
    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    :goto_1
    move v1, v0

    .line 190
    goto :goto_0

    .line 188
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 191
    :cond_1
    return v1

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public final d()Ljava/lang/Iterable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 195
    invoke-direct {p0}, Lcom/facebook/loom/logger/FileManager;->f()Ljava/io/File;

    move-result-object v0

    sget-object v1, Lcom/facebook/loom/logger/FileManager;->d:Ljava/io/FilenameFilter;

    invoke-static {v0, v1}, Lcom/facebook/loom/logger/FileManager;->a(Ljava/io/File;Ljava/io/FilenameFilter;)Ljava/util/List;

    move-result-object v0

    .line 196
    invoke-direct {p0}, Lcom/facebook/loom/logger/FileManager;->f()Ljava/io/File;

    move-result-object v1

    sget-object v2, Lcom/facebook/loom/logger/FileManager;->c:Ljava/io/FilenameFilter;

    invoke-static {v1, v2}, Lcom/facebook/loom/logger/FileManager;->a(Ljava/io/File;Ljava/io/FilenameFilter;)Ljava/util/List;

    move-result-object v1

    .line 197
    invoke-virtual {p0}, Lcom/facebook/loom/logger/FileManager;->e()Ljava/io/File;

    move-result-object v2

    sget-object v3, Lcom/facebook/loom/logger/FileManager;->d:Ljava/io/FilenameFilter;

    invoke-static {v2, v3}, Lcom/facebook/loom/logger/FileManager;->a(Ljava/io/File;Ljava/io/FilenameFilter;)Ljava/util/List;

    move-result-object v2

    .line 198
    invoke-virtual {p0}, Lcom/facebook/loom/logger/FileManager;->e()Ljava/io/File;

    move-result-object v3

    sget-object v4, Lcom/facebook/loom/logger/FileManager;->c:Ljava/io/FilenameFilter;

    invoke-static {v3, v4}, Lcom/facebook/loom/logger/FileManager;->a(Ljava/io/File;Ljava/io/FilenameFilter;)Ljava/util/List;

    move-result-object v3

    .line 199
    .line 465
    invoke-static {v2, v3, v0, v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    invoke-static {v5}, Lcom/google/common/collect/Iterables;->f(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v5

    move-object v0, v5

    return-object v0
.end method

.method public final e()Ljava/io/File;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/facebook/loom/logger/FileManager;->e:Ljava/io/File;

    return-object v0
.end method
