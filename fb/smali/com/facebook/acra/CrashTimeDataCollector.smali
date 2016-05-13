.class public Lcom/facebook/acra/CrashTimeDataCollector;
.super Ljava/lang/Object;
.source "registered"


# static fields
.field private static DEFAULT_TRACE_COUNT_LIMIT:I = 0x0

.field public static processNameByAms:Ljava/lang/String;

.field public static processNameByAmsReady:Z

.field private static final sDeviceSpecificFields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/acra/ReportField;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sPackageManagerWrapper:Lcom/facebook/acra/util/PackageManagerWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x5

    sput v0, Lcom/facebook/acra/CrashTimeDataCollector;->DEFAULT_TRACE_COUNT_LIMIT:I

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/facebook/acra/CrashTimeDataCollector;->sDeviceSpecificFields:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static gatherCrashData(Lcom/facebook/acra/ErrorReporter;Ljava/lang/String;Ljava/lang/Throwable;[Lcom/facebook/acra/ReportField;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/acra/ErrorReporter;",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            "[",
            "Lcom/facebook/acra/ReportField;",
            "Lcom/facebook/acra/CrashReportData;",
            "Ljava/io/Writer;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 118
    if-nez p3, :cond_0

    .line 119
    sget-object p3, Lcom/facebook/acra/ACRA;->MINIMAL_REPORT_FIELDS:[Lcom/facebook/acra/ReportField;

    .line 123
    :cond_0
    sget-object v0, Lcom/facebook/acra/ReportField;->UID:Lcom/facebook/acra/ReportField;

    invoke-virtual {p0}, Lcom/facebook/acra/ErrorReporter;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p4, p5}, Lcom/facebook/acra/ErrorReporter;->put(Lcom/facebook/acra/ReportField;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V

    .line 127
    sget-object v0, Lcom/facebook/acra/ReportField;->STACK_TRACE:Lcom/facebook/acra/ReportField;

    invoke-virtual {p0, v0, p1, p4, p5}, Lcom/facebook/acra/ErrorReporter;->put(Lcom/facebook/acra/ReportField;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V

    .line 129
    invoke-virtual {p0}, Lcom/facebook/acra/ErrorReporter;->getConstantFields()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 130
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/acra/ReportField;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0, p4, p5}, Lcom/facebook/acra/ErrorReporter;->put(Lcom/facebook/acra/ReportField;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V

    goto :goto_0

    .line 133
    :cond_1
    invoke-static {p0, p2, p3, p4, p5}, Lcom/facebook/acra/CrashTimeDataCollector;->retrieveCrashTimeData(Lcom/facebook/acra/ErrorReporter;Ljava/lang/Throwable;[Lcom/facebook/acra/ReportField;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V

    .line 134
    invoke-static {p0, p4, p5}, Lcom/facebook/acra/CrashTimeDataCollector;->populateConstantDeviceData(Lcom/facebook/acra/ErrorReporter;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V

    .line 136
    sget-object v0, Lcom/facebook/acra/ReportField;->CUSTOM_DATA:Lcom/facebook/acra/ReportField;

    invoke-virtual {p0, p6, p2}, Lcom/facebook/acra/ErrorReporter;->dumpCustomDataToString(Ljava/util/Map;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p4, p5}, Lcom/facebook/acra/ErrorReporter;->put(Lcom/facebook/acra/ReportField;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V

    .line 137
    return-void
.end method

.method private static getAndroidRuntime()Ljava/lang/String;
    .locals 2

    .prologue
    .line 539
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    .line 540
    const-string v0, "DALVIK"

    .line 550
    :goto_0
    return-object v0

    .line 542
    :cond_0
    const-string v0, "java.boot.class.path"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 543
    if-eqz v0, :cond_2

    .line 544
    const-string v1, "/system/framework/core-libart.jar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 545
    const-string v0, "ART"

    goto :goto_0

    .line 546
    :cond_1
    const-string v1, "/system/framework/core.jar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 547
    const-string v0, "DALVIK"

    goto :goto_0

    .line 550
    :cond_2
    const-string v0, "UNKNOWN"

    goto :goto_0
.end method

.method private static getAvailableInternalMemorySize()J
    .locals 4

    .prologue
    .line 463
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 464
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 465
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v2, v0

    .line 466
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    int-to-long v0, v0

    .line 467
    mul-long/2addr v0, v2

    .line 469
    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method private static getConstantDeviceData(Landroid/content/Context;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/acra/ReportField;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 334
    sget-object v1, Lcom/facebook/acra/CrashTimeDataCollector;->sDeviceSpecificFields:Ljava/util/Map;

    monitor-enter v1

    .line 335
    :try_start_0
    sget-object v0, Lcom/facebook/acra/CrashTimeDataCollector;->sDeviceSpecificFields:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 337
    sget-object v0, Lcom/facebook/acra/CrashTimeDataCollector;->sDeviceSpecificFields:Ljava/util/Map;

    sget-object v2, Lcom/facebook/acra/ReportField;->BUILD:Lcom/facebook/acra/ReportField;

    const-class v3, Landroid/os/Build;

    invoke-static {v3}, Lcom/facebook/acra/ReflectionCollector;->collectConstants(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    sget-object v0, Lcom/facebook/acra/CrashTimeDataCollector;->sDeviceSpecificFields:Ljava/util/Map;

    sget-object v2, Lcom/facebook/acra/ReportField;->JAIL_BROKEN:Lcom/facebook/acra/ReportField;

    invoke-static {}, Lcom/facebook/acra/CrashTimeDataCollector;->getJailStatus()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    sget-object v0, Lcom/facebook/acra/CrashTimeDataCollector;->sDeviceSpecificFields:Ljava/util/Map;

    sget-object v2, Lcom/facebook/acra/ReportField;->INSTALLATION_ID:Lcom/facebook/acra/ReportField;

    invoke-static {p0}, Lcom/facebook/acra/util/Installation;->id(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    sget-object v0, Lcom/facebook/acra/CrashTimeDataCollector;->sDeviceSpecificFields:Ljava/util/Map;

    sget-object v2, Lcom/facebook/acra/ReportField;->TOTAL_MEM_SIZE:Lcom/facebook/acra/ReportField;

    invoke-static {}, Lcom/facebook/acra/CrashTimeDataCollector;->getTotalInternalMemorySize()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    invoke-static {p0}, Lcom/facebook/acra/CrashTimeDataCollector;->getPackageManagerWrapper(Landroid/content/Context;)Lcom/facebook/acra/util/PackageManagerWrapper;

    move-result-object v0

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v2}, Lcom/facebook/acra/util/PackageManagerWrapper;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 345
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 346
    if-eqz v0, :cond_0

    .line 347
    sget-object v2, Lcom/facebook/acra/CrashTimeDataCollector;->sDeviceSpecificFields:Ljava/util/Map;

    sget-object v3, Lcom/facebook/acra/ReportField;->DEVICE_ID:Lcom/facebook/acra/ReportField;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    :cond_0
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 354
    sget-object v2, Lcom/facebook/acra/CrashTimeDataCollector;->sDeviceSpecificFields:Ljava/util/Map;

    sget-object v3, Lcom/facebook/acra/ReportField;->DISPLAY:Lcom/facebook/acra/ReportField;

    invoke-static {v0}, Lcom/facebook/acra/CrashTimeDataCollector;->toString(Landroid/view/Display;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    sget-object v0, Lcom/facebook/acra/CrashTimeDataCollector;->sDeviceSpecificFields:Ljava/util/Map;

    sget-object v2, Lcom/facebook/acra/ReportField;->ENVIRONMENT:Lcom/facebook/acra/ReportField;

    const-class v3, Landroid/os/Environment;

    invoke-static {v3}, Lcom/facebook/acra/ReflectionCollector;->collectStaticGettersResults(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    sget-object v0, Lcom/facebook/acra/CrashTimeDataCollector;->sDeviceSpecificFields:Ljava/util/Map;

    sget-object v2, Lcom/facebook/acra/ReportField;->DEVICE_FEATURES:Lcom/facebook/acra/ReportField;

    invoke-static {p0}, Lcom/facebook/acra/DeviceFeaturesCollector;->getFeatures(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    sget-object v0, Lcom/facebook/acra/CrashTimeDataCollector;->sDeviceSpecificFields:Ljava/util/Map;

    sget-object v2, Lcom/facebook/acra/ReportField;->SETTINGS_SYSTEM:Lcom/facebook/acra/ReportField;

    invoke-static {p0}, Lcom/facebook/acra/SettingsCollector;->collectSystemSettings(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    sget-object v0, Lcom/facebook/acra/CrashTimeDataCollector;->sDeviceSpecificFields:Ljava/util/Map;

    sget-object v2, Lcom/facebook/acra/ReportField;->SETTINGS_SECURE:Lcom/facebook/acra/ReportField;

    invoke-static {p0}, Lcom/facebook/acra/SettingsCollector;->collectSecureSettings(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v0, v2, :cond_1

    .line 370
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 372
    sget-object v2, Lcom/facebook/acra/CrashTimeDataCollector;->sDeviceSpecificFields:Ljava/util/Map;

    sget-object v3, Lcom/facebook/acra/ReportField;->IS_LOW_RAM_DEVICE:Lcom/facebook/acra/ReportField;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    :cond_1
    sget-object v0, Lcom/facebook/acra/CrashTimeDataCollector;->sDeviceSpecificFields:Ljava/util/Map;

    sget-object v2, Lcom/facebook/acra/ReportField;->ANDROID_RUNTIME:Lcom/facebook/acra/ReportField;

    invoke-static {}, Lcom/facebook/acra/CrashTimeDataCollector;->getAndroidRuntime()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_2

    .line 378
    invoke-static {p0}, Lcom/facebook/acra/CrashTimeDataCollector;->getPackageManagerWrapper(Landroid/content/Context;)Lcom/facebook/acra/util/PackageManagerWrapper;

    move-result-object v0

    const-string v2, "com.google.android.webview"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/facebook/acra/util/PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 381
    if-eqz v0, :cond_2

    .line 382
    sget-object v2, Lcom/facebook/acra/CrashTimeDataCollector;->sDeviceSpecificFields:Ljava/util/Map;

    sget-object v3, Lcom/facebook/acra/ReportField;->WEBVIEW_VERSION:Lcom/facebook/acra/ReportField;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    :cond_2
    sget-object v0, Lcom/facebook/acra/CrashTimeDataCollector;->sDeviceSpecificFields:Ljava/util/Map;

    monitor-exit v1

    return-object v0

    .line 388
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static getJailStatus()Ljava/lang/String;
    .locals 6

    .prologue
    .line 480
    sget-object v0, Landroid/os/Build;->TAGS:Ljava/lang/String;

    .line 481
    if-eqz v0, :cond_0

    const-string v1, "test-keys"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 482
    const-string v0, "yes"

    .line 514
    :goto_0
    return-object v0

    .line 487
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/app/Superuser.apk"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 488
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 489
    const-string v0, "yes"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 491
    :catch_0
    move-exception v0

    .line 492
    sget-object v1, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Failed to find Superuser.pak"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 496
    :cond_1
    invoke-static {}, Ljava/lang/System;->getenv()Ljava/util/Map;

    move-result-object v0

    .line 497
    if-eqz v0, :cond_3

    .line 498
    const-string v1, "PATH"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 499
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 501
    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_3

    aget-object v0, v2, v1

    .line 502
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "/su"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 504
    :try_start_1
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 505
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 506
    const-string v0, "yes"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 508
    :catch_1
    move-exception v0

    .line 509
    sget-object v4, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v5, "Failed to find su binary in the PATH"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 501
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 514
    :cond_3
    const-string v0, "no"

    goto :goto_0
.end method

.method private static getPackageManagerWrapper(Landroid/content/Context;)Lcom/facebook/acra/util/PackageManagerWrapper;
    .locals 1

    .prologue
    .line 577
    sget-object v0, Lcom/facebook/acra/CrashTimeDataCollector;->sPackageManagerWrapper:Lcom/facebook/acra/util/PackageManagerWrapper;

    if-nez v0, :cond_0

    .line 578
    new-instance v0, Lcom/facebook/acra/util/PackageManagerWrapper;

    invoke-direct {v0, p0}, Lcom/facebook/acra/util/PackageManagerWrapper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/facebook/acra/CrashTimeDataCollector;->sPackageManagerWrapper:Lcom/facebook/acra/util/PackageManagerWrapper;

    .line 580
    :cond_0
    sget-object v0, Lcom/facebook/acra/CrashTimeDataCollector;->sPackageManagerWrapper:Lcom/facebook/acra/util/PackageManagerWrapper;

    return-object v0
.end method

.method private static getProcessName(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 280
    invoke-static {p0}, Lcom/facebook/acra/CrashTimeDataCollector;->getProcessNameFromAmsOrNull(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 281
    if-nez v3, :cond_3

    .line 282
    const/4 v1, 0x0

    .line 284
    :try_start_0
    new-instance v0, Ljava/io/FileReader;

    const-string v2, "/proc/self/cmdline"

    invoke-direct {v0, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 285
    new-instance v2, Ljava/io/BufferedReader;

    const/16 v4, 0x80

    invoke-direct {v2, v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    .line 287
    if-eqz v0, :cond_0

    .line 288
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v0

    .line 294
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 296
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 303
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 304
    const-string v0, ""

    .line 306
    :cond_2
    return-object v0

    .line 290
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 291
    :goto_2
    sget-object v3, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Failed to get process name."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v2

    move-object v2, v1

    goto :goto_0

    .line 297
    :catch_1
    move-exception v1

    .line 298
    sget-object v2, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Failed to close file."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 290
    :catch_2
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_2

    :catch_3
    move-exception v1

    move-object v5, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v5

    goto :goto_2

    :cond_3
    move-object v0, v3

    goto :goto_1
.end method

.method static getProcessNameFromAms(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 433
    invoke-static {p0}, Lcom/facebook/acra/CrashTimeDataCollector;->getProcessNameFromAmsOrNull(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 434
    if-nez v0, :cond_0

    .line 435
    const-string v0, "n/a"

    .line 437
    :cond_0
    return-object v0
.end method

.method private static getProcessNameFromAmsOrNull(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 395
    sget-boolean v0, Lcom/facebook/acra/CrashTimeDataCollector;->processNameByAmsReady:Z

    if-eqz v0, :cond_0

    .line 396
    sget-object v0, Lcom/facebook/acra/CrashTimeDataCollector;->processNameByAms:Ljava/lang/String;

    .line 420
    :goto_0
    return-object v0

    .line 399
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/acra/CrashTimeDataCollector;->processNameByAms:Ljava/lang/String;

    .line 400
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    .line 402
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 403
    if-nez v0, :cond_1

    .line 404
    sget-object v0, Lcom/facebook/acra/CrashTimeDataCollector;->processNameByAms:Ljava/lang/String;

    goto :goto_0

    .line 407
    :cond_1
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 408
    if-nez v0, :cond_2

    .line 409
    sget-object v0, Lcom/facebook/acra/CrashTimeDataCollector;->processNameByAms:Ljava/lang/String;

    goto :goto_0

    .line 412
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 413
    iget v3, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v3, v1, :cond_3

    .line 414
    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    sput-object v0, Lcom/facebook/acra/CrashTimeDataCollector;->processNameByAms:Ljava/lang/String;

    .line 419
    :cond_4
    const/4 v0, 0x1

    sput-boolean v0, Lcom/facebook/acra/CrashTimeDataCollector;->processNameByAmsReady:Z

    .line 420
    sget-object v0, Lcom/facebook/acra/CrashTimeDataCollector;->processNameByAms:Ljava/lang/String;

    goto :goto_0
.end method

.method private static getTotalInternalMemorySize()J
    .locals 4

    .prologue
    .line 525
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 526
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 527
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v2, v0

    .line 528
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    int-to-long v0, v0

    .line 529
    mul-long/2addr v0, v2

    .line 531
    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method private static populateConstantDeviceData(Lcom/facebook/acra/ErrorReporter;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V
    .locals 3

    .prologue
    .line 321
    invoke-virtual {p0}, Lcom/facebook/acra/ErrorReporter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/acra/CrashTimeDataCollector;->getConstantDeviceData(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    .line 322
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 323
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/acra/ReportField;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0, p1, p2}, Lcom/facebook/acra/ErrorReporter;->put(Lcom/facebook/acra/ReportField;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V

    goto :goto_0

    .line 325
    :cond_0
    return-void
.end method

.method private static retrieveCrashTimeData(Lcom/facebook/acra/ErrorReporter;Ljava/lang/Throwable;[Lcom/facebook/acra/ReportField;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 154
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 155
    invoke-virtual {p0}, Lcom/facebook/acra/ErrorReporter;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 158
    sget-object v0, Lcom/facebook/acra/ReportField;->REPORT_ID:Lcom/facebook/acra/ReportField;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    sget-object v0, Lcom/facebook/acra/ReportField;->REPORT_ID:Lcom/facebook/acra/ReportField;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v3, p3, p4}, Lcom/facebook/acra/ErrorReporter;->put(Lcom/facebook/acra/ReportField;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V

    .line 163
    :cond_0
    sget-object v0, Lcom/facebook/acra/ReportField;->PROCESS_NAME:Lcom/facebook/acra/ReportField;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 164
    sget-object v0, Lcom/facebook/acra/ReportField;->PROCESS_NAME:Lcom/facebook/acra/ReportField;

    invoke-static {v2}, Lcom/facebook/acra/CrashTimeDataCollector;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v3, p3, p4}, Lcom/facebook/acra/ErrorReporter;->put(Lcom/facebook/acra/ReportField;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V

    .line 168
    :cond_1
    sget-object v0, Lcom/facebook/acra/ReportField;->USER_APP_START_DATE:Lcom/facebook/acra/ReportField;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 169
    sget-object v0, Lcom/facebook/acra/ReportField;->USER_APP_START_DATE:Lcom/facebook/acra/ReportField;

    invoke-virtual {p0}, Lcom/facebook/acra/ErrorReporter;->getAppStartDate()Landroid/text/format/Time;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/text/format/Time;->format3339(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v3, p3, p4}, Lcom/facebook/acra/ErrorReporter;->put(Lcom/facebook/acra/ReportField;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V

    .line 175
    :cond_2
    sget-object v0, Lcom/facebook/acra/ReportField;->PROCESS_UPTIME:Lcom/facebook/acra/ReportField;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 176
    sget-object v0, Lcom/facebook/acra/ReportField;->PROCESS_UPTIME:Lcom/facebook/acra/ReportField;

    .line 444
    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v7

    move-wide v4, v7

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v3, p3, p4}, Lcom/facebook/acra/ErrorReporter;->put(Lcom/facebook/acra/ReportField;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V

    .line 180
    :cond_3
    sget-object v0, Lcom/facebook/acra/ReportField;->DEVICE_UPTIME:Lcom/facebook/acra/ReportField;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 181
    sget-object v0, Lcom/facebook/acra/ReportField;->DEVICE_UPTIME:Lcom/facebook/acra/ReportField;

    .line 451
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    move-wide v4, v7

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v3, p3, p4}, Lcom/facebook/acra/ErrorReporter;->put(Lcom/facebook/acra/ReportField;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V

    .line 184
    :cond_4
    sget-object v0, Lcom/facebook/acra/ReportField;->CRASH_CONFIGURATION:Lcom/facebook/acra/ReportField;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 185
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 186
    sget-object v3, Lcom/facebook/acra/ReportField;->CRASH_CONFIGURATION:Lcom/facebook/acra/ReportField;

    invoke-static {v0}, Lcom/facebook/acra/ConfigurationInspector;->toString(Landroid/content/res/Configuration;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v0, p3, p4}, Lcom/facebook/acra/ErrorReporter;->put(Lcom/facebook/acra/ReportField;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V

    .line 190
    :cond_5
    sget-object v0, Lcom/facebook/acra/ReportField;->AVAILABLE_MEM_SIZE:Lcom/facebook/acra/ReportField;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 191
    invoke-static {}, Lcom/facebook/acra/CrashTimeDataCollector;->getAvailableInternalMemorySize()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 192
    sget-object v3, Lcom/facebook/acra/ReportField;->AVAILABLE_MEM_SIZE:Lcom/facebook/acra/ReportField;

    invoke-virtual {p0, v3, v0, p3, p4}, Lcom/facebook/acra/ErrorReporter;->put(Lcom/facebook/acra/ReportField;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V

    .line 196
    :cond_6
    sget-object v0, Lcom/facebook/acra/ReportField;->DUMPSYS_MEMINFO:Lcom/facebook/acra/ReportField;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 197
    sget-object v0, Lcom/facebook/acra/ReportField;->DUMPSYS_MEMINFO:Lcom/facebook/acra/ReportField;

    invoke-static {v2}, Lcom/facebook/acra/DumpSysCollector;->collectMemInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v3, p3, p4}, Lcom/facebook/acra/ErrorReporter;->put(Lcom/facebook/acra/ReportField;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V

    .line 202
    :cond_7
    sget-object v0, Lcom/facebook/acra/ReportField;->USER_CRASH_DATE:Lcom/facebook/acra/ReportField;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 203
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 204
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 205
    sget-object v3, Lcom/facebook/acra/ReportField;->USER_CRASH_DATE:Lcom/facebook/acra/ReportField;

    invoke-virtual {v0, v6}, Landroid/text/format/Time;->format3339(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v0, p3, p4}, Lcom/facebook/acra/ErrorReporter;->put(Lcom/facebook/acra/ReportField;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V

    .line 209
    :cond_8
    sget-object v0, Lcom/facebook/acra/ReportField;->ACTIVITY_LOG:Lcom/facebook/acra/ReportField;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 211
    instance-of v0, p1, Ljava/lang/OutOfMemoryError;

    if-eqz v0, :cond_15

    .line 212
    invoke-virtual {p0}, Lcom/facebook/acra/ErrorReporter;->getActivityLogger()Lcom/facebook/acra/util/SimpleTraceLogger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/acra/util/SimpleTraceLogger;->toString()Ljava/lang/String;

    move-result-object v0

    .line 216
    :goto_0
    sget-object v3, Lcom/facebook/acra/ReportField;->ACTIVITY_LOG:Lcom/facebook/acra/ReportField;

    invoke-virtual {p0, v3, v0, p3, p4}, Lcom/facebook/acra/ErrorReporter;->put(Lcom/facebook/acra/ReportField;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V

    .line 220
    :cond_9
    sget-object v0, Lcom/facebook/acra/ReportField;->PROCESS_NAME_BY_AMS:Lcom/facebook/acra/ReportField;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 221
    sget-object v0, Lcom/facebook/acra/ReportField;->PROCESS_NAME_BY_AMS:Lcom/facebook/acra/ReportField;

    invoke-static {v2}, Lcom/facebook/acra/CrashTimeDataCollector;->getProcessNameFromAms(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v3, p3, p4}, Lcom/facebook/acra/ErrorReporter;->put(Lcom/facebook/acra/ReportField;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V

    .line 223
    .line 424
    :cond_a
    const/4 v7, 0x0

    sput-object v7, Lcom/facebook/acra/CrashTimeDataCollector;->processNameByAms:Ljava/lang/String;

    .line 425
    const/4 v7, 0x0

    sput-boolean v7, Lcom/facebook/acra/CrashTimeDataCollector;->processNameByAmsReady:Z

    .line 426
    .line 226
    sget-object v0, Lcom/facebook/acra/ReportField;->OPEN_FD_COUNT:Lcom/facebook/acra/ReportField;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 227
    sget-object v0, Lcom/facebook/acra/ReportField;->OPEN_FD_COUNT:Lcom/facebook/acra/ReportField;

    invoke-static {}, Lcom/facebook/acra/util/ProcFileReader;->getOpenFDCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v3, p3, p4}, Lcom/facebook/acra/ErrorReporter;->put(Lcom/facebook/acra/ReportField;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V

    .line 230
    :cond_b
    sget-object v0, Lcom/facebook/acra/ReportField;->OPEN_FD_SOFT_LIMIT:Lcom/facebook/acra/ReportField;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    sget-object v0, Lcom/facebook/acra/ReportField;->OPEN_FD_HARD_LIMIT:Lcom/facebook/acra/ReportField;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 231
    :cond_c
    invoke-static {}, Lcom/facebook/acra/util/ProcFileReader;->getOpenFDLimits()Lcom/facebook/acra/util/ProcFileReader$OpenFDLimits;

    move-result-object v0

    .line 232
    if-eqz v0, :cond_e

    .line 233
    sget-object v3, Lcom/facebook/acra/ReportField;->OPEN_FD_SOFT_LIMIT:Lcom/facebook/acra/ReportField;

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 234
    sget-object v3, Lcom/facebook/acra/ReportField;->OPEN_FD_SOFT_LIMIT:Lcom/facebook/acra/ReportField;

    iget-object v4, v0, Lcom/facebook/acra/util/ProcFileReader$OpenFDLimits;->softLimit:Ljava/lang/String;

    invoke-virtual {p0, v3, v4, p3, p4}, Lcom/facebook/acra/ErrorReporter;->put(Lcom/facebook/acra/ReportField;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V

    .line 236
    :cond_d
    sget-object v3, Lcom/facebook/acra/ReportField;->OPEN_FD_HARD_LIMIT:Lcom/facebook/acra/ReportField;

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 237
    sget-object v3, Lcom/facebook/acra/ReportField;->OPEN_FD_HARD_LIMIT:Lcom/facebook/acra/ReportField;

    iget-object v0, v0, Lcom/facebook/acra/util/ProcFileReader$OpenFDLimits;->hardLimit:Ljava/lang/String;

    invoke-virtual {p0, v3, v0, p3, p4}, Lcom/facebook/acra/ErrorReporter;->put(Lcom/facebook/acra/ReportField;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V

    .line 242
    :cond_e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v0, v3, :cond_f

    sget-object v0, Lcom/facebook/acra/ReportField;->RUNTIME_PERMISSIONS:Lcom/facebook/acra/ReportField;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 244
    invoke-static {v2}, Lcom/facebook/acra/PermissionsReporter;->getAppGrantedPermissions(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 245
    sget-object v3, Lcom/facebook/acra/ReportField;->RUNTIME_PERMISSIONS:Lcom/facebook/acra/ReportField;

    invoke-virtual {p0, v3, v0, p3, p4}, Lcom/facebook/acra/ErrorReporter;->put(Lcom/facebook/acra/ReportField;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V

    .line 251
    :cond_f
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v0, v3, :cond_13

    sget-boolean v0, Lcom/facebook/acra/ErrorReporter;->sIsInternalBuild:Z

    if-eqz v0, :cond_13

    .line 252
    sget-object v0, Lcom/facebook/acra/ReportField;->LOGCAT:Lcom/facebook/acra/ReportField;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 253
    sget-object v0, Lcom/facebook/acra/ReportField;->LOGCAT:Lcom/facebook/acra/ReportField;

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/facebook/acra/LogCatCollector;->collectLogCat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v3, p3, p4}, Lcom/facebook/acra/ErrorReporter;->put(Lcom/facebook/acra/ReportField;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V

    .line 255
    :cond_10
    sget-object v0, Lcom/facebook/acra/ReportField;->EVENTSLOG:Lcom/facebook/acra/ReportField;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 256
    sget-object v0, Lcom/facebook/acra/ReportField;->EVENTSLOG:Lcom/facebook/acra/ReportField;

    const-string v3, "events"

    invoke-static {v3}, Lcom/facebook/acra/LogCatCollector;->collectLogCat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v3, p3, p4}, Lcom/facebook/acra/ErrorReporter;->put(Lcom/facebook/acra/ReportField;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V

    .line 258
    :cond_11
    sget-object v0, Lcom/facebook/acra/ReportField;->RADIOLOG:Lcom/facebook/acra/ReportField;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 259
    sget-object v0, Lcom/facebook/acra/ReportField;->RADIOLOG:Lcom/facebook/acra/ReportField;

    const-string v3, "radio"

    invoke-static {v3}, Lcom/facebook/acra/LogCatCollector;->collectLogCat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v3, p3, p4}, Lcom/facebook/acra/ErrorReporter;->put(Lcom/facebook/acra/ReportField;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V

    .line 261
    :cond_12
    sget-object v0, Lcom/facebook/acra/ReportField;->DROPBOX:Lcom/facebook/acra/ReportField;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 262
    invoke-static {}, Lcom/facebook/acra/ACRA;->getConfig()Lcom/facebook/acra/reporter/BaseCrashReporter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/acra/reporter/BaseCrashReporter;->additionalDropBoxTags()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/facebook/acra/DropBoxCollector;->read(Landroid/content/Context;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 264
    sget-object v3, Lcom/facebook/acra/ReportField;->DROPBOX:Lcom/facebook/acra/ReportField;

    invoke-virtual {p0, v3, v0, p3, p4}, Lcom/facebook/acra/ErrorReporter;->put(Lcom/facebook/acra/ReportField;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V

    .line 267
    :cond_13
    sget-object v0, Lcom/facebook/acra/ReportField;->LARGE_MEM_HEAP:Lcom/facebook/acra/ReportField;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_14

    .line 269
    sget-object v0, Lcom/facebook/acra/ReportField;->LARGE_MEM_HEAP:Lcom/facebook/acra/ReportField;

    invoke-static {v2}, Lcom/facebook/acra/DumpSysCollector;->collectLargerMemoryInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p3, p4}, Lcom/facebook/acra/ErrorReporter;->put(Lcom/facebook/acra/ReportField;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V

    .line 271
    :cond_14
    return-void

    .line 214
    :cond_15
    invoke-virtual {p0}, Lcom/facebook/acra/ErrorReporter;->getActivityLogger()Lcom/facebook/acra/util/SimpleTraceLogger;

    move-result-object v0

    sget v3, Lcom/facebook/acra/CrashTimeDataCollector;->DEFAULT_TRACE_COUNT_LIMIT:I

    invoke-virtual {v0, v3}, Lcom/facebook/acra/util/SimpleTraceLogger;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private static toString(Landroid/view/Display;)Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0xa

    .line 562
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 563
    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 564
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 565
    const-string v2, "width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/Display;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "height="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/Display;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "pixelFormat="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/Display;->getPixelFormat()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "refreshRate="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/Display;->getRefreshRate()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "fps\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "metrics.density=x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "metrics.scaledDensity=x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "metrics.widthPixels="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "metrics.heightPixels="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "metrics.xdpi="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/util/DisplayMetrics;->xdpi:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "metrics.ydpi="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, v0, Landroid/util/DisplayMetrics;->ydpi:F

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 573
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
