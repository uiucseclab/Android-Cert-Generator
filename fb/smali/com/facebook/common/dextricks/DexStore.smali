.class public final Lcom/facebook/common/dextricks/DexStore;
.super Ljava/lang/Object;
.source "video.min_buffer_ms"


# static fields
.field private static sAttemptedCrossDexHookInstallation:Z

.field private static sCrossDexHookInstallationError:Ljava/lang/Throwable;

.field private static final sIsArt:Z

.field private static sListHead:Lcom/facebook/common/dextricks/DexStore;


# instance fields
.field private final mApk:Ljava/io/File;

.field private mLoadAttempted:Z

.field private mLoadedManifest:Lcom/facebook/common/dextricks/DexManifest;

.field public final mLockFile:Lcom/facebook/common/dextricks/ReentrantLockFile;

.field private final mResProvider:Lcom/facebook/common/dextricks/ResProvider;

.field public final next:Lcom/facebook/common/dextricks/DexStore;

.field public final root:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 252
    const-string v0, "java.vm.version"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 253
    const-string v1, "1."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "0."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/facebook/common/dextricks/DexStore;->sIsArt:Z

    .line 254
    return-void

    .line 253
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Ljava/io/File;Ljava/io/File;Lcom/facebook/common/dextricks/ResProvider;)V
    .locals 2

    .prologue
    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    sget-object v0, Lcom/facebook/common/dextricks/DexStore;->sListHead:Lcom/facebook/common/dextricks/DexStore;

    iput-object v0, p0, Lcom/facebook/common/dextricks/DexStore;->next:Lcom/facebook/common/dextricks/DexStore;

    .line 276
    iput-object p2, p0, Lcom/facebook/common/dextricks/DexStore;->mApk:Ljava/io/File;

    .line 277
    iput-object p1, p0, Lcom/facebook/common/dextricks/DexStore;->root:Ljava/io/File;

    .line 278
    invoke-static {p1}, Lcom/facebook/common/dextricks/Fs;->mkdirOrThrow(Ljava/io/File;)V

    .line 279
    new-instance v0, Ljava/io/File;

    const-string v1, "mdex_lock"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/facebook/common/dextricks/ReentrantLockFile;->open(Ljava/io/File;)Lcom/facebook/common/dextricks/ReentrantLockFile;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/common/dextricks/DexStore;->mLockFile:Lcom/facebook/common/dextricks/ReentrantLockFile;

    .line 280
    iput-object p3, p0, Lcom/facebook/common/dextricks/DexStore;->mResProvider:Lcom/facebook/common/dextricks/ResProvider;

    .line 281
    return-void
.end method

