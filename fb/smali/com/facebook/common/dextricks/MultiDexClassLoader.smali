.class public final Lcom/facebook/common/dextricks/MultiDexClassLoader;
.super Ljava/lang/ClassLoader;
.source "vide"


# static fields
.field private static final FACEBOOK_CLASSES_TO_PRELOAD:[Ljava/lang/Class;

.field private static final mInstallLock:Ljava/lang/Object;

.field private static volatile mInstalledClassLoader:Lcom/facebook/common/dextricks/MultiDexClassLoader;

.field private static sApiDetectionState:B

.field private static final sPrefabException:Ljava/lang/ClassNotFoundException;


# instance fields
.field private final mClassLoadingStats:Lcom/facebook/common/dextricks/ClassLoadingStats;

.field private mDexFiles:[Ldalvik/system/DexFile;

.field private final mLastLoadedDexIndex:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mPrimaryDexes:[Ldalvik/system/DexFile;

.field private final mPutativeLoader:Ljava/lang/ClassLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 104
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Lcom/facebook/common/dextricks/DexFileLoadOld;

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-class v2, Lcom/facebook/common/dextricks/DexFileLoadNew;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lcom/facebook/common/dextricks/ClassLoadingStats;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Lcom/facebook/common/dextricks/ClassLoadingStats$SnapshotStats;

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/common/dextricks/MultiDexClassLoader;->FACEBOOK_CLASSES_TO_PRELOAD:[Ljava/lang/Class;

    .line 112
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/common/dextricks/MultiDexClassLoader;->mInstalledClassLoader:Lcom/facebook/common/dextricks/MultiDexClassLoader;

    .line 113
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/common/dextricks/MultiDexClassLoader;->mInstallLock:Ljava/lang/Object;

    .line 114
    sput-byte v3, Lcom/facebook/common/dextricks/MultiDexClassLoader;->sApiDetectionState:B

    .line 169
    new-instance v0, Ljava/lang/ClassNotFoundException;

    const-string v1, "[MultiDexclassLoader prefab]"

    invoke-direct {v0, v1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/common/dextricks/MultiDexClassLoader;->sPrefabException:Ljava/lang/ClassNotFoundException;

    return-void
.end method

.method private constructor <init>(Ljava/lang/ClassLoader;[Ldalvik/system/DexFile;Ljava/lang/ClassLoader;)V
    .locals 2

    .prologue
    .line 363
    invoke-direct {p0, p1}, Ljava/lang/ClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    .line 364
    const/4 v0, 0x0

    new-array v0, v0, [Ldalvik/system/DexFile;

    iput-object v0, p0, Lcom/facebook/common/dextricks/MultiDexClassLoader;->mDexFiles:[Ldalvik/system/DexFile;

    .line 365
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/common/dextricks/MultiDexClassLoader;->mLastLoadedDexIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 367
    iput-object p3, p0, Lcom/facebook/common/dextricks/MultiDexClassLoader;->mPutativeLoader:Ljava/lang/ClassLoader;

    .line 368
    iput-object p2, p0, Lcom/facebook/common/dextricks/MultiDexClassLoader;->mPrimaryDexes:[Ldalvik/system/DexFile;

    .line 369
    invoke-static {}, Lcom/facebook/common/dextricks/ClassLoadingStats;->getInstance()Lcom/facebook/common/dextricks/ClassLoadingStats;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/common/dextricks/MultiDexClassLoader;->mClassLoadingStats:Lcom/facebook/common/dextricks/ClassLoadingStats;

    .line 370
    return-void
.end method

.method private canPromoteDexesAndUpdateState(II)Z
    .locals 2

    .prologue
    .line 826
    if-gt p2, p1, :cond_0

    .line 827
    const/4 v0, 0x0

    .line 836
    :goto_0
    return v0

    .line 832
    :cond_0
    iget-object v0, p0, Lcom/facebook/common/dextricks/MultiDexClassLoader;->mLastLoadedDexIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 833
    if-ge v0, p1, :cond_1

    iget-object v1, p0, Lcom/facebook/common/dextricks/MultiDexClassLoader;->mLastLoadedDexIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 836
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private findClassSlowPath(Ljava/lang/String;)Ljava/lang/Class;
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x1

    .line 379
    const/4 v0, 0x0

    .line 380
    iget-object v4, p0, Lcom/facebook/common/dextricks/MultiDexClassLoader;->mDexFiles:[Ldalvik/system/DexFile;

    .line 381
    array-length v5, v4

    .line 382
    iget-object v6, p0, Lcom/facebook/common/dextricks/MultiDexClassLoader;->mPutativeLoader:Ljava/lang/ClassLoader;

    .line 386
    const/4 v2, 0x0

    :try_start_0
    aget-object v2, v4, v2

    .line 387
    if-eqz v2, :cond_0

    .line 388
    invoke-static {v2, p1, v6}, Lcom/facebook/common/dextricks/DexFileLoadNew;->loadClassBinaryName(Ldalvik/system/DexFile;Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    move v2, v1

    .line 393
    :goto_0
    if-nez v0, :cond_1

    if-ge v2, v5, :cond_1

    .line 394
    aget-object v3, v4, v2

    invoke-static {v3, p1, v6}, Lcom/facebook/common/dextricks/DexFileLoadNew;->loadClassBinaryName(Ldalvik/system/DexFile;Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    .line 393
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move-object v0, v3

    goto :goto_0

    .line 390
    :cond_0
    invoke-direct {p0}, Lcom/facebook/common/dextricks/MultiDexClassLoader;->onNoDexInThePromotedFrontDexSpot()V

    move v2, v1

    goto :goto_0

    .line 397
    :cond_1
    if-le v5, v1, :cond_2

    .line 402
    const/4 v3, 0x1

    sput-byte v3, Lcom/facebook/common/dextricks/MultiDexClassLoader;->sApiDetectionState:B

    .line 405
    :cond_2
    iget-object v3, p0, Lcom/facebook/common/dextricks/MultiDexClassLoader;->mClassLoadingStats:Lcom/facebook/common/dextricks/ClassLoadingStats;

    invoke-virtual {v3, v2}, Lcom/facebook/common/dextricks/ClassLoadingStats;->incrementDexFileQueries(I)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 438
    :goto_1
    return-object v0

    :catch_0
    move-exception v2

    .line 409
    const/4 v2, 0x0

    :try_start_1
    aget-object v2, v4, v2

    .line 410
    if-eqz v2, :cond_3

    .line 411
    invoke-static {v2, p1, v6}, Lcom/facebook/common/dextricks/DexFileLoadOld;->loadClassBinaryName(Ldalvik/system/DexFile;Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    :goto_2
    move v2, v1

    .line 416
    :goto_3
    if-nez v0, :cond_4

    if-ge v2, v5, :cond_4

    .line 417
    aget-object v3, v4, v2

    invoke-static {v3, p1, v6}, Lcom/facebook/common/dextricks/DexFileLoadOld;->loadClassBinaryName(Ldalvik/system/DexFile;Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    .line 416
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move-object v0, v3

    goto :goto_3

    .line 413
    :cond_3
    invoke-direct {p0}, Lcom/facebook/common/dextricks/MultiDexClassLoader;->onNoDexInThePromotedFrontDexSpot()V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 424
    :catch_1
    move-exception v2

    const/4 v2, 0x3

    sput-byte v2, Lcom/facebook/common/dextricks/MultiDexClassLoader;->sApiDetectionState:B

    .line 426
    aget-object v2, v4, v7

    .line 427
    if-eqz v2, :cond_5

    .line 428
    invoke-virtual {v2, p1, v6}, Ldalvik/system/DexFile;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 433
    :goto_4
    if-nez v0, :cond_6

    if-ge v1, v5, :cond_6

    .line 434
    aget-object v0, v4, v1

    invoke-virtual {v0, p1, v6}, Ldalvik/system/DexFile;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    .line 433
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_4

    .line 420
    :cond_4
    const/4 v3, 0x2

    :try_start_2
    sput-byte v3, Lcom/facebook/common/dextricks/MultiDexClassLoader;->sApiDetectionState:B

    .line 421
    iget-object v3, p0, Lcom/facebook/common/dextricks/MultiDexClassLoader;->mClassLoadingStats:Lcom/facebook/common/dextricks/ClassLoadingStats;

    invoke-virtual {v3, v2}, Lcom/facebook/common/dextricks/ClassLoadingStats;->incrementDexFileQueries(I)V
    :try_end_2
    .catch Ljava/lang/NoSuchMethodError; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 430
    :cond_5
    invoke-direct {p0}, Lcom/facebook/common/dextricks/MultiDexClassLoader;->onNoDexInThePromotedFrontDexSpot()V

    goto :goto_4

    .line 437
    :cond_6
    iget-object v2, p0, Lcom/facebook/common/dextricks/MultiDexClassLoader;->mClassLoadingStats:Lcom/facebook/common/dextricks/ClassLoadingStats;

    invoke-virtual {v2, v1}, Lcom/facebook/common/dextricks/ClassLoadingStats;->incrementDexFileQueries(I)V

    goto :goto_1
.end method

.method private static getFirstIndexOfFixedDexes([Ldalvik/system/DexFile;)I
    .locals 1

    .prologue
    .line 864
    array-length v0, p0

    .line 866
    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method private static getPrimaryDex(Ljava/lang/ClassLoader;)[Ldalvik/system/DexFile;
    .locals 13

    .prologue
    const/4 v1, 0x0

    .line 272
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 273
    new-array v2, v1, [Ldalvik/system/DexFile;

    .line 275
    :try_start_0
    const-string v0, "dalvik.system.BaseDexClassLoader"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 276
    const-string v3, "pathList"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 277
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 278
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 280
    if-nez v0, :cond_0

    .line 324
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v4

    .line 325
    const-string v3, "MultiDexClassLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Setup multi dex took "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    .line 326
    :goto_0
    return-object v0

    .line 284
    :cond_0
    :try_start_1
    const-string v3, "dalvik.system.DexPathList"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 285
    const-string v6, "dexElements"

    invoke-virtual {v3, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 286
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 287
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 288
    if-nez v0, :cond_1

    .line 324
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v4

    .line 325
    const-string v3, "MultiDexClassLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Setup multi dex took "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    .line 326
    goto :goto_0

    .line 292
    :cond_1
    :try_start_2
    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 294
    const-string v3, "dalvik.system.DexPathList$Element"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 295
    const-string v6, "dexFile"

    invoke-virtual {v3, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 296
    const/4 v3, 0x1

    invoke-virtual {v6, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 298
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 299
    array-length v8, v0

    move v3, v1

    :goto_1
    if-ge v3, v8, :cond_4

    aget-object v9, v0, v3

    .line 300
    invoke-virtual {v6, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 301
    if-nez v1, :cond_2

    .line 302
    const-string v1, "MultiDexClassLoader"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Did not find primary dex in "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :goto_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    .line 305
    :cond_2
    check-cast v1, Ldalvik/system/DexFile;

    .line 306
    invoke-virtual {v1}, Ldalvik/system/DexFile;->getName()Ljava/lang/String;

    move-result-object v9

    .line 308
    if-eqz v9, :cond_3

    const-string v10, "/data/"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 309
    const-string v10, "MultiDexClassLoader"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Found primary dex "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 317
    :catch_0
    move-exception v0

    .line 321
    :goto_3
    :try_start_3
    const-string v1, "MultiDexClassLoader"

    const-string v3, "Cannot get primary dexes"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 324
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v4

    .line 325
    const-string v3, "MultiDexClassLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Setup multi dex took "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    .line 326
    goto/16 :goto_0

    .line 312
    :cond_3
    :try_start_4
    const-string v1, "MultiDexClassLoader"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Found system/other dex "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 317
    :catch_1
    move-exception v0

    goto :goto_3

    .line 316
    :cond_4
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldalvik/system/DexFile;
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 324
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v4

    .line 325
    const-string v1, "MultiDexClassLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Setup multi dex took "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 324
    :catchall_0
    move-exception v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v4

    .line 325
    const-string v1, "MultiDexClassLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Setup multi dex took "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    throw v0

    .line 317
    :catch_2
    move-exception v0

    goto/16 :goto_3

    :catch_3
    move-exception v0

    goto/16 :goto_3
.end method

.method public static install()Lcom/facebook/common/dextricks/MultiDexClassLoader;
    .locals 6

    .prologue
    .line 219
    :try_start_0
    sget-object v0, Lcom/facebook/common/dextricks/MultiDexClassLoader;->mInstalledClassLoader:Lcom/facebook/common/dextricks/MultiDexClassLoader;

    .line 220
    if-nez v0, :cond_2

    .line 221
    sget-object v2, Lcom/facebook/common/dextricks/MultiDexClassLoader;->mInstallLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 222
    :try_start_1
    const-string v0, "MultiDexClassLoader"

    const-string v1, "installing MultiDexClassLoader before application classloader"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    sget-object v0, Lcom/facebook/common/dextricks/MultiDexClassLoader;->mInstalledClassLoader:Lcom/facebook/common/dextricks/MultiDexClassLoader;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 224
    if-nez v0, :cond_1

    .line 228
    :try_start_2
    sget-object v1, Lcom/facebook/common/dextricks/MultiDexClassLoader;->FACEBOOK_CLASSES_TO_PRELOAD:[Ljava/lang/Class;

    array-length v3, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v1, v0

    .line 229
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 228
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 231
    :catch_0
    move-exception v0

    .line 232
    :try_start_3
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 260
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_2

    .line 264
    :catch_1
    move-exception v0

    .line 265
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 246
    :cond_0
    :try_start_5
    const-class v0, Lcom/facebook/common/dextricks/MultiDexClassLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 247
    const-class v0, Ljava/lang/ClassLoader;

    const-string v1, "parent"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 248
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 249
    invoke-virtual {v4, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    .line 251
    invoke-static {v3}, Lcom/facebook/common/dextricks/MultiDexClassLoader;->getPrimaryDex(Ljava/lang/ClassLoader;)[Ldalvik/system/DexFile;

    move-result-object v5

    .line 253
    new-instance v1, Lcom/facebook/common/dextricks/MultiDexClassLoader;

    invoke-direct {v1, v0, v5, v3}, Lcom/facebook/common/dextricks/MultiDexClassLoader;-><init>(Ljava/lang/ClassLoader;[Ldalvik/system/DexFile;Ljava/lang/ClassLoader;)V

    .line 257
    invoke-virtual {v4, v3, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 258
    sput-object v1, Lcom/facebook/common/dextricks/MultiDexClassLoader;->mInstalledClassLoader:Lcom/facebook/common/dextricks/MultiDexClassLoader;

    move-object v0, v1

    .line 260
    :cond_1
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 263
    :cond_2
    return-object v0

    .line 266
    :catch_2
    move-exception v0

    .line 267
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private loadInnerFallbackApiClass(Ljava/lang/String;[Ldalvik/system/DexFile;I)Ljava/lang/Class;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ldalvik/system/DexFile;",
            "I)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 617
    .line 619
    const/4 v0, 0x0

    .line 620
    :try_start_0
    iget-object v3, p0, Lcom/facebook/common/dextricks/MultiDexClassLoader;->mPutativeLoader:Ljava/lang/ClassLoader;

    .line 622
    const/4 v2, 0x0

    aget-object v2, p2, v2

    .line 623
    if-eqz v2, :cond_1

    .line 624
    invoke-virtual {v2, p1, v3}, Ldalvik/system/DexFile;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :goto_0
    move v2, v1

    .line 629
    :goto_1
    if-nez v0, :cond_2

    if-ge v2, p3, :cond_2

    .line 630
    :try_start_1
    aget-object v4, p2, v2

    .line 632
    invoke-virtual {v4, p1, v3}, Ldalvik/system/DexFile;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 634
    if-eqz v0, :cond_0

    if-le v2, v1, :cond_0

    .line 635
    invoke-direct {p0, v4, v2}, Lcom/facebook/common/dextricks/MultiDexClassLoader;->promoteDexFile(Ldalvik/system/DexFile;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 629
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 626
    :cond_1
    :try_start_2
    invoke-direct {p0}, Lcom/facebook/common/dextricks/MultiDexClassLoader;->onNoDexInThePromotedFrontDexSpot()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 641
    :catchall_0
    move-exception v0

    :goto_2
    iget-object v2, p0, Lcom/facebook/common/dextricks/MultiDexClassLoader;->mClassLoadingStats:Lcom/facebook/common/dextricks/ClassLoadingStats;

    invoke-virtual {v2, v1}, Lcom/facebook/common/dextricks/ClassLoadingStats;->incrementDexFileQueries(I)V

    throw v0

    :cond_2
    iget-object v1, p0, Lcom/facebook/common/dextricks/MultiDexClassLoader;->mClassLoadingStats:Lcom/facebook/common/dextricks/ClassLoadingStats;

    invoke-virtual {v1, v2}, Lcom/facebook/common/dextricks/ClassLoadingStats;->incrementDexFileQueries(I)V

    return-object v0

    :catchall_1
    move-exception v0

    move v1, v2

    goto :goto_2
.end method

.method private loadInnerNewApiClass(Ljava/lang/String;[Ldalvik/system/DexFile;I)Ljava/lang/Class;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ldalvik/system/DexFile;",
            "I)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 548
    .line 550
    const/4 v0, 0x0

    .line 551
    :try_start_0
    iget-object v3, p0, Lcom/facebook/common/dextricks/MultiDexClassLoader;->mPutativeLoader:Ljava/lang/ClassLoader;

    .line 553
    const/4 v2, 0x0

    aget-object v2, p2, v2

    .line 554
    if-eqz v2, :cond_1

    .line 555
    invoke-static {v2, p1, v3}, Lcom/facebook/common/dextricks/DexFileLoadNew;->loadClassBinaryName(Ldalvik/system/DexFile;Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :goto_0
    move v2, v1

    .line 563
    :goto_1
    if-nez v0, :cond_2

    if-ge v2, p3, :cond_2

    .line 564
    :try_start_1
    aget-object v4, p2, v2

    .line 566
    invoke-static {v4, p1, v3}, Lcom/facebook/common/dextricks/DexFileLoadNew;->loadClassBinaryName(Ldalvik/system/DexFile;Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 568
    if-eqz v0, :cond_0

    if-le v2, v1, :cond_0

    .line 569
    invoke-direct {p0, v4, v2}, Lcom/facebook/common/dextricks/MultiDexClassLoader;->promoteDexFile(Ldalvik/system/DexFile;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 563
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 560
    :cond_1
    :try_start_2
    invoke-direct {p0}, Lcom/facebook/common/dextricks/MultiDexClassLoader;->onNoDexInThePromotedFrontDexSpot()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 575
    :catchall_0
    move-exception v0

    :goto_2
    iget-object v2, p0, Lcom/facebook/common/dextricks/MultiDexClassLoader;->mClassLoadingStats:Lcom/facebook/common/dextricks/ClassLoadingStats;

    invoke-virtual {v2, v1}, Lcom/facebook/common/dextricks/ClassLoadingStats;->incrementDexFileQueries(I)V

    throw v0

    :cond_2
    iget-object v1, p0, Lcom/facebook/common/dextricks/MultiDexClassLoader;->mClassLoadingStats:Lcom/facebook/common/dextricks/ClassLoadingStats;

    invoke-virtual {v1, v2}, Lcom/facebook/common/dextricks/ClassLoadingStats;->incrementDexFileQueries(I)V

    return-object v0

    :catchall_1
    move-exception v0

    move v1, v2

    goto :goto_2
.end method

.method private loadInnerOldApiClass(Ljava/lang/String;[Ldalvik/system/DexFile;I)Ljava/lang/Class;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ldalvik/system/DexFile;",
            "I)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 583
    .line 585
    const/4 v0, 0x0

    .line 586
    :try_start_0
    iget-object v3, p0, Lcom/facebook/common/dextricks/MultiDexClassLoader;->mPutativeLoader:Ljava/lang/ClassLoader;

    .line 588
    const/4 v2, 0x0

    aget-object v2, p2, v2

    .line 589
    if-eqz v2, :cond_1

    .line 590
    invoke-static {v2, p1, v3}, Lcom/facebook/common/dextricks/DexFileLoadOld;->loadClassBinaryName(Ldalvik/system/DexFile;Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :goto_0
    move v2, v1

    .line 598
    :goto_1
    if-nez v0, :cond_2

    if-ge v2, p3, :cond_2

    .line 599
    :try_start_1
    aget-object v4, p2, v2

    .line 601
    invoke-static {v4, p1, v3}, Lcom/facebook/common/dextricks/DexFileLoadOld;->loadClassBinaryName(Ldalvik/system/DexFile;Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 603
    if-eqz v0, :cond_0

    if-le v2, v1, :cond_0

    .line 604
    invoke-direct {p0, v4, v2}, Lcom/facebook/common/dextricks/MultiDexClassLoader;->promoteDexFile(Ldalvik/system/DexFile;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 598
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 595
    :cond_1
    :try_start_2
    invoke-direct {p0}, Lcom/facebook/common/dextricks/MultiDexClassLoader;->onNoDexInThePromotedFrontDexSpot()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 609
    :catchall_0
    move-exception v0

    :goto_2
    iget-object v2, p0, Lcom/facebook/common/dextricks/MultiDexClassLoader;->mClassLoadingStats:Lcom/facebook/common/dextricks/ClassLoadingStats;

    invoke-virtual {v2, v1}, Lcom/facebook/common/dextricks/ClassLoadingStats;->incrementDexFileQueries(I)V

    throw v0

    :cond_2
    iget-object v1, p0, Lcom/facebook/common/dextricks/MultiDexClassLoader;->mClassLoadingStats:Lcom/facebook/common/dextricks/ClassLoadingStats;

    invoke-virtual {v1, v2}, Lcom/facebook/common/dextricks/ClassLoadingStats;->incrementDexFileQueries(I)V

    return-object v0

    :catchall_1
    move-exception v0

    move v1, v2

    goto :goto_2
.end method

.method private loadParentBootLoaderClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 800
    invoke-virtual {p0}, Lcom/facebook/common/dextricks/MultiDexClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 801
    if-eqz v0, :cond_0

    .line 803
    :try_start_0
    iget-object v0, p0, Lcom/facebook/common/dextricks/MultiDexClassLoader;->mClassLoadingStats:Lcom/facebook/common/dextricks/ClassLoadingStats;

    invoke-virtual {v0}, Lcom/facebook/common/dextricks/ClassLoadingStats;->incrementClassLoadsAttempted()V

    .line 804
    invoke-virtual {p0}, Lcom/facebook/common/dextricks/MultiDexClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 811
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private oldShouldAskBootClassLoader(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 796
    const-string v0, "com.facebook."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onNoDexInThePromotedFrontDexSpot()V
    .locals 1

    .prologue
    .line 819
    iget-object v0, p0, Lcom/facebook/common/dextricks/MultiDexClassLoader;->mClassLoadingStats:Lcom/facebook/common/dextricks/ClassLoadingStats;

    invoke-virtual {v0}, Lcom/facebook/common/dextricks/ClassLoadingStats;->decrementDexFileQueries()V

    .line 820
    return-void
.end method

.method private promoteDexFile(Ldalvik/system/DexFile;I)V
    .locals 4

    .prologue
    .line 444
    iget-object v0, p0, Lcom/facebook/common/dextricks/MultiDexClassLoader;->mDexFiles:[Ldalvik/system/DexFile;

    .line 445
    invoke-static {v0}, Lcom/facebook/common/dextricks/MultiDexClassLoader;->getFirstIndexOfFixedDexes([Ldalvik/system/DexFile;)I

    move-result v1

    .line 447
    invoke-direct {p0, p2, v1}, Lcom/facebook/common/dextricks/MultiDexClassLoader;->canPromoteDexesAndUpdateState(II)Z

    move-result v1

    if-nez v1, :cond_0

    .line 488
    :goto_0
    return-void

    .line 451
    :cond_0
    iget-object v1, p0, Lcom/facebook/common/dextricks/MultiDexClassLoader;->mDexFiles:[Ldalvik/system/DexFile;

    monitor-enter v1

    .line 453
    const/4 v2, 0x1

    :try_start_0
    aget-object v2, v0, v2

    if-ne v2, p1, :cond_1

    .line 454
    monitor-exit v1

    goto :goto_0

    .line 488
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 458
    :cond_1
    :try_start_1
    aget-object v2, v0, p2

    if-eq v2, p1, :cond_2

    .line 467
    monitor-exit v1

    goto :goto_0

    .line 483
    :cond_2
    const/4 v2, 0x0

    aput-object p1, v0, v2

    .line 484
    :goto_1
    if-lez p2, :cond_3

    .line 485
    add-int/lit8 v2, p2, -0x1

    aget-object v2, v0, v2

    aput-object v2, v0, p2

    .line 484
    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    .line 487
    :cond_3
    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v0, v2

    .line 488
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private shouldAskParent(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/16 v4, 0x2e

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 719
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sparse-switch v2, :sswitch_data_0

    move v0, v1

    .line 790
    :cond_0
    :goto_0
    :sswitch_0
    return v0

    .line 722
    :sswitch_1
    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x73

    if-ne v2, v3, :cond_0

    const/16 v2, 0x9

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x75

    if-ne v2, v3, :cond_0

    const/16 v2, 0xf

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_0

    const/4 v2, 0x7

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_0

    .line 726
    const-string v2, "ndroid.support"

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 736
    :sswitch_2
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sparse-switch v2, :sswitch_data_1

    move v0, v1

    .line 744
    goto :goto_0

    .line 751
    :sswitch_3
    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sparse-switch v2, :sswitch_data_2

    move v0, v1

    .line 769
    goto :goto_0

    .line 754
    :sswitch_4
    const/4 v2, 0x5

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x70

    if-ne v2, v3, :cond_1

    const/4 v2, 0x6

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x61

    if-ne v2, v3, :cond_1

    const/16 v2, 0xa

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v4, :cond_0

    :cond_1
    move v0, v1

    goto :goto_0

    .line 764
    :sswitch_5
    const/4 v2, 0x5

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x33

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    .line 773
    :sswitch_6
    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v4, :cond_0

    move v0, v1

    goto :goto_0

    .line 777
    :sswitch_7
    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x61

    if-ne v2, v3, :cond_2

    const/4 v2, 0x5

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    const/16 v3, 0x6e

    if-eq v2, v3, :cond_0

    :cond_2
    move v0, v1

    .line 783
    goto/16 :goto_0

    .line 788
    :catch_0
    move-exception v0

    .line 789
    const-string v2, "MultiDexClassLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Class out of bounds: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    .line 790
    goto/16 :goto_0

    .line 719
    nop

    :sswitch_data_0
    .sparse-switch
        0x61 -> :sswitch_1
        0x63 -> :sswitch_7
        0x64 -> :sswitch_0
        0x6a -> :sswitch_2
        0x6c -> :sswitch_0
        0x6f -> :sswitch_3
        0x73 -> :sswitch_6
    .end sparse-switch

    .line 736
    :sswitch_data_1
    .sparse-switch
        0x61 -> :sswitch_0
        0x75 -> :sswitch_0
    .end sparse-switch

    .line 751
    :sswitch_data_2
    .sparse-switch
        0x61 -> :sswitch_4
        0x6a -> :sswitch_0
        0x77 -> :sswitch_5
        0x78 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public final configure(Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;)V
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 335
    iget-object v1, p0, Lcom/facebook/common/dextricks/MultiDexClassLoader;->mPrimaryDexes:[Ldalvik/system/DexFile;

    array-length v3, v1

    .line 336
    iget-object v1, p1, Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;->mDexFiles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 337
    add-int v5, v3, v4

    .line 338
    mul-int/lit8 v1, v5, 0x2

    add-int/lit8 v1, v1, 0x1

    .line 339
    new-array v1, v1, [Ldalvik/system/DexFile;

    iput-object v1, p0, Lcom/facebook/common/dextricks/MultiDexClassLoader;->mDexFiles:[Ldalvik/system/DexFile;

    .line 342
    iget-object v1, p0, Lcom/facebook/common/dextricks/MultiDexClassLoader;->mDexFiles:[Ldalvik/system/DexFile;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 344
    const/4 v1, 0x1

    move v2, v0

    .line 346
    :goto_0
    if-ge v2, v3, :cond_0

    .line 347
    iget-object v6, p0, Lcom/facebook/common/dextricks/MultiDexClassLoader;->mPrimaryDexes:[Ldalvik/system/DexFile;

    aget-object v6, v6, v2

    .line 348
    iget-object v7, p0, Lcom/facebook/common/dextricks/MultiDexClassLoader;->mDexFiles:[Ldalvik/system/DexFile;

    aput-object v6, v7, v1

    .line 349
    iget-object v7, p0, Lcom/facebook/common/dextricks/MultiDexClassLoader;->mDexFiles:[Ldalvik/system/DexFile;

    add-int v8, v1, v5

    aput-object v6, v7, v8

    .line 346
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    move v1, v0

    .line 352
    :goto_1
    if-ge v1, v4, :cond_1

    .line 353
    iget-object v0, p1, Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;->mDexFiles:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldalvik/system/DexFile;

    .line 354
    iget-object v3, p0, Lcom/facebook/common/dextricks/MultiDexClassLoader;->mDexFiles:[Ldalvik/system/DexFile;

    aput-object v0, v3, v2

    .line 355
    iget-object v3, p0, Lcom/facebook/common/dextricks/MultiDexClassLoader;->mDexFiles:[Ldalvik/system/DexFile;

    add-int v6, v2, v5

    aput-object v0, v3, v6

    .line 352
    add-int/lit8 v0, v1, 0x1

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_1

    .line 357
    :cond_1
    return-void
.end method

.method protected final findClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 501
    const/4 v0, 0x0

    .line 503
    iget-object v1, p0, Lcom/facebook/common/dextricks/MultiDexClassLoader;->mDexFiles:[Ldalvik/system/DexFile;

    .line 504
    array-length v2, v1

    .line 509
    sget-byte v3, Lcom/facebook/common/dextricks/MultiDexClassLoader;->sApiDetectionState:B

    packed-switch v3, :pswitch_data_0

    .line 537
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 538
    return-object v0

    .line 511
    :pswitch_0
    iget-object v0, p0, Lcom/facebook/common/dextricks/MultiDexClassLoader;->mLastLoadedDexIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/common/dextricks/MultiDexClassLoader;->loadInnerNewApiClass(Ljava/lang/String;[Ldalvik/system/DexFile;I)Ljava/lang/Class;

    move-result-object v0

    .line 512
    if-nez v0, :cond_0

    .line 513
    invoke-direct {p0, p1, v1, v2}, Lcom/facebook/common/dextricks/MultiDexClassLoader;->loadInnerNewApiClass(Ljava/lang/String;[Ldalvik/system/DexFile;I)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 518
    :pswitch_1
    iget-object v0, p0, Lcom/facebook/common/dextricks/MultiDexClassLoader;->mLastLoadedDexIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/common/dextricks/MultiDexClassLoader;->loadInnerOldApiClass(Ljava/lang/String;[Ldalvik/system/DexFile;I)Ljava/lang/Class;

    move-result-object v0

    .line 519
    if-nez v0, :cond_0

    .line 520
    invoke-direct {p0, p1, v1, v2}, Lcom/facebook/common/dextricks/MultiDexClassLoader;->loadInnerOldApiClass(Ljava/lang/String;[Ldalvik/system/DexFile;I)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 525
    :pswitch_2
    iget-object v0, p0, Lcom/facebook/common/dextricks/MultiDexClassLoader;->mLastLoadedDexIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/common/dextricks/MultiDexClassLoader;->loadInnerFallbackApiClass(Ljava/lang/String;[Ldalvik/system/DexFile;I)Ljava/lang/Class;

    move-result-object v0

    .line 526
    if-nez v0, :cond_0

    .line 527
    invoke-direct {p0, p1, v1, v2}, Lcom/facebook/common/dextricks/MultiDexClassLoader;->loadInnerFallbackApiClass(Ljava/lang/String;[Ldalvik/system/DexFile;I)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 532
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/facebook/common/dextricks/MultiDexClassLoader;->findClassSlowPath(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 541
    :cond_1
    sget-object v0, Lcom/facebook/common/dextricks/MultiDexClassLoader;->sPrefabException:Ljava/lang/ClassNotFoundException;

    throw v0

    .line 509
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected final loadClass(Ljava/lang/String;Z)Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 676
    const/4 v0, 0x0

    .line 677
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/common/dextricks/MultiDexClassLoader;->shouldAskParent(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 678
    const/4 v1, 0x1

    .line 679
    invoke-direct {p0, p1}, Lcom/facebook/common/dextricks/MultiDexClassLoader;->loadParentBootLoaderClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 680
    if-eqz v0, :cond_0

    .line 705
    :goto_0
    return-object v0

    :cond_0
    move v2, v1

    .line 686
    :goto_1
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/facebook/common/dextricks/MultiDexClassLoader;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 687
    iget-object v1, p0, Lcom/facebook/common/dextricks/MultiDexClassLoader;->mClassLoadingStats:Lcom/facebook/common/dextricks/ClassLoadingStats;

    invoke-virtual {v1}, Lcom/facebook/common/dextricks/ClassLoadingStats;->incrementClassLoadsAttempted()V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 689
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 697
    if-nez v2, :cond_1

    :try_start_2
    invoke-direct {p0, p1}, Lcom/facebook/common/dextricks/MultiDexClassLoader;->oldShouldAskBootClassLoader(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 699
    invoke-direct {p0, p1}, Lcom/facebook/common/dextricks/MultiDexClassLoader;->loadParentBootLoaderClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 700
    if-eqz v0, :cond_1

    .line 701
    const-string v1, "MultiDexClassLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Class "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " was loaded on fallback. This should be fixed and added to the shouldAskParent method."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 711
    :catchall_0
    move-exception v0

    throw v0

    .line 708
    :cond_1
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    move v2, v0

    goto :goto_1
.end method