.method private assertLockHeld()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1456
    iget-object v0, p0, Lcom/facebook/common/dextricks/DexStore;->mLockFile:Lcom/facebook/common/dextricks/ReentrantLockFile;

    invoke-virtual {v0}, Lcom/facebook/common/dextricks/ReentrantLockFile;->getExclusiveOwner()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v2, "lock req"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/facebook/common/dextricks/Mlog;->assertThat(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 1458
    return-void

    :cond_0
    move v0, v1

    .line 1456
    goto :goto_0
.end method

.method private checkDeps()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1014
    invoke-direct {p0}, Lcom/facebook/common/dextricks/DexStore;->readCurrentDepBlock()[B

    move-result-object v1

    .line 1015
    invoke-direct {p0}, Lcom/facebook/common/dextricks/DexStore;->readSavedDepBlock()[B

    move-result-object v2

    .line 1016
    if-eqz v2, :cond_0

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1017
    :cond_0
    if-eqz v2, :cond_1

    .line 1018
    const-string v1, "primary dex changed: regenerating everything"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/facebook/common/dextricks/Mlog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1027
    :cond_1
    :goto_0
    return v0

    .line 1024
    :cond_2
    const-string v1, "verified deps file"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/facebook/common/dextricks/Mlog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1027
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private checkDirty(Lcom/facebook/common/dextricks/OdexScheme;[Ljava/lang/String;)I
    .locals 10

    .prologue
    const/4 v2, 0x2

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 881
    .line 883
    iget-object v7, p1, Lcom/facebook/common/dextricks/OdexScheme;->expectedFiles:[Ljava/lang/String;

    .line 884
    iget v0, p1, Lcom/facebook/common/dextricks/OdexScheme;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_7

    move v1, v2

    .line 888
    :goto_0
    invoke-virtual {p2}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 889
    invoke-direct {p0, v0, v7}, Lcom/facebook/common/dextricks/DexStore;->setDifference([Ljava/lang/String;[Ljava/lang/String;)V

    move v4, v3

    move v5, v3

    .line 892
    :goto_1
    array-length v8, v0

    if-ge v4, v8, :cond_1

    .line 893
    aget-object v8, v0, v4

    if-eqz v8, :cond_0

    .line 894
    const-string v5, "deleting unknown file %s in dex store %s"

    new-array v8, v2, [Ljava/lang/Object;

    aget-object v9, v0, v4

    aput-object v9, v8, v3

    iget-object v9, p0, Lcom/facebook/common/dextricks/DexStore;->root:Ljava/io/File;

    aput-object v9, v8, v6

    invoke-static {v5, v8}, Lcom/facebook/common/dextricks/Mlog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 895
    new-instance v5, Ljava/io/File;

    iget-object v8, p0, Lcom/facebook/common/dextricks/DexStore;->root:Ljava/io/File;

    aget-object v9, v0, v4

    invoke-direct {v5, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v5}, Lcom/facebook/common/dextricks/Fs;->deleteRecursive(Ljava/io/File;)V

    move v5, v6

    .line 892
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 900
    :cond_1
    if-eqz v5, :cond_2

    iget v0, p1, Lcom/facebook/common/dextricks/OdexScheme;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 901
    const-string v0, "dex store %s had excess files and is non-incremental: regenerating"

    new-array v1, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/facebook/common/dextricks/DexStore;->root:Ljava/io/File;

    aput-object v4, v1, v3

    invoke-static {v0, v1}, Lcom/facebook/common/dextricks/Mlog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v2

    .line 905
    :cond_2
    invoke-direct {p0}, Lcom/facebook/common/dextricks/DexStore;->checkDeps()Z

    move-result v0

    if-nez v0, :cond_3

    .line 906
    const-string v0, "dex store %s dependencies have changed: regenerating all"

    new-array v1, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/facebook/common/dextricks/DexStore;->root:Ljava/io/File;

    aput-object v4, v1, v3

    invoke-static {v0, v1}, Lcom/facebook/common/dextricks/Mlog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v2

    .line 910
    :cond_3
    if-gtz v1, :cond_5

    .line 911
    invoke-virtual {v7}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 912
    invoke-direct {p0, v0, p2}, Lcom/facebook/common/dextricks/DexStore;->setDifference([Ljava/lang/String;[Ljava/lang/String;)V

    move v4, v1

    move v1, v3

    .line 913
    :goto_2
    array-length v5, v0

    if-ge v1, v5, :cond_6

    .line 914
    aget-object v5, v0, v1

    if-eqz v5, :cond_4

    .line 915
    const-string v4, "missing file %s in dex store %s"

    new-array v5, v2, [Ljava/lang/Object;

    aget-object v7, v0, v1

    aput-object v7, v5, v3

    iget-object v7, p0, Lcom/facebook/common/dextricks/DexStore;->root:Ljava/io/File;

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/facebook/common/dextricks/Mlog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    move v4, v6

    .line 913
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    move v4, v1

    .line 921
    :cond_6
    return v4

    :cond_7
    move v1, v3

    goto/16 :goto_0
.end method

.method private deleteFiles([Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 870
    move v0, v1

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 871
    aget-object v2, p1, v0

    if-eqz v2, :cond_0

    .line 873
    const-string v2, "deleting existing file %s/%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/facebook/common/dextricks/DexStore;->root:Ljava/io/File;

    aput-object v4, v3, v1

    const/4 v4, 0x1

    aget-object v5, p1, v0

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/facebook/common/dextricks/Mlog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 875
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/facebook/common/dextricks/DexStore;->root:Ljava/io/File;

    aget-object v4, p1, v0

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/facebook/common/dextricks/Fs;->deleteRecursive(Ljava/io/File;)V

    .line 870
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 878
    :cond_1
    return-void
.end method

.method private determineDesiredState(BLcom/facebook/common/dextricks/DexManifest;)B
    .locals 7

    .prologue
    const/16 v0, 0x9

    const/4 v1, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 774
    iget-object v2, p2, Lcom/facebook/common/dextricks/DexManifest;->dexes:[Lcom/facebook/common/dextricks/DexManifest$Dex;

    array-length v2, v2

    if-nez v2, :cond_0

    .line 775
    const-string v1, "no secondary dexes listed: using noop configuration"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/facebook/common/dextricks/Mlog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 815
    :goto_0
    return v0

    .line 779
    :cond_0
    const/4 v2, 0x5

    if-ne p1, v2, :cond_1

    .line 780
    const-string v0, "recovering from bad class gen: using fallback"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/facebook/common/dextricks/Mlog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 781
    goto :goto_0

    .line 784
    :cond_1
    const-string v2, "Amazon"

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 785
    const-string v0, "avoiding optimizations on non-standard VM"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/facebook/common/dextricks/Mlog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 786
    goto :goto_0

    .line 789
    :cond_2
    sget-boolean v2, Lcom/facebook/common/dextricks/DexStore;->sIsArt:Z

    if-eqz v2, :cond_4

    .line 791
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_3

    .line 792
    const-string v0, "avoiding optimizations on pre-L VM"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/facebook/common/dextricks/Mlog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 793
    goto :goto_0

    .line 796
    :cond_3
    iget-object v1, p2, Lcom/facebook/common/dextricks/DexManifest;->dexes:[Lcom/facebook/common/dextricks/DexManifest$Dex;

    aget-object v1, v1, v5

    iget-object v1, v1, Lcom/facebook/common/dextricks/DexManifest$Dex;->canaryClass:Ljava/lang/String;

    .line 799
    :try_start_0
    const-string v2, "attempting to detect built-in ART multidex by classloading %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Lcom/facebook/common/dextricks/Mlog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 801
    iget-object v2, p2, Lcom/facebook/common/dextricks/DexManifest;->dexes:[Lcom/facebook/common/dextricks/DexManifest$Dex;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/facebook/common/dextricks/DexManifest$Dex;->canaryClass:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 802
    const-string v2, "ART native multi-dex in use: found %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Lcom/facebook/common/dextricks/Mlog;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 805
    :catch_0
    move-exception v0

    const-string v0, "ART multi-dex not in use: cannot load %s"

    new-array v2, v6, [Ljava/lang/Object;

    aput-object v1, v2, v5

    invoke-static {v0, v2}, Lcom/facebook/common/dextricks/Mlog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 807
    const/16 v0, 0x8

    goto :goto_0

    .line 811
    :cond_4
    :try_start_1
    invoke-static {}, Lcom/facebook/common/dextricks/DexStore;->installCrossDexHooks()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 812
    const/4 v0, 0x3

    goto :goto_0

    .line 813
    :catch_1
    move-exception v0

    .line 814
    const-string v1, "disabling cross-dex optimization: cannot install hooks"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/facebook/common/dextricks/Mlog;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 815
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private static determineOdexCacheName(Ljava/io/File;)Ljava/io/File;
    .locals 5
    .annotation build Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 1052
    sget-boolean v0, Lcom/facebook/common/dextricks/DexStore;->sIsArt:Z

    if-eqz v0, :cond_1

    .line 1053
    const/4 v0, 0x0

    .line 1065
    :cond_0
    :goto_0
    return-object v0

    .line 1055
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 1056
    const-string v0, ".apk"

    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1059
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".odex"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1060
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1065
    :cond_2
    invoke-static {}, Lcom/facebook/common/dextricks/Fs;->findSystemDalvikCache()Ljava/io/File;

    move-result-object v0

    const-string v1, "classes.dex"

    invoke-static {v0, p0, v1}, Lcom/facebook/common/dextricks/Fs;->dexOptGenerateCacheFileName(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method public static declared-synchronized dexStoreListHead()Lcom/facebook/common/dextricks/DexStore;
    .locals 2

    .prologue
    .line 323
    const-class v0, Lcom/facebook/common/dextricks/DexStore;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/facebook/common/dextricks/DexStore;->sListHead:Lcom/facebook/common/dextricks/DexStore;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private findInArray([Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 1132
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 1133
    aget-object v1, p1, v0

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1137
    :goto_1
    return v0

    .line 1132
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1137
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static declared-synchronized findOpened(Ljava/io/File;)Lcom/facebook/common/dextricks/DexStore;
    .locals 4

    .prologue
    .line 308
    const-class v1, Lcom/facebook/common/dextricks/DexStore;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v2

    .line 309
    invoke-static {}, Lcom/facebook/common/dextricks/DexStore;->dexStoreListHead()Lcom/facebook/common/dextricks/DexStore;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 310
    iget-object v3, v0, Lcom/facebook/common/dextricks/DexStore;->root:Ljava/io/File;

    invoke-virtual {v3, v2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    .line 314
    :goto_1
    monitor-exit v1

    return-object v0

    .line 309
    :cond_0
    :try_start_1
    iget-object v0, v0, Lcom/facebook/common/dextricks/DexStore;->next:Lcom/facebook/common/dextricks/DexStore;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 314
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 308
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized installCrossDexHooks()V
    .locals 3

    .prologue
    .line 1372
    const-class v1, Lcom/facebook/common/dextricks/DexStore;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/facebook/common/dextricks/DexStore;->sAttemptedCrossDexHookInstallation:Z

    if-eqz v0, :cond_0

    .line 1373
    sget-object v0, Lcom/facebook/common/dextricks/DexStore;->sCrossDexHookInstallationError:Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    .line 1374
    sget-object v0, Lcom/facebook/common/dextricks/DexStore;->sCrossDexHookInstallationError:Ljava/lang/Throwable;

    invoke-static {v0}, Lcom/facebook/common/dextricks/Fs;->runtimeExFrom(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1372
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1377
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    sput-boolean v0, Lcom/facebook/common/dextricks/DexStore;->sAttemptedCrossDexHookInstallation:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1379
    :try_start_2
    invoke-static {}, Lcom/facebook/dalvik/DalvikInternals;->fixDvmForCrossDexHack()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1384
    :try_start_3
    const-string v0, "cross-dex hook installation succeeded"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/facebook/common/dextricks/Mlog;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1386
    :cond_1
    monitor-exit v1

    return-void

    .line 1380
    :catch_0
    move-exception v0

    .line 1381
    :try_start_4
    sput-object v0, Lcom/facebook/common/dextricks/DexStore;->sCrossDexHookInstallationError:Ljava/lang/Throwable;

    .line 1382
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method private listRootFiles()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 409
    iget-object v0, p0, Lcom/facebook/common/dextricks/DexStore;->root:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 410
    if-nez v1, :cond_0

    .line 411
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unable to list directory "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/facebook/common/dextricks/DexStore;->root:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 413
    :cond_0
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_3

    .line 414
    aget-object v2, v1, v0

    .line 415
    const-string v3, "mdex_lock"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "mdex_status2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "odex_lock"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "deps"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "regen_stamp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 421
    :cond_1
    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 413
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 424
    :cond_3
    invoke-direct {p0, v1}, Lcom/facebook/common/dextricks/DexStore;->pruneTemporaryDirectoriesLocked([Ljava/lang/String;)V

    .line 425
    return-object v1
.end method

.method private loadAllImpl(ILcom/facebook/base/lwperf/LightweightPerfEventsTracer;)I
    .locals 19

    .prologue
    .line 430
    and-int/lit8 v2, p1, 0x4

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    move v8, v2

    .line 432
    :goto_0
    const-string v2, "DLL2_manifest_load"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/facebook/base/lwperf/LightweightPerfEventsTracer;->a(Ljava/lang/String;)Lcom/facebook/base/lwperf/LightweightPerfEventsTracer$LwpEvent;

    move-result-object v4

    const/4 v3, 0x0

    .line 433
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/facebook/common/dextricks/DexStore;->loadManifest()Lcom/facebook/common/dextricks/DexManifest;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v5

    .line 434
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/facebook/base/lwperf/LightweightPerfEventsTracer$LwpEvent;->close()V

    .line 436
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/common/dextricks/DexStore;->mLockFile:Lcom/facebook/common/dextricks/ReentrantLockFile;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/facebook/common/dextricks/ReentrantLockFile;->acquire(I)Lcom/facebook/common/dextricks/ReentrantLockFile$Lock;

    move-result-object v9

    .line 438
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/facebook/common/dextricks/DexStore;->mLoadAttempted:Z

    if-eqz v2, :cond_8

    .line 439
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/common/dextricks/DexStore;->mLoadedManifest:Lcom/facebook/common/dextricks/DexManifest;

    if-nez v2, :cond_5

    .line 440
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "can attempt to load a given DexStore only once in a process lifetime"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 709
    :catchall_0
    move-exception v2

    move-object v3, v9

    :goto_1
    if-eqz v3, :cond_1

    .line 710
    invoke-virtual {v3}, Lcom/facebook/common/dextricks/ReentrantLockFile$Lock;->close()V

    :cond_1
    throw v2

    .line 430
    :cond_2
    const/4 v2, 0x0

    move v8, v2

    goto :goto_0

    .line 432
    :catch_0
    move-exception v3

    :try_start_2
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 434
    :catchall_1
    move-exception v2

    if-eqz v4, :cond_3

    if-eqz v3, :cond_4

    :try_start_3
    invoke-virtual {v4}, Lcom/facebook/base/lwperf/LightweightPerfEventsTracer$LwpEvent;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    :cond_3
    :goto_2
    throw v2

    :catch_1
    move-exception v4

    invoke-static {v3, v4}, Lcom/facebook/androidcompat/AndroidCompat;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v4}, Lcom/facebook/base/lwperf/LightweightPerfEventsTracer$LwpEvent;->close()V

    goto :goto_2

    .line 709
    :cond_5
    if-eqz v9, :cond_6

    .line 710
    invoke-virtual {v9}, Lcom/facebook/common/dextricks/ReentrantLockFile$Lock;->close()V

    :cond_6
    const/4 v2, 0x4

    :cond_7
    :goto_3
    return v2

    .line 446
    :cond_8
    const/4 v2, 0x1

    :try_start_4
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/facebook/common/dextricks/DexStore;->mLoadAttempted:Z

    .line 452
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/common/dextricks/DexStore;->readStatusLocked()J

    move-result-wide v10

    .line 453
    const-wide/16 v2, 0xf

    and-long/2addr v2, v10

    long-to-int v2, v2

    int-to-byte v12, v2

    .line 455
    const/16 v2, 0xa

    if-lt v12, v2, :cond_9

    .line 456
    const-string v2, "found invalid state %s: nuking dex store %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v12}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/facebook/common/dextricks/DexStore;->root:Ljava/io/File;

    aput-object v6, v3, v4

    invoke-static {v2, v3}, Lcom/facebook/common/dextricks/Mlog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 459
    :cond_9
    const/4 v2, 0x1

    if-ne v12, v2, :cond_a

    .line 460
    const-string v2, "found abandoned transaction (prev stateno %s status %x) on dex store %s: nuking store"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v6, 0x4

    shr-long v6, v10, v6

    const-wide/16 v14, 0xf

    and-long/2addr v6, v14

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v4, 0x1

    const/4 v6, 0x4

    shr-long v6, v10, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v4, 0x2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/facebook/common/dextricks/DexStore;->root:Ljava/io/File;

    aput-object v6, v3, v4

    invoke-static {v2, v3}, Lcom/facebook/common/dextricks/Mlog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 468
    :cond_a
    const/4 v2, 0x5

    if-ne v12, v2, :cond_b

    .line 469
    const-string v2, "crashed last time while loading generated files; trying fallback"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/facebook/common/dextricks/Mlog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 472
    :cond_b
    const/4 v2, 0x6

    if-ne v12, v2, :cond_c

    .line 473
    const-string v2, "force dex regeneration requested"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/facebook/common/dextricks/Mlog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 476
    :cond_c
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v10, v11}, Lcom/facebook/common/dextricks/DexStore;->schemeForState(Lcom/facebook/common/dextricks/DexManifest;J)Lcom/facebook/common/dextricks/OdexScheme;

    move-result-object v2

    .line 485
    const-string v3, "DLL2_check_dirty"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/facebook/base/lwperf/LightweightPerfEventsTracer;->a(Ljava/lang/String;)Lcom/facebook/base/lwperf/LightweightPerfEventsTracer$LwpEvent;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v4

    const/4 v3, 0x0

    .line 486
    :try_start_5
    invoke-direct/range {p0 .. p0}, Lcom/facebook/common/dextricks/DexStore;->listRootFiles()[Ljava/lang/String;

    move-result-object v7

    .line 487
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v7}, Lcom/facebook/common/dextricks/DexStore;->checkDirty(Lcom/facebook/common/dextricks/OdexScheme;[Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_d

    move-result v6

    .line 488
    if-eqz v4, :cond_d

    :try_start_6
    invoke-virtual {v4}, Lcom/facebook/base/lwperf/LightweightPerfEventsTracer$LwpEvent;->close()V

    .line 495
    :cond_d
    if-nez v6, :cond_12

    .line 496
    const-string v3, "LA_LOAD_EXISTING"

    .line 503
    :goto_4
    const-string v4, "current scheme: %s next step: %s"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v2, v13, v14

    const/4 v14, 0x1

    aput-object v3, v13, v14

    invoke-static {v4, v13}, Lcom/facebook/common/dextricks/Mlog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 505
    const/4 v3, 0x1

    if-ne v6, v3, :cond_e

    iget v3, v2, Lcom/facebook/common/dextricks/OdexScheme;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_e

    .line 507
    const-string v3, "scheme %s is non-incremental: regenerating everything"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v4, v6

    invoke-static {v3, v4}, Lcom/facebook/common/dextricks/Mlog;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 508
    const/4 v6, 0x2

    .line 511
    :cond_e
    if-nez v6, :cond_f

    const/4 v3, 0x3

    if-ne v12, v3, :cond_f

    .line 513
    :try_start_7
    invoke-static {}, Lcom/facebook/common/dextricks/DexStore;->installCrossDexHooks()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 520
    :cond_f
    :goto_5
    const/4 v3, 0x0

    .line 521
    if-lez v6, :cond_16

    .line 524
    :try_start_8
    iget-object v3, v5, Lcom/facebook/common/dextricks/DexManifest;->dexes:[Lcom/facebook/common/dextricks/DexManifest$Dex;

    array-length v3, v3

    const/16 v4, 0x3a

    if-le v3, v4, :cond_14

    .line 525
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "too many dexes: have %s but maximum per dex store is %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v5, v5, Lcom/facebook/common/dextricks/DexManifest;->dexes:[Lcom/facebook/common/dextricks/DexManifest$Dex;

    array-length v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    const/4 v5, 0x1

    const/16 v6, 0x3a

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 485
    :catch_2
    move-exception v2

    :try_start_9
    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 488
    :catchall_2
    move-exception v3

    move-object/from16 v18, v3

    move-object v3, v2

    move-object/from16 v2, v18

    :goto_6
    if-eqz v4, :cond_10

    if-eqz v3, :cond_11

    :try_start_a
    invoke-virtual {v4}, Lcom/facebook/base/lwperf/LightweightPerfEventsTracer$LwpEvent;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :cond_10
    :goto_7
    :try_start_b
    throw v2

    :catch_3
    move-exception v4

    invoke-static {v3, v4}, Lcom/facebook/androidcompat/AndroidCompat;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_7

    :cond_11
    invoke-virtual {v4}, Lcom/facebook/base/lwperf/LightweightPerfEventsTracer$LwpEvent;->close()V

    goto :goto_7

    .line 497
    :cond_12
    const/4 v3, 0x1

    if-ne v6, v3, :cond_13

    .line 498
    const-string v3, "LA_REGEN_MISSING"

    goto :goto_4

    .line 500
    :cond_13
    const-string v3, "LA_REGEN_ALL"

    goto :goto_4

    .line 514
    :catch_4
    move-exception v3

    .line 515
    const-string v4, "dex store %s needs xdex hooks, but we can\'t do it: regenerating"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/facebook/common/dextricks/DexStore;->root:Ljava/io/File;

    aput-object v14, v6, v13

    invoke-static {v3, v4, v6}, Lcom/facebook/common/dextricks/Mlog;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 516
    const/4 v6, 0x2

    goto :goto_5

    .line 538
    :cond_14
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/facebook/common/dextricks/DexStore;->writeTxFailedStatusLocked(J)V

    .line 541
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/common/dextricks/DexStore;->root:Ljava/io/File;

    const-string v13, "regen_stamp"

    invoke-direct {v3, v4, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 542
    invoke-static {v3}, Lcom/facebook/common/dextricks/Fs;->deleteRecursive(Ljava/io/File;)V

    .line 543
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 544
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/common/dextricks/DexStore;->root:Ljava/io/File;

    const-string v13, "odex_lock"

    invoke-direct {v3, v4, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 545
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 546
    invoke-static {v3}, Lcom/facebook/common/dextricks/ReentrantLockFile;->open(Ljava/io/File;)Lcom/facebook/common/dextricks/ReentrantLockFile;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-result-object v4

    const/4 v3, 0x0

    .line 547
    const/4 v13, 0x0

    :try_start_c
    invoke-virtual {v4, v13}, Lcom/facebook/common/dextricks/ReentrantLockFile;->acquire(I)Lcom/facebook/common/dextricks/ReentrantLockFile$Lock;

    move-result-object v13

    invoke-virtual {v13}, Lcom/facebook/common/dextricks/ReentrantLockFile$Lock;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_c

    .line 548
    if-eqz v4, :cond_15

    :try_start_d
    invoke-virtual {v4}, Lcom/facebook/common/dextricks/ReentrantLockFile;->close()V

    .line 550
    :cond_15
    const/4 v3, 0x1

    .line 553
    :cond_16
    const/4 v4, 0x1

    if-ne v6, v4, :cond_17

    .line 554
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "DLL2_regen_missing_"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/facebook/base/lwperf/LightweightPerfEventsTracer;->a(Ljava/lang/String;)Lcom/facebook/base/lwperf/LightweightPerfEventsTracer$LwpEvent;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    move-result-object v13

    const/4 v4, 0x0

    .line 556
    const/4 v6, 0x1

    :try_start_e
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v2, v6}, Lcom/facebook/common/dextricks/DexStore;->runCompiler(Lcom/facebook/common/dextricks/DexManifest;Lcom/facebook/common/dextricks/OdexScheme;I)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_8
    .catchall {:try_start_e .. :try_end_e} :catchall_b

    .line 557
    const/4 v6, 0x0

    .line 562
    :goto_8
    if-eqz v13, :cond_17

    :try_start_f
    invoke-virtual {v13}, Lcom/facebook/base/lwperf/LightweightPerfEventsTracer$LwpEvent;->close()V

    .line 565
    :cond_17
    if-eqz v6, :cond_30

    .line 566
    invoke-direct/range {p0 .. p0}, Lcom/facebook/common/dextricks/DexStore;->saveDeps()V

    .line 567
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v5}, Lcom/facebook/common/dextricks/DexStore;->determineDesiredState(BLcom/facebook/common/dextricks/DexManifest;)B

    move-result v4

    .line 568
    and-int/lit8 v10, p1, 0x1

    if-eqz v10, :cond_18

    .line 569
    sparse-switch v4, :sswitch_data_0

    .line 581
    :cond_18
    :goto_9
    const-string v10, "desiredStateNo:%s"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Lcom/facebook/common/dextricks/Mlog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v10, v7

    move v7, v4

    move-object v4, v2

    .line 582
    :goto_a
    if-eqz v6, :cond_23

    .line 584
    const/4 v2, 0x2

    if-lt v6, v2, :cond_1d

    const/4 v2, 0x1

    :goto_b
    const-string v4, "incremental regen already handled"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v2, v4, v11}, Lcom/facebook/common/dextricks/Mlog;->assertThat(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 587
    int-to-long v12, v7

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v12, v13}, Lcom/facebook/common/dextricks/DexStore;->schemeForState(Lcom/facebook/common/dextricks/DexManifest;J)Lcom/facebook/common/dextricks/OdexScheme;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    move-result-object v11

    .line 588
    :try_start_10
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "DLL2_regen_all_"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/facebook/base/lwperf/LightweightPerfEventsTracer;->a(Ljava/lang/String;)Lcom/facebook/base/lwperf/LightweightPerfEventsTracer$LwpEvent;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_b
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    move-result-object v12

    const/4 v4, 0x0

    .line 589
    :try_start_11
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/facebook/common/dextricks/DexStore;->deleteFiles([Ljava/lang/String;)V

    .line 592
    iget v2, v11, Lcom/facebook/common/dextricks/OdexScheme;->flags:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_1e

    .line 593
    const-string v2, "not running dex compiler: scheme says there is nothing to do"

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v2, v13}, Lcom/facebook/common/dextricks/Mlog;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_a
    .catchall {:try_start_11 .. :try_end_11} :catchall_a

    .line 597
    :goto_c
    const/4 v4, 0x0

    .line 598
    if-eqz v12, :cond_21

    :try_start_12
    invoke-virtual {v12}, Lcom/facebook/base/lwperf/LightweightPerfEventsTracer$LwpEvent;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_10
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    move v6, v4

    move-object v4, v11

    goto :goto_a

    .line 546
    :catch_5
    move-exception v2

    :try_start_13
    throw v2
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    .line 548
    :catchall_3
    move-exception v3

    move-object/from16 v18, v3

    move-object v3, v2

    move-object/from16 v2, v18

    :goto_d
    if-eqz v4, :cond_19

    if-eqz v3, :cond_1a

    :try_start_14
    invoke-virtual {v4}, Lcom/facebook/common/dextricks/ReentrantLockFile;->close()V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_6
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    :cond_19
    :goto_e
    :try_start_15
    throw v2

    :catch_6
    move-exception v4

    invoke-static {v3, v4}, Lcom/facebook/androidcompat/AndroidCompat;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_e

    :cond_1a
    invoke-virtual {v4}, Lcom/facebook/common/dextricks/ReentrantLockFile;->close()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    goto :goto_e

    .line 558
    :catch_7
    move-exception v6

    .line 559
    :try_start_16
    const-string v14, "incremental regeneration error in dex store %s: regenerating"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/common/dextricks/DexStore;->root:Ljava/io/File;

    move-object/from16 v17, v0

    aput-object v17, v15, v16

    invoke-static {v6, v14, v15}, Lcom/facebook/common/dextricks/Mlog;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_8
    .catchall {:try_start_16 .. :try_end_16} :catchall_b

    .line 560
    const/4 v6, 0x2

    goto/16 :goto_8

    .line 554
    :catch_8
    move-exception v2

    :try_start_17
    throw v2
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    .line 562
    :catchall_4
    move-exception v3

    move-object/from16 v18, v3

    move-object v3, v2

    move-object/from16 v2, v18

    :goto_f
    if-eqz v13, :cond_1b

    if-eqz v3, :cond_1c

    :try_start_18
    invoke-virtual {v13}, Lcom/facebook/base/lwperf/LightweightPerfEventsTracer$LwpEvent;->close()V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_9
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    :cond_1b
    :goto_10
    :try_start_19
    throw v2

    :catch_9
    move-exception v4

    invoke-static {v3, v4}, Lcom/facebook/androidcompat/AndroidCompat;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_10

    :cond_1c
    invoke-virtual {v13}, Lcom/facebook/base/lwperf/LightweightPerfEventsTracer$LwpEvent;->close()V

    goto :goto_10

    .line 571
    :sswitch_0
    const-string v4, "using ART turbo instead of ART xdex: DS_OPTIMIZE_FOR_DEVELOPMENT"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v4, v10}, Lcom/facebook/common/dextricks/Mlog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 572
    const/4 v4, 0x7

    .line 573
    goto/16 :goto_9

    .line 575
    :sswitch_1
    const-string v4, "using Dalvik turbo instead of xdex: DS_OPTIMIZE_FOR_DEVELOPMENT"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v4, v10}, Lcom/facebook/common/dextricks/Mlog;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    .line 576
    const/4 v4, 0x4

    goto/16 :goto_9

    .line 584
    :cond_1d
    const/4 v2, 0x0

    goto/16 :goto_b

    .line 595
    :cond_1e
    const/4 v2, 0x0

    :try_start_1a
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v11, v2}, Lcom/facebook/common/dextricks/DexStore;->runCompiler(Lcom/facebook/common/dextricks/DexManifest;Lcom/facebook/common/dextricks/OdexScheme;I)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_a

    goto :goto_c

    .line 588
    :catch_a
    move-exception v2

    :try_start_1b
    throw v2
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_5

    .line 598
    :catchall_5
    move-exception v4

    move-object/from16 v18, v4

    move-object v4, v2

    move-object/from16 v2, v18

    :goto_11
    if-eqz v12, :cond_1f

    if-eqz v4, :cond_20

    :try_start_1c
    invoke-virtual {v12}, Lcom/facebook/base/lwperf/LightweightPerfEventsTracer$LwpEvent;->close()V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_b
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    :cond_1f
    :goto_12
    :try_start_1d
    throw v2
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_b
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0

    :catch_b
    move-exception v2

    move v4, v6

    .line 599
    :goto_13
    const/4 v6, 0x2

    if-ne v7, v6, :cond_22

    .line 600
    :try_start_1e
    throw v2
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0

    .line 598
    :catch_c
    move-exception v10

    :try_start_1f
    invoke-static {v4, v10}, Lcom/facebook/androidcompat/AndroidCompat;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_12

    :cond_20
    invoke-virtual {v12}, Lcom/facebook/base/lwperf/LightweightPerfEventsTracer$LwpEvent;->close()V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_b
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0

    goto :goto_12

    :cond_21
    move v6, v4

    move-object v4, v11

    .line 606
    goto/16 :goto_a

    .line 603
    :cond_22
    :try_start_20
    const-string v6, "dex store %s: failed turbodex: using fallback"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/facebook/common/dextricks/DexStore;->root:Ljava/io/File;

    aput-object v12, v7, v10

    invoke-static {v2, v6, v7}, Lcom/facebook/common/dextricks/Mlog;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 604
    invoke-direct/range {p0 .. p0}, Lcom/facebook/common/dextricks/DexStore;->listRootFiles()[Ljava/lang/String;

    move-result-object v6

    .line 605
    const/4 v2, 0x2

    move v7, v2

    move-object v10, v6

    move v6, v4

    move-object v4, v11

    .line 606
    goto/16 :goto_a

    .line 609
    :cond_23
    int-to-long v10, v7

    .line 613
    :goto_14
    if-nez v6, :cond_2a

    const/4 v2, 0x1

    :goto_15
    const-string v6, "next step should be LA_LOAD_EXISTING"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v2, v6, v7}, Lcom/facebook/common/dextricks/Mlog;->assertThat(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 625
    if-eqz v8, :cond_24

    move-object/from16 v2, p0

    move-object/from16 v6, p2

    move/from16 v7, p1

    .line 626
    invoke-direct/range {v2 .. v7}, Lcom/facebook/common/dextricks/DexStore;->loadDexFiles(ZLcom/facebook/common/dextricks/OdexScheme;Lcom/facebook/common/dextricks/DexManifest;Lcom/facebook/base/lwperf/LightweightPerfEventsTracer;I)V

    .line 629
    :cond_24
    if-eqz v3, :cond_25

    .line 630
    if-eqz v8, :cond_2b

    .line 632
    const-string v2, "about to start syncer thread"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2, v6}, Lcom/facebook/common/dextricks/Mlog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 635
    new-instance v2, Lcom/facebook/common/dextricks/DexStore$FinishRegenerationThread;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v9, v10, v11}, Lcom/facebook/common/dextricks/DexStore$FinishRegenerationThread;-><init>(Lcom/facebook/common/dextricks/DexStore;Lcom/facebook/common/dextricks/ReentrantLockFile$Lock;J)V

    .line 637
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/facebook/common/dextricks/DexStore;->mLockFile:Lcom/facebook/common/dextricks/ReentrantLockFile;

    invoke-virtual {v6, v2}, Lcom/facebook/common/dextricks/ReentrantLockFile;->donateLock(Ljava/lang/Thread;)V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_0

    .line 639
    :try_start_21
    invoke-virtual {v2}, Lcom/facebook/common/dextricks/DexStore$FinishRegenerationThread;->start()V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_6

    .line 640
    const/4 v6, 0x0

    .line 648
    :try_start_22
    const-string v2, "started syncer thread"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v2, v7}, Lcom/facebook/common/dextricks/Mlog;->v(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_8

    move-object v9, v6

    .line 683
    :cond_25
    :goto_16
    if-nez v8, :cond_26

    move-object/from16 v2, p0

    move-object/from16 v6, p2

    move/from16 v7, p1

    .line 684
    :try_start_23
    invoke-direct/range {v2 .. v7}, Lcom/facebook/common/dextricks/DexStore;->loadDexFiles(ZLcom/facebook/common/dextricks/OdexScheme;Lcom/facebook/common/dextricks/DexManifest;Lcom/facebook/base/lwperf/LightweightPerfEventsTracer;I)V

    .line 687
    :cond_26
    const/4 v2, 0x0

    .line 688
    if-eqz v3, :cond_27

    .line 689
    const/4 v2, 0x1

    .line 692
    :cond_27
    iget v3, v4, Lcom/facebook/common/dextricks/OdexScheme;->flags:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_28

    .line 693
    or-int/lit8 v2, v2, 0x10

    .line 696
    :cond_28
    invoke-virtual {v4, v10, v11}, Lcom/facebook/common/dextricks/OdexScheme;->needOptimization(J)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 697
    or-int/lit8 v2, v2, 0x12

    .line 698
    const-string v3, "optimization needed: yes"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v5}, Lcom/facebook/common/dextricks/Mlog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 699
    iget v3, v4, Lcom/facebook/common/dextricks/OdexScheme;->flags:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_29

    .line 700
    const-string v3, "... but optimization is very expensive"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/facebook/common/dextricks/Mlog;->v(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_0

    .line 701
    or-int/lit8 v2, v2, 0x8

    .line 709
    :cond_29
    :goto_17
    if-eqz v9, :cond_7

    .line 710
    invoke-virtual {v9}, Lcom/facebook/common/dextricks/ReentrantLockFile$Lock;->close()V

    goto/16 :goto_3

    .line 613
    :cond_2a
    const/4 v2, 0x0

    goto :goto_15

    .line 643
    :catchall_6
    move-exception v2

    .line 644
    :try_start_24
    const-string v3, "failed to start syncer thread"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/facebook/common/dextricks/Mlog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 645
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/common/dextricks/DexStore;->mLockFile:Lcom/facebook/common/dextricks/ReentrantLockFile;

    invoke-virtual {v3}, Lcom/facebook/common/dextricks/ReentrantLockFile;->stealLock()V

    throw v2

    .line 650
    :cond_2b
    const-string v2, "fsyncing just-regenerated dex store %s in foreground as requested"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/facebook/common/dextricks/DexStore;->root:Ljava/io/File;

    aput-object v12, v6, v7

    invoke-static {v2, v6}, Lcom/facebook/common/dextricks/Mlog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 651
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/common/dextricks/DexStore;->root:Ljava/io/File;

    invoke-static {}, Lcom/facebook/common/dextricks/Prio;->unchanged()Lcom/facebook/common/dextricks/Prio;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/facebook/common/dextricks/Fs;->fsyncRecursive(Ljava/io/File;Lcom/facebook/common/dextricks/Prio;)V

    .line 652
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Lcom/facebook/common/dextricks/DexStore;->writeStatusLocked(J)V

    .line 653
    const-string v2, "dex store sync completed"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2, v6}, Lcom/facebook/common/dextricks/Mlog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 656
    iget v2, v4, Lcom/facebook/common/dextricks/OdexScheme;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_2c

    .line 657
    const-string v2, "optimizing in foreground"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2, v6}, Lcom/facebook/common/dextricks/Mlog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 658
    const/4 v2, 0x1

    .line 667
    :goto_18
    if-eqz v2, :cond_25

    .line 670
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v10, v11}, Lcom/facebook/common/dextricks/DexStore;->schemeForState(Lcom/facebook/common/dextricks/DexManifest;J)Lcom/facebook/common/dextricks/OdexScheme;
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_0

    move-result-object v2

    .line 671
    :try_start_25
    new-instance v6, Lcom/facebook/common/dextricks/DexStore$OptimizationSession;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/facebook/common/dextricks/DexStore$OptimizationSession;-><init>(Lcom/facebook/common/dextricks/DexStore;)V
    :try_end_25
    .catch Ljava/lang/InterruptedException; {:try_start_25 .. :try_end_25} :catch_e
    .catchall {:try_start_25 .. :try_end_25} :catchall_0

    const/4 v4, 0x0

    .line 672
    :try_start_26
    invoke-static {}, Lcom/facebook/common/dextricks/Prio;->unchanged()Lcom/facebook/common/dextricks/Prio;

    move-result-object v7

    const/4 v10, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v6, v7, v10}, Lcom/facebook/common/dextricks/OdexScheme;->optimize(Lcom/facebook/common/dextricks/DexStore;Lcom/facebook/common/dextricks/DexStore$OptimizationSession;Lcom/facebook/common/dextricks/Prio;Lcom/facebook/common/dextricks/DexStore$ProgressListener;)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_d
    .catchall {:try_start_26 .. :try_end_26} :catchall_9

    .line 673
    :try_start_27
    invoke-virtual {v6}, Lcom/facebook/common/dextricks/DexStore$OptimizationSession;->close()V
    :try_end_27
    .catch Ljava/lang/InterruptedException; {:try_start_27 .. :try_end_27} :catch_e
    .catchall {:try_start_27 .. :try_end_27} :catchall_0

    .line 676
    :try_start_28
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/common/dextricks/DexStore;->readStatusLocked()J

    move-result-wide v6

    .line 677
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6, v7}, Lcom/facebook/common/dextricks/DexStore;->schemeForState(Lcom/facebook/common/dextricks/DexManifest;J)Lcom/facebook/common/dextricks/OdexScheme;

    move-result-object v4

    .line 678
    const-string v2, "done optimizing in foreground: new status %x scheme %s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object v4, v10, v11

    invoke-static {v2, v10}, Lcom/facebook/common/dextricks/Mlog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    move-wide v10, v6

    goto/16 :goto_16

    .line 659
    :cond_2c
    and-int/lit8 v2, p1, 0x8

    if-eqz v2, :cond_2d

    .line 660
    const-string v2, "optimizing in foreground despite expense: forced"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2, v6}, Lcom/facebook/common/dextricks/Mlog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 661
    const/4 v2, 0x1

    goto :goto_18

    .line 663
    :cond_2d
    const-string v2, "not optimizing in foreground: would be too expensive"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2, v6}, Lcom/facebook/common/dextricks/Mlog;->v(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_0

    .line 664
    const/4 v2, 0x0

    goto :goto_18

    .line 671
    :catch_d
    move-exception v2

    :try_start_29
    throw v2
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_7

    .line 673
    :catchall_7
    move-exception v3

    move-object/from16 v18, v3

    move-object v3, v2

    move-object/from16 v2, v18

    :goto_19
    if-eqz v3, :cond_2e

    :try_start_2a
    invoke-virtual {v6}, Lcom/facebook/common/dextricks/DexStore$OptimizationSession;->close()V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_f
    .catch Ljava/lang/InterruptedException; {:try_start_2a .. :try_end_2a} :catch_e
    .catchall {:try_start_2a .. :try_end_2a} :catchall_0

    :goto_1a
    :try_start_2b
    throw v2
    :try_end_2b
    .catch Ljava/lang/InterruptedException; {:try_start_2b .. :try_end_2b} :catch_e
    .catchall {:try_start_2b .. :try_end_2b} :catchall_0

    :catch_e
    move-exception v2

    .line 674
    :try_start_2c
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_0

    .line 673
    :catch_f
    move-exception v4

    :try_start_2d
    invoke-static {v3, v4}, Lcom/facebook/androidcompat/AndroidCompat;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_1a

    :cond_2e
    invoke-virtual {v6}, Lcom/facebook/common/dextricks/DexStore$OptimizationSession;->close()V
    :try_end_2d
    .catch Ljava/lang/InterruptedException; {:try_start_2d .. :try_end_2d} :catch_e
    .catchall {:try_start_2d .. :try_end_2d} :catchall_0

    goto :goto_1a

    .line 704
    :cond_2f
    :try_start_2e
    const-string v3, "optimization needed: no"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/facebook/common/dextricks/Mlog;->v(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_0

    goto/16 :goto_17

    .line 709
    :catchall_8
    move-exception v2

    move-object v3, v6

    goto/16 :goto_1

    .line 673
    :catchall_9
    move-exception v2

    move-object v3, v4

    goto :goto_19

    .line 598
    :catch_10
    move-exception v2

    goto/16 :goto_13

    :catchall_a
    move-exception v2

    goto/16 :goto_11

    .line 562
    :catchall_b
    move-exception v2

    move-object v3, v4

    goto/16 :goto_f

    .line 548
    :catchall_c
    move-exception v2

    goto/16 :goto_d

    .line 488
    :catchall_d
    move-exception v2

    goto/16 :goto_6

    :cond_30
    move-object v4, v2

    goto/16 :goto_14

    .line 569
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method private loadDexFiles(ZLcom/facebook/common/dextricks/OdexScheme;Lcom/facebook/common/dextricks/DexManifest;Lcom/facebook/base/lwperf/LightweightPerfEventsTracer;I)V
    .locals 9

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 721
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_2

    const-string v0, "DLL2_multidex_class_loader_first_"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 722
    invoke-virtual {p4, v0}, Lcom/facebook/base/lwperf/LightweightPerfEventsTracer;->a(Ljava/lang/String;)Lcom/facebook/base/lwperf/LightweightPerfEventsTracer$LwpEvent;

    move-result-object v4

    const/4 v1, 0x0

    .line 723
    :try_start_0
    new-instance v5, Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;

    invoke-direct {v5}, Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;-><init>()V

    .line 724
    invoke-virtual {v5}, Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;->getNumberConfiguredDexFiles()I

    move-result v6

    .line 725
    iget-object v0, p0, Lcom/facebook/common/dextricks/DexStore;->root:Ljava/io/File;

    invoke-virtual {p2, v0, v5}, Lcom/facebook/common/dextricks/OdexScheme;->configureClassLoader(Ljava/io/File;Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 727
    :try_start_1
    invoke-static {}, Lcom/facebook/common/dextricks/MultiDexClassLoader;->install()Lcom/facebook/common/dextricks/MultiDexClassLoader;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/facebook/common/dextricks/MultiDexClassLoader;->configure(Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;)V

    .line 728
    if-eqz p1, :cond_0

    .line 729
    invoke-direct {p0, p3}, Lcom/facebook/common/dextricks/DexStore;->verifyCanaryClasses(Lcom/facebook/common/dextricks/DexManifest;)V

    .line 731
    :cond_0
    iput-object p3, p0, Lcom/facebook/common/dextricks/DexStore;->mLoadedManifest:Lcom/facebook/common/dextricks/DexManifest;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 761
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/facebook/base/lwperf/LightweightPerfEventsTracer$LwpEvent;->close()V

    .line 762
    :cond_1
    return-void

    .line 721
    :cond_2
    const-string v0, "DLL2_multidex_class_loader_subsequent_"

    goto :goto_0

    .line 732
    :catch_0
    move-exception v0

    .line 737
    and-int/lit8 v7, p5, 0x2

    if-nez v7, :cond_3

    :try_start_2
    invoke-virtual {v5}, Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;->getNumberConfiguredDexFiles()I

    move-result v5

    if-eq v5, v6, :cond_5

    .line 741
    :cond_3
    :goto_1
    const-string v5, "%s error in store %s scheme %s regen %s"

    const/4 v2, 0x4

    new-array v6, v2, [Ljava/lang/Object;

    const/4 v7, 0x0

    if-eqz v3, :cond_6

    const-string v2, "fatal"

    :goto_2
    aput-object v2, v6, v7

    const/4 v2, 0x1

    iget-object v7, p0, Lcom/facebook/common/dextricks/DexStore;->root:Ljava/io/File;

    aput-object v7, v6, v2

    const/4 v2, 0x2

    aput-object p2, v6, v2

    const/4 v2, 0x3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v0, v5, v6}, Lcom/facebook/common/dextricks/Mlog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 748
    if-eqz p1, :cond_7

    .line 749
    const-wide/16 v6, 0x5

    invoke-virtual {p0, v6, v7}, Lcom/facebook/common/dextricks/DexStore;->writeStatusLocked(J)V

    .line 754
    :goto_3
    if-eqz v3, :cond_8

    .line 755
    new-instance v2, Lcom/facebook/common/dextricks/FatalDexError;

    invoke-direct {v2, v0}, Lcom/facebook/common/dextricks/FatalDexError;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 722
    :catch_1
    move-exception v0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 761
    :catchall_0
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    :goto_4
    if-eqz v4, :cond_4

    if-eqz v1, :cond_9

    :try_start_4
    invoke-virtual {v4}, Lcom/facebook/base/lwperf/LightweightPerfEventsTracer$LwpEvent;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    :cond_4
    :goto_5
    throw v0

    :cond_5
    move v3, v2

    .line 737
    goto :goto_1

    .line 741
    :cond_6
    :try_start_5
    const-string v2, "recoverable"

    goto :goto_2

    .line 751
    :cond_7
    const-wide/16 v6, 0x0

    invoke-virtual {p0, v6, v7}, Lcom/facebook/common/dextricks/DexStore;->writeStatusLocked(J)V

    goto :goto_3

    .line 761
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 758
    :cond_8
    const-string v2, "retrying dex store load after reset"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/facebook/common/dextricks/Mlog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 759
    new-instance v2, Lcom/facebook/common/dextricks/DexStore$RecoverableDexException;

    invoke-direct {v2, v0}, Lcom/facebook/common/dextricks/DexStore$RecoverableDexException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 761
    :catch_2
    move-exception v2

    invoke-static {v1, v2}, Lcom/facebook/androidcompat/AndroidCompat;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_9
    invoke-virtual {v4}, Lcom/facebook/base/lwperf/LightweightPerfEventsTracer$LwpEvent;->close()V

    goto :goto_5
.end method

.method private loadManifest()Lcom/facebook/common/dextricks/DexManifest;
    .locals 4

    .prologue
    .line 1095
    iget-object v0, p0, Lcom/facebook/common/dextricks/DexStore;->mResProvider:Lcom/facebook/common/dextricks/ResProvider;

    const-string v1, "metadata.txt"

    invoke-virtual {v0, v1}, Lcom/facebook/common/dextricks/ResProvider;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    const/4 v1, 0x0

    .line 1096
    :try_start_0
    new-instance v0, Lcom/facebook/common/dextricks/DexManifest;

    invoke-direct {v0, v2}, Lcom/facebook/common/dextricks/DexManifest;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1097
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 1099
    :cond_0
    iget-boolean v1, v0, Lcom/facebook/common/dextricks/DexManifest;->rootRelative:Z

    if-eqz v1, :cond_1

    .line 1100
    iget-object v1, p0, Lcom/facebook/common/dextricks/DexStore;->mResProvider:Lcom/facebook/common/dextricks/ResProvider;

    invoke-virtual {v1}, Lcom/facebook/common/dextricks/ResProvider;->markRootRelative()V

    .line 1103
    :cond_1
    return-object v0

    .line 1095
    :catch_0
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1097
    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_0
    if-eqz v2, :cond_2

    if-eqz v1, :cond_3

    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :cond_2
    :goto_1
    throw v0

    :catch_1
    move-exception v2

    invoke-static {v1, v2}, Lcom/facebook/androidcompat/AndroidCompat;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public static declared-synchronized open(Ljava/io/File;Ljava/io/File;Lcom/facebook/common/dextricks/ResProvider;)Lcom/facebook/common/dextricks/DexStore;
    .locals 4

    .prologue
    .line 292
    const-class v1, Lcom/facebook/common/dextricks/DexStore;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v2

    .line 293
    invoke-static {}, Lcom/facebook/common/dextricks/DexStore;->dexStoreListHead()Lcom/facebook/common/dextricks/DexStore;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 294
    iget-object v3, v0, Lcom/facebook/common/dextricks/DexStore;->root:Ljava/io/File;

    invoke-virtual {v3, v2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    .line 301
    :goto_1
    monitor-exit v1

    return-object v0

    .line 293
    :cond_0
    :try_start_1
    iget-object v0, v0, Lcom/facebook/common/dextricks/DexStore;->next:Lcom/facebook/common/dextricks/DexStore;

    goto :goto_0

    .line 299
    :cond_1
    new-instance v0, Lcom/facebook/common/dextricks/DexStore;

    invoke-direct {v0, v2, p1, p2}, Lcom/facebook/common/dextricks/DexStore;-><init>(Ljava/io/File;Ljava/io/File;Lcom/facebook/common/dextricks/ResProvider;)V

    .line 300
    sput-object v0, Lcom/facebook/common/dextricks/DexStore;->sListHead:Lcom/facebook/common/dextricks/DexStore;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 292
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private openDexIterator(Lcom/facebook/common/dextricks/DexManifest;)Lcom/facebook/common/dextricks/InputDexIterator;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1107
    .line 1110
    :try_start_0
    iget-object v0, p0, Lcom/facebook/common/dextricks/DexStore;->mResProvider:Lcom/facebook/common/dextricks/ResProvider;

    const-string v2, "secondary.dex.jar.xzs"

    invoke-virtual {v0, v2}, Lcom/facebook/common/dextricks/ResProvider;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1117
    :goto_0
    if-eqz v2, :cond_1

    .line 1118
    :try_start_1
    new-instance v0, Lcom/facebook/common/dextricks/SolidXzInputDexIterator;

    iget-object v3, p0, Lcom/facebook/common/dextricks/DexStore;->mResProvider:Lcom/facebook/common/dextricks/ResProvider;

    invoke-direct {v0, p1, v3, v2}, Lcom/facebook/common/dextricks/SolidXzInputDexIterator;-><init>(Lcom/facebook/common/dextricks/DexManifest;Lcom/facebook/common/dextricks/ResProvider;Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1125
    :goto_1
    if-eqz v1, :cond_0

    .line 1126
    invoke-static {v1}, Lcom/facebook/common/dextricks/Fs;->safeClose(Ljava/io/Closeable;)V

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v2, v1

    goto :goto_0

    .line 1121
    :cond_1
    :try_start_2
    new-instance v0, Lcom/facebook/common/dextricks/DiscreteFileInputDexIterator;

    iget-object v1, p0, Lcom/facebook/common/dextricks/DexStore;->mResProvider:Lcom/facebook/common/dextricks/ResProvider;

    invoke-direct {v0, p1, v1}, Lcom/facebook/common/dextricks/DiscreteFileInputDexIterator;-><init>(Lcom/facebook/common/dextricks/DexManifest;Lcom/facebook/common/dextricks/ResProvider;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v1, v2

    goto :goto_1

    .line 1125
    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_2
    if-eqz v2, :cond_2

    .line 1126
    invoke-static {v2}, Lcom/facebook/common/dextricks/Fs;->safeClose(Ljava/io/Closeable;)V

    :cond_2
    throw v0

    .line 1125
    :catchall_1
    move-exception v0

    goto :goto_2
.end method

.method private pruneTemporaryDirectoriesLocked([Ljava/lang/String;)V
    .locals 12

    .prologue
    const/4 v10, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 1194
    invoke-direct {p0}, Lcom/facebook/common/dextricks/DexStore;->assertLockHeld()V

    move v0, v1

    .line 1196
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_7

    .line 1197
    aget-object v4, p1, v0

    .line 1198
    if-eqz v4, :cond_0

    .line 1205
    const-string v2, ".tmpdir_lock"

    invoke-virtual {v4, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1207
    aput-object v3, p1, v0

    .line 1208
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Lcom/facebook/common/dextricks/Fs;->stripLastExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ".tmpdir"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/facebook/common/dextricks/DexStore;->findInArray([Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 1209
    if-ltz v5, :cond_a

    .line 1210
    aget-object v2, p1, v5

    .line 1211
    aput-object v3, p1, v5

    .line 1223
    :goto_1
    if-eqz v4, :cond_5

    if-eqz v2, :cond_5

    .line 1224
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/facebook/common/dextricks/DexStore;->root:Ljava/io/File;

    invoke-direct {v5, v6, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1225
    invoke-static {v5}, Lcom/facebook/common/dextricks/ReentrantLockFile;->open(Ljava/io/File;)Lcom/facebook/common/dextricks/ReentrantLockFile;

    move-result-object v4

    .line 1226
    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {v4, v6}, Lcom/facebook/common/dextricks/ReentrantLockFile;->tryAcquire(I)Lcom/facebook/common/dextricks/ReentrantLockFile$Lock;

    move-result-object v6

    .line 1227
    if-nez v6, :cond_2

    .line 1228
    const-string v5, "tmpdir %s in use: not deleting"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-static {v5, v6}, Lcom/facebook/common/dextricks/Mlog;->v(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1241
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/facebook/common/dextricks/ReentrantLockFile;->close()V

    .line 1196
    :cond_0
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1213
    :cond_1
    const-string v2, ".tmpdir"

    invoke-virtual {v4, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1215
    aput-object v3, p1, v0

    .line 1216
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Lcom/facebook/common/dextricks/Fs;->stripLastExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ".tmpdir_lock"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/facebook/common/dextricks/DexStore;->findInArray([Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 1217
    if-ltz v5, :cond_8

    .line 1218
    aget-object v2, p1, v5

    .line 1219
    aput-object v3, p1, v5

    move-object v11, v4

    move-object v4, v2

    move-object v2, v11

    goto :goto_1

    .line 1232
    :cond_2
    :try_start_1
    const-string v7, "tmpdir %s (lockfile %s) is abandoned: deleting"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    const/4 v9, 0x1

    aput-object v2, v8, v9

    invoke-static {v7, v8}, Lcom/facebook/common/dextricks/Mlog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1236
    invoke-static {v5}, Lcom/facebook/common/dextricks/Fs;->deleteRecursive(Ljava/io/File;)V

    .line 1237
    new-instance v5, Ljava/io/File;

    iget-object v7, p0, Lcom/facebook/common/dextricks/DexStore;->root:Ljava/io/File;

    invoke-direct {v5, v7, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v5}, Lcom/facebook/common/dextricks/Fs;->deleteRecursive(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1239
    :try_start_2
    invoke-virtual {v6}, Lcom/facebook/common/dextricks/ReentrantLockFile$Lock;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1241
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/facebook/common/dextricks/ReentrantLockFile;->close()V

    goto :goto_2

    .line 1239
    :catchall_0
    move-exception v0

    :try_start_3
    invoke-virtual {v6}, Lcom/facebook/common/dextricks/ReentrantLockFile$Lock;->close()V

    throw v0
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1225
    :catch_0
    move-exception v0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1241
    :catchall_1
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    :goto_3
    if-eqz v4, :cond_3

    if-eqz v3, :cond_4

    :try_start_5
    invoke-virtual {v4}, Lcom/facebook/common/dextricks/ReentrantLockFile;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    :cond_3
    :goto_4
    throw v0

    :catch_1
    move-exception v1

    invoke-static {v3, v1}, Lcom/facebook/androidcompat/AndroidCompat;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_4
    invoke-virtual {v4}, Lcom/facebook/common/dextricks/ReentrantLockFile;->close()V

    goto :goto_4

    .line 1242
    :cond_5
    if-eqz v4, :cond_6

    .line 1243
    const-string v2, "tmpdir lockfile %s is orphaned: deleting"

    new-array v5, v10, [Ljava/lang/Object;

    aput-object v4, v5, v1

    invoke-static {v2, v5}, Lcom/facebook/common/dextricks/Mlog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1244
    new-instance v2, Ljava/io/File;

    iget-object v5, p0, Lcom/facebook/common/dextricks/DexStore;->root:Ljava/io/File;

    invoke-direct {v2, v5, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/facebook/common/dextricks/Fs;->deleteRecursive(Ljava/io/File;)V

    goto/16 :goto_2

    .line 1245
    :cond_6
    if-eqz v2, :cond_0

    .line 1246
    const-string v4, "tmpdir %s is orphaned without its lockfile: deleting"

    new-array v5, v10, [Ljava/lang/Object;

    aput-object v2, v5, v1

    invoke-static {v4, v5}, Lcom/facebook/common/dextricks/Mlog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1247
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/facebook/common/dextricks/DexStore;->root:Ljava/io/File;

    invoke-direct {v4, v5, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/facebook/common/dextricks/Fs;->deleteRecursive(Ljava/io/File;)V

    goto/16 :goto_2

    .line 1250
    :cond_7
    return-void

    .line 1241
    :catchall_2
    move-exception v0

    goto :goto_3

    :cond_8
    move-object v2, v4

    move-object v4, v3

    goto/16 :goto_1

    :cond_9
    move-object v2, v3

    move-object v4, v3

    goto/16 :goto_1

    :cond_a
    move-object v2, v3

    goto/16 :goto_1
.end method

.method private readCurrentDepBlock()[B
    .locals 5

    .prologue
    .line 928
    const/4 v1, 0x0

    .line 930
    :try_start_0
    iget-object v0, p0, Lcom/facebook/common/dextricks/DexStore;->mApk:Ljava/io/File;

    invoke-static {v0}, Lcom/facebook/common/dextricks/DexStore;->determineOdexCacheName(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 931
    if-eqz v1, :cond_0

    .line 932
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/dalvik/DalvikInternals;->readOdexDepBlock(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 954
    :goto_0
    return-object v0

    .line 934
    :catch_0
    move-exception v0

    .line 935
    const-string v2, "error reading odex cache file %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v0, v2, v3}, Lcom/facebook/common/dextricks/Mlog;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 943
    :cond_0
    iget-object v0, p0, Lcom/facebook/common/dextricks/DexStore;->mApk:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    .line 944
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    .line 945
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unable to get modtime of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/facebook/common/dextricks/DexStore;->mApk:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 947
    :cond_1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 949
    :try_start_1
    iget-object v3, p0, Lcom/facebook/common/dextricks/DexStore;->mApk:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 950
    invoke-virtual {v2, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 951
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 952
    invoke-virtual {v2}, Landroid/os/Parcel;->marshall()[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 954
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method private readSavedDepBlock()[B
    .locals 10
    .annotation build Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 963
    new-instance v2, Ljava/io/File;

    iget-object v1, p0, Lcom/facebook/common/dextricks/DexStore;->root:Ljava/io/File;

    const-string v3, "deps"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 966
    :try_start_0
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v3, v2, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 977
    :try_start_1
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    .line 978
    const-wide/32 v6, 0x1000000

    cmp-long v1, v4, v6

    if-lez v1, :cond_0

    .line 979
    const-string v1, "saved dep block file is way too big (%s bytes): considering invalid"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v6

    invoke-static {v1, v2}, Lcom/facebook/common/dextricks/Mlog;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1003
    invoke-static {v3}, Lcom/facebook/common/dextricks/Fs;->safeClose(Ljava/io/Closeable;)V

    :goto_0
    return-object v0

    .line 967
    :catch_0
    move-exception v1

    .line 969
    const-string v3, "unable to open deps file %s; regenerating everything"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v5

    invoke-static {v1, v3, v4}, Lcom/facebook/common/dextricks/Mlog;->v(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 984
    :cond_0
    long-to-int v1, v4

    :try_start_2
    new-array v1, v1, [B

    .line 985
    invoke-virtual {v3, v1}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v6

    .line 986
    int-to-long v8, v6

    cmp-long v7, v8, v4

    if-gez v7, :cond_1

    .line 987
    const-string v1, "short read of dep block %s: wanted %s bytes; got %s: considering invalid"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    const/4 v2, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v7, v2

    const/4 v2, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v2

    invoke-static {v1, v7}, Lcom/facebook/common/dextricks/Mlog;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1003
    invoke-static {v3}, Lcom/facebook/common/dextricks/Fs;->safeClose(Ljava/io/Closeable;)V

    goto :goto_0

    .line 996
    :cond_1
    :try_start_3
    const-string v0, "read saved dep file %s (%s bytes)"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v2, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v6, v2

    invoke-static {v0, v6}, Lcom/facebook/common/dextricks/Mlog;->v(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1003
    invoke-static {v3}, Lcom/facebook/common/dextricks/Fs;->safeClose(Ljava/io/Closeable;)V

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v3}, Lcom/facebook/common/dextricks/Fs;->safeClose(Ljava/io/Closeable;)V

    throw v0
.end method

.method private runCompiler(Lcom/facebook/common/dextricks/DexManifest;Lcom/facebook/common/dextricks/OdexScheme;I)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 396
    invoke-virtual {p2, p0, p3}, Lcom/facebook/common/dextricks/OdexScheme;->makeCompiler(Lcom/facebook/common/dextricks/DexStore;I)Lcom/facebook/common/dextricks/OdexScheme$Compiler;

    move-result-object v3

    .line 397
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/common/dextricks/DexStore;->openDexIterator(Lcom/facebook/common/dextricks/DexManifest;)Lcom/facebook/common/dextricks/InputDexIterator;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    move-result-object v4

    .line 398
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v4}, Lcom/facebook/common/dextricks/InputDexIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 399
    invoke-virtual {v4}, Lcom/facebook/common/dextricks/InputDexIterator;->next()Lcom/facebook/common/dextricks/InputDex;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-result-object v5

    .line 400
    :try_start_2
    const-string v0, "compiling %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v5, v1, v6

    invoke-static {v0, v1}, Lcom/facebook/common/dextricks/Mlog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 401
    invoke-virtual {v3, v5}, Lcom/facebook/common/dextricks/OdexScheme$Compiler;->compile(Lcom/facebook/common/dextricks/InputDex;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 402
    if-eqz v5, :cond_0

    :try_start_3
    invoke-virtual {v5}, Lcom/facebook/common/dextricks/InputDex;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_0

    .line 397
    :catch_0
    move-exception v0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 404
    :catchall_0
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    :goto_1
    if-eqz v4, :cond_1

    if-eqz v1, :cond_8

    :try_start_5
    invoke-virtual {v4}, Lcom/facebook/common/dextricks/InputDexIterator;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :cond_1
    :goto_2
    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 396
    :catch_1
    move-exception v0

    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 405
    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_3
    if-eqz v3, :cond_2

    if-eqz v2, :cond_9

    :try_start_8
    invoke-virtual {v3}, Lcom/facebook/common/dextricks/OdexScheme$Compiler;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_5

    :cond_2
    :goto_4
    throw v0

    .line 399
    :catch_2
    move-exception v0

    :try_start_9
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 402
    :catchall_2
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    :goto_5
    if-eqz v5, :cond_3

    if-eqz v1, :cond_4

    :try_start_a
    invoke-virtual {v5}, Lcom/facebook/common/dextricks/InputDex;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :cond_3
    :goto_6
    :try_start_b
    throw v0

    .line 404
    :catchall_3
    move-exception v0

    move-object v1, v2

    goto :goto_1

    .line 402
    :catch_3
    move-exception v5

    invoke-static {v1, v5}, Lcom/facebook/androidcompat/AndroidCompat;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_4
    invoke-virtual {v5}, Lcom/facebook/common/dextricks/InputDex;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto :goto_6

    .line 404
    :cond_5
    if-eqz v4, :cond_6

    :try_start_c
    invoke-virtual {v4}, Lcom/facebook/common/dextricks/InputDexIterator;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 405
    :cond_6
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lcom/facebook/common/dextricks/OdexScheme$Compiler;->close()V

    .line 406
    :cond_7
    return-void

    .line 404
    :catch_4
    move-exception v4

    :try_start_d
    invoke-static {v1, v4}, Lcom/facebook/androidcompat/AndroidCompat;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 405
    :catchall_4
    move-exception v0

    goto :goto_3

    .line 404
    :cond_8
    invoke-virtual {v4}, Lcom/facebook/common/dextricks/InputDexIterator;->close()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    goto :goto_2

    .line 405
    :catch_5
    move-exception v1

    invoke-static {v2, v1}, Lcom/facebook/androidcompat/AndroidCompat;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_9
    invoke-virtual {v3}, Lcom/facebook/common/dextricks/OdexScheme$Compiler;->close()V

    goto :goto_4

    .line 402
    :catchall_5
    move-exception v0

    move-object v1, v2

    goto :goto_5
.end method

.method private saveDeps()V
    .locals 7

    .prologue
    .line 1031
    invoke-direct {p0}, Lcom/facebook/common/dextricks/DexStore;->readCurrentDepBlock()[B

    move-result-object v0

    .line 1032
    new-instance v2, Ljava/io/File;

    iget-object v1, p0, Lcom/facebook/common/dextricks/DexStore;->root:Ljava/io/File;

    const-string v3, "deps"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1033
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    invoke-direct {v3, v2, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 1034
    :try_start_0
    invoke-virtual {v3, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 1035
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/io/RandomAccessFile;->setLength(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1036
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    .line 1038
    const-string v0, "saved deps file %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/facebook/common/dextricks/Mlog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1040
    return-void

    .line 1033
    :catch_0
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1036
    :catchall_0
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_0
    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    throw v0

    :catch_1
    move-exception v2

    invoke-static {v1, v2}, Lcom/facebook/androidcompat/AndroidCompat;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method private schemeForState(Lcom/facebook/common/dextricks/DexManifest;J)Lcom/facebook/common/dextricks/OdexScheme;
    .locals 4

    .prologue
    .line 844
    iget-object v1, p1, Lcom/facebook/common/dextricks/DexManifest;->dexes:[Lcom/facebook/common/dextricks/DexManifest$Dex;

    .line 845
    const-wide/16 v2, 0xf

    and-long/2addr v2, p2

    long-to-int v0, v2

    int-to-byte v0, v0

    packed-switch v0, :pswitch_data_0

    .line 859
    :pswitch_0
    new-instance v0, Lcom/facebook/common/dextricks/OdexSchemeInvalid;

    invoke-direct {v0}, Lcom/facebook/common/dextricks/OdexSchemeInvalid;-><init>()V

    :goto_0
    return-object v0

    .line 847
    :pswitch_1
    new-instance v0, Lcom/facebook/common/dextricks/OdexSchemeBoring;

    invoke-direct {v0, v1}, Lcom/facebook/common/dextricks/OdexSchemeBoring;-><init>([Lcom/facebook/common/dextricks/DexManifest$Dex;)V

    goto :goto_0

    .line 849
    :pswitch_2
    new-instance v0, Lcom/facebook/common/dextricks/OdexSchemeTurbo;

    invoke-direct {v0, v1}, Lcom/facebook/common/dextricks/OdexSchemeTurbo;-><init>([Lcom/facebook/common/dextricks/DexManifest$Dex;)V

    goto :goto_0

    .line 851
    :pswitch_3
    new-instance v0, Lcom/facebook/common/dextricks/OdexSchemeXdex;

    invoke-direct {v0, v1}, Lcom/facebook/common/dextricks/OdexSchemeXdex;-><init>([Lcom/facebook/common/dextricks/DexManifest$Dex;)V

    goto :goto_0

    .line 853
    :pswitch_4
    new-instance v0, Lcom/facebook/common/dextricks/OdexSchemeArtTurbo;

    invoke-direct {v0, v1}, Lcom/facebook/common/dextricks/OdexSchemeArtTurbo;-><init>([Lcom/facebook/common/dextricks/DexManifest$Dex;)V

    goto :goto_0

    .line 855
    :pswitch_5
    new-instance v0, Lcom/facebook/common/dextricks/OdexSchemeArtXdex;

    invoke-direct {v0, v1, p2, p3}, Lcom/facebook/common/dextricks/OdexSchemeArtXdex;-><init>([Lcom/facebook/common/dextricks/DexManifest$Dex;J)V

    goto :goto_0

    .line 857
    :pswitch_6
    new-instance v0, Lcom/facebook/common/dextricks/OdexSchemeNoop;

    invoke-direct {v0}, Lcom/facebook/common/dextricks/OdexSchemeNoop;-><init>()V

    goto :goto_0

    .line 845
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private setDifference([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1073
    move v0, v1

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_2

    .line 1074
    aget-object v3, p1, v0

    .line 1075
    if-eqz v3, :cond_0

    move v2, v1

    .line 1076
    :goto_1
    array-length v4, p2

    if-ge v2, v4, :cond_0

    .line 1077
    aget-object v4, p2, v2

    .line 1078
    if-eqz v4, :cond_1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1079
    const/4 v2, 0x0

    aput-object v2, p1, v0

    .line 1073
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1076
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1085
    :cond_2
    return-void
.end method

.method private verifyCanaryClasses(Lcom/facebook/common/dextricks/DexManifest;)V
    .locals 2

    .prologue
    .line 864
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p1, Lcom/facebook/common/dextricks/DexManifest;->dexes:[Lcom/facebook/common/dextricks/DexManifest$Dex;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 865
    iget-object v1, p1, Lcom/facebook/common/dextricks/DexManifest;->dexes:[Lcom/facebook/common/dextricks/DexManifest$Dex;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/facebook/common/dextricks/DexManifest$Dex;->canaryClass:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 864
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 867
    :cond_0
    return-void
.end method

.method private writeTxFailedStatusLocked(J)V
    .locals 5

    .prologue
    .line 1344
    const-wide/16 v0, 0x1

    const/4 v2, 0x4

    shl-long v2, p1, v2

    or-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/facebook/common/dextricks/DexStore;->writeStatusLocked(J)V

    .line 1345
    return-void
.end method


# virtual methods
.method public final forceRegenerateOnNextLoad()V
    .locals 6

    .prologue
    .line 385
    iget-object v0, p0, Lcom/facebook/common/dextricks/DexStore;->mLockFile:Lcom/facebook/common/dextricks/ReentrantLockFile;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/common/dextricks/ReentrantLockFile;->acquire(I)Lcom/facebook/common/dextricks/ReentrantLockFile$Lock;

    move-result-object v2

    const/4 v1, 0x0

    .line 386
    const-wide/16 v4, 0x6

    :try_start_0
    invoke-virtual {p0, v4, v5}, Lcom/facebook/common/dextricks/DexStore;->writeStatusLocked(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 387
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/facebook/common/dextricks/ReentrantLockFile$Lock;->close()V

    .line 388
    :cond_0
    return-void

    .line 385
    :catch_0
    move-exception v1

    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 387
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_1

    if-eqz v1, :cond_2

    :try_start_2
    invoke-virtual {v2}, Lcom/facebook/common/dextricks/ReentrantLockFile$Lock;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    :goto_0
    throw v0

    :catch_1
    move-exception v2

    invoke-static {v1, v2}, Lcom/facebook/androidcompat/AndroidCompat;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lcom/facebook/common/dextricks/ReentrantLockFile$Lock;->close()V

    goto :goto_0
.end method

.method final getDependencyOdexFiles()[Ljava/io/File;
    .locals 3

    .prologue
    .line 1736
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/io/File;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/facebook/common/dextricks/DexStore;->mApk:Ljava/io/File;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/facebook/common/dextricks/DexStore;->mApk:Ljava/io/File;

    invoke-static {v2}, Lcom/facebook/common/dextricks/DexStore;->determineOdexCacheName(Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method final getLastRegenTime()J
    .locals 3

    .prologue
    .line 830
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/facebook/common/dextricks/DexStore;->root:Ljava/io/File;

    const-string v2, "regen_stamp"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method final getLoadedManifest()Lcom/facebook/common/dextricks/DexManifest;
    .locals 1
    .annotation build Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 840
    iget-object v0, p0, Lcom/facebook/common/dextricks/DexStore;->mLoadedManifest:Lcom/facebook/common/dextricks/DexManifest;

    return-object v0
.end method

.method public final loadAll(ILcom/facebook/base/lwperf/LightweightPerfEventsTracer;)I
    .locals 5

    .prologue
    .line 366
    const-string v0, "DLL2_dexstore_load_all"

    invoke-virtual {p2, v0}, Lcom/facebook/base/lwperf/LightweightPerfEventsTracer;->a(Ljava/lang/String;)Lcom/facebook/base/lwperf/LightweightPerfEventsTracer$LwpEvent;

    move-result-object v2

    const/4 v1, 0x0

    .line 369
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/facebook/common/dextricks/DexStore;->loadAllImpl(ILcom/facebook/base/lwperf/LightweightPerfEventsTracer;)I
    :try_end_0
    .catch Lcom/facebook/common/dextricks/DexStore$RecoverableDexException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    .line 378
    :goto_0
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/facebook/base/lwperf/LightweightPerfEventsTracer$LwpEvent;->close()V

    :cond_0
    return v0

    :catch_0
    move-exception v0

    .line 372
    or-int/lit8 v0, p1, 0x2

    :try_start_1
    invoke-direct {p0, v0, p2}, Lcom/facebook/common/dextricks/DexStore;->loadAllImpl(ILcom/facebook/base/lwperf/LightweightPerfEventsTracer;)I
    :try_end_1
    .catch Lcom/facebook/common/dextricks/DexStore$RecoverableDexException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    goto :goto_0

    .line 373
    :catch_1
    move-exception v0

    .line 374
    :try_start_2
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 366
    :catch_2
    move-exception v0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 378
    :catchall_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_1
    if-eqz v2, :cond_1

    if-eqz v1, :cond_2

    :try_start_4
    invoke-virtual {v2}, Lcom/facebook/base/lwperf/LightweightPerfEventsTracer$LwpEvent;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    :cond_1
    :goto_2
    throw v0

    :catch_3
    move-exception v2

    invoke-static {v1, v2}, Lcom/facebook/androidcompat/AndroidCompat;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Lcom/facebook/base/lwperf/LightweightPerfEventsTracer$LwpEvent;->close()V

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method final makeTemporaryDirectory(Ljava/lang/String;)Lcom/facebook/common/dextricks/DexStore$TmpDir;
    .locals 11

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1148
    iget-object v0, p0, Lcom/facebook/common/dextricks/DexStore;->mLockFile:Lcom/facebook/common/dextricks/ReentrantLockFile;

    invoke-virtual {v0, v1}, Lcom/facebook/common/dextricks/ReentrantLockFile;->acquire(I)Lcom/facebook/common/dextricks/ReentrantLockFile$Lock;

    move-result-object v6

    .line 1154
    :try_start_0
    const-string v0, ".tmpdir_lock"

    iget-object v1, p0, Lcom/facebook/common/dextricks/DexStore;->root:Ljava/io/File;

    invoke-static {p1, v0, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-result-object v5

    .line 1155
    :try_start_1
    new-instance v4, Ljava/io/File;

    iget-object v0, p0, Lcom/facebook/common/dextricks/DexStore;->root:Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/common/dextricks/Fs;->stripLastExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ".tmpdir"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1157
    invoke-static {v4}, Lcom/facebook/common/dextricks/Fs;->mkdirOrThrow(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 1159
    :try_start_2
    invoke-static {v5}, Lcom/facebook/common/dextricks/ReentrantLockFile;->open(Ljava/io/File;)Lcom/facebook/common/dextricks/ReentrantLockFile;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    move-result-object v3

    .line 1163
    const/4 v0, 0x1

    :try_start_3
    invoke-virtual {v3, v0}, Lcom/facebook/common/dextricks/ReentrantLockFile;->tryAcquire(I)Lcom/facebook/common/dextricks/ReentrantLockFile$Lock;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    move-result-object v1

    .line 1164
    if-nez v1, :cond_1

    .line 1165
    :try_start_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v7, "should have been able to acquire tmpdir lock"

    invoke-direct {v0, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1184
    :catchall_0
    move-exception v0

    :goto_0
    :try_start_5
    invoke-static {v1}, Lcom/facebook/common/dextricks/Fs;->safeClose(Ljava/io/Closeable;)V

    .line 1185
    invoke-static {v3}, Lcom/facebook/common/dextricks/Fs;->safeClose(Ljava/io/Closeable;)V

    .line 1186
    invoke-static {v5}, Lcom/facebook/common/dextricks/Fs;->deleteRecursiveNoThrow(Ljava/io/File;)V

    .line 1187
    invoke-static {v4}, Lcom/facebook/common/dextricks/Fs;->deleteRecursiveNoThrow(Ljava/io/File;)V

    throw v0
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1148
    :catch_0
    move-exception v0

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1189
    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_1
    if-eqz v6, :cond_0

    if-eqz v2, :cond_3

    :try_start_7
    invoke-virtual {v6}, Lcom/facebook/common/dextricks/ReentrantLockFile$Lock;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    :cond_0
    :goto_2
    throw v0

    .line 1167
    :cond_1
    :try_start_8
    new-instance v0, Lcom/facebook/common/dextricks/DexStore$TmpDir;

    invoke-direct {v0, p0, v1, v4}, Lcom/facebook/common/dextricks/DexStore$TmpDir;-><init>(Lcom/facebook/common/dextricks/DexStore;Lcom/facebook/common/dextricks/ReentrantLockFile$Lock;Ljava/io/File;)V

    .line 1169
    const-string v7, "created tmpdir %s (lock file %s)"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, v0, Lcom/facebook/common/dextricks/DexStore$TmpDir;->directory:Ljava/io/File;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, v3, Lcom/facebook/common/dextricks/ReentrantLockFile;->lockFileName:Ljava/io/File;

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Lcom/facebook/common/dextricks/Mlog;->v(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1184
    const/4 v1, 0x0

    :try_start_9
    invoke-static {v1}, Lcom/facebook/common/dextricks/Fs;->safeClose(Ljava/io/Closeable;)V

    .line 1185
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/facebook/common/dextricks/Fs;->safeClose(Ljava/io/Closeable;)V

    .line 1186
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/facebook/common/dextricks/Fs;->deleteRecursiveNoThrow(Ljava/io/File;)V

    .line 1187
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/facebook/common/dextricks/Fs;->deleteRecursiveNoThrow(Ljava/io/File;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 1189
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/facebook/common/dextricks/ReentrantLockFile$Lock;->close()V

    :cond_2
    return-object v0

    :catch_1
    move-exception v1

    invoke-static {v2, v1}, Lcom/facebook/androidcompat/AndroidCompat;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v6}, Lcom/facebook/common/dextricks/ReentrantLockFile$Lock;->close()V

    goto :goto_2

    :catchall_2
    move-exception v0

    goto :goto_1

    .line 1184
    :catchall_3
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    goto :goto_0

    :catchall_4
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    move-object v4, v2

    goto :goto_0

    :catchall_5
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    goto :goto_0

    :catchall_6
    move-exception v0

    move-object v1, v2

    goto :goto_0
.end method

.method public final optimize(Lcom/facebook/common/dextricks/Prio;Lcom/facebook/common/dextricks/DexStore$ProgressListener;)V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 1468
    iget-object v0, p0, Lcom/facebook/common/dextricks/DexStore;->mLoadedManifest:Lcom/facebook/common/dextricks/DexManifest;

    .line 1469
    if-nez v0, :cond_0

    .line 1470
    invoke-direct {p0}, Lcom/facebook/common/dextricks/DexStore;->loadManifest()Lcom/facebook/common/dextricks/DexManifest;

    move-result-object v0

    .line 1474
    :cond_0
    const-string v2, "[opt] loaded manifets"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/facebook/common/dextricks/Mlog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1486
    iget-object v2, p0, Lcom/facebook/common/dextricks/DexStore;->mLockFile:Lcom/facebook/common/dextricks/ReentrantLockFile;

    invoke-virtual {v2, v6}, Lcom/facebook/common/dextricks/ReentrantLockFile;->acquireInterruptubly(I)Lcom/facebook/common/dextricks/ReentrantLockFile$Lock;

    move-result-object v2

    .line 1489
    const-string v3, "[opt] locked dex store %s"

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/facebook/common/dextricks/DexStore;->root:Ljava/io/File;

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/facebook/common/dextricks/Mlog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1493
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/common/dextricks/DexStore;->readStatusLocked()J

    move-result-wide v4

    .line 1494
    invoke-direct {p0, v0, v4, v5}, Lcom/facebook/common/dextricks/DexStore;->schemeForState(Lcom/facebook/common/dextricks/DexManifest;J)Lcom/facebook/common/dextricks/OdexScheme;

    move-result-object v0

    .line 1496
    const-string v3, "[opt] found scheme %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Lcom/facebook/common/dextricks/Mlog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1499
    new-instance v3, Lcom/facebook/common/dextricks/DexStore$OptimizationSession;

    const/4 v4, 0x0

    invoke-direct {v3, p0}, Lcom/facebook/common/dextricks/DexStore$OptimizationSession;-><init>(Lcom/facebook/common/dextricks/DexStore;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1501
    :try_start_1
    const-string v4, "[opt] opened optimization session"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/facebook/common/dextricks/Mlog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1503
    invoke-virtual {v2}, Lcom/facebook/common/dextricks/ReentrantLockFile$Lock;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 1505
    :try_start_2
    invoke-virtual {v0, p0, v3, p1, p2}, Lcom/facebook/common/dextricks/OdexScheme;->optimize(Lcom/facebook/common/dextricks/DexStore;Lcom/facebook/common/dextricks/DexStore$OptimizationSession;Lcom/facebook/common/dextricks/Prio;Lcom/facebook/common/dextricks/DexStore$ProgressListener;)V

    .line 1507
    const-string v0, "[opt] finished optimization session"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/facebook/common/dextricks/Mlog;->v(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 1509
    :try_start_3
    invoke-virtual {v3}, Lcom/facebook/common/dextricks/DexStore$OptimizationSession;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1515
    return-void

    .line 1499
    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_0
    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1509
    :catchall_0
    move-exception v2

    move-object v7, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v7

    :goto_1
    if-eqz v1, :cond_2

    :try_start_5
    invoke-virtual {v3}, Lcom/facebook/common/dextricks/DexStore$OptimizationSession;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_2
    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1511
    :catchall_1
    move-exception v0

    :goto_3
    if-eqz v2, :cond_1

    .line 1512
    invoke-virtual {v2}, Lcom/facebook/common/dextricks/ReentrantLockFile$Lock;->close()V

    :cond_1
    throw v0

    .line 1509
    :catch_1
    move-exception v3

    :try_start_7
    invoke-static {v1, v3}, Lcom/facebook/androidcompat/AndroidCompat;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Lcom/facebook/common/dextricks/DexStore$OptimizationSession;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_2

    .line 1511
    :catchall_2
    move-exception v0

    move-object v2, v1

    goto :goto_3

    .line 1509
    :catchall_3
    move-exception v0

    goto :goto_1

    :catchall_4
    move-exception v0

    move-object v2, v1

    goto :goto_1

    .line 1499
    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method public final readStatusLocked()J
    .locals 14

    .prologue
    const-wide/16 v0, 0x0

    const/16 v8, 0x10

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1299
    invoke-direct {p0}, Lcom/facebook/common/dextricks/DexStore;->assertLockHeld()V

    .line 1302
    new-instance v4, Ljava/io/File;

    iget-object v2, p0, Lcom/facebook/common/dextricks/DexStore;->root:Ljava/io/File;

    const-string v3, "mdex_status2"

    invoke-direct {v4, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1304
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1310
    const/16 v2, 0x10

    :try_start_1
    new-array v2, v2, [B

    .line 1311
    const/4 v3, 0x0

    const/16 v6, 0x10

    invoke-virtual {v5, v2, v3, v6}, Ljava/io/FileInputStream;->read([BII)I

    move-result v3

    if-ge v3, v8, :cond_0

    .line 1312
    const-string v2, "status file %s too short: treating as zero"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lcom/facebook/common/dextricks/Mlog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1313
    invoke-static {v4}, Lcom/facebook/common/dextricks/Fs;->deleteRecursiveNoThrow(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1336
    invoke-static {v5}, Lcom/facebook/common/dextricks/Fs;->safeClose(Ljava/io/Closeable;)V

    :goto_0
    return-wide v0

    .line 1306
    :catch_0
    move-exception v2

    const-string v2, "status file %s not found: treating as zero"

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lcom/facebook/common/dextricks/Mlog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1317
    :cond_0
    :try_start_2
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 1318
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v2

    .line 1319
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v6

    .line 1322
    const-string v8, "read status:%x check:%x"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lcom/facebook/common/dextricks/Mlog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1325
    const-wide v8, -0x5314ff805314ff9L

    xor-long/2addr v8, v2

    cmp-long v8, v8, v6

    if-eqz v8, :cond_1

    .line 1326
    const-string v8, "check mismatch: status:%x expected-check:%x actual-check:%x"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-wide v12, -0x5314ff805314ff9L

    xor-long/2addr v2, v12

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v9, v10

    const/4 v2, 0x2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v9, v2

    invoke-static {v8, v9}, Lcom/facebook/common/dextricks/Mlog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1329
    invoke-static {v4}, Lcom/facebook/common/dextricks/Fs;->deleteRecursiveNoThrow(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1336
    invoke-static {v5}, Lcom/facebook/common/dextricks/Fs;->safeClose(Ljava/io/Closeable;)V

    goto :goto_0

    :cond_1
    invoke-static {v5}, Lcom/facebook/common/dextricks/Fs;->safeClose(Ljava/io/Closeable;)V

    move-wide v0, v2

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v5}, Lcom/facebook/common/dextricks/Fs;->safeClose(Ljava/io/Closeable;)V

    throw v0
.end method

.method public final writeStatusLocked(J)V
    .locals 9

    .prologue
    const/16 v7, 0x10

    const/4 v6, 0x0

    .line 1352
    invoke-direct {p0}, Lcom/facebook/common/dextricks/DexStore;->assertLockHeld()V

    .line 1354
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/facebook/common/dextricks/DexStore;->root:Ljava/io/File;

    const-string v2, "mdex_status2"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1355
    const-wide v2, -0x5314ff805314ff9L

    xor-long/2addr v2, p1

    .line 1357
    const-string v1, "writing status:%x check:%x"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v6

    const/4 v5, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Lcom/facebook/common/dextricks/Mlog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1360
    new-array v4, v7, [B

    .line 1361
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1362
    invoke-virtual {v1, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 1363
    invoke-virtual {v1, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 1365
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/4 v1, 0x0

    .line 1366
    const/4 v0, 0x0

    const/16 v3, 0x10

    :try_start_0
    invoke-virtual {v2, v4, v0, v3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 1367
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1368
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    return-void

    .line 1365
    :catch_0
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1368
    :catchall_0
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    :goto_0
    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    throw v0

    :catch_1
    move-exception v2

    invoke-static {v1, v2}, Lcom/facebook/androidcompat/AndroidCompat;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_0
.end method
