.class public Lcom/facebook/acra/ErrorReporter;
.super Ljava/lang/Object;
.source "xz stream terminated prematurely"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field public static final ACRA_DIRNAME:Ljava/lang/String; = "acra-reports"

.field private static final ALL_REPORT_TYPES:[Lcom/facebook/acra/ErrorReporter$CrashReportType;

.field public static final CRASH_ATTACHMENT_DUMMY_STACKTRACE:Ljava/lang/String; = "crash attachment"

.field public static final DEFAULT_MAX_REPORT_SIZE:J = 0x100000L

.field public static final DUMPFILE_EXTENSION:Ljava/lang/String; = ".dmp"

.field public static final DUMP_DIR:Ljava/lang/String; = "minidumps"

.field private static final EMPTY_LAST_URL:Ljava/lang/String; = "EMPTY_URL"

.field private static final FILE_IAB_OPEN_TIMES:Ljava/lang/String; = "iab_open_times"

.field private static final FILE_LAST_ACTIVITY:Ljava/lang/String; = "last_activity_opened"

.field private static final FILE_LAST_URL:Ljava/lang/String; = "last_url_opened"

.field private static final IS_PROCESSING_ANOTHER_EXCEPTION:Ljava/lang/String; = "IS_PROCESSING_ANOTHER_EXCEPTION"

.field public static final MAX_REPORT_AGE:J = 0x240c8400L

.field public static final MAX_SEND_REPORTS:I = 0x5

.field private static MAX_TRACE_COUNT_LIMIT:I = 0x0

.field private static final MIN_TEMP_REPORT_AGE:J = 0x927c0L

.field public static final NATIVE_MAX_REPORT_SIZE:J = 0x800000L

.field private static final NO_FILE:Ljava/lang/String; = "NO_FILE"

.field public static final PREALLOCATED_FILESIZE:J = 0x100000L

.field public static final PREALLOCATED_REPORTFILE:Ljava/lang/String; = "reportfile.prealloc"

.field public static final REPORTFILE_EXTENSION:Ljava/lang/String; = ".stacktrace"

.field public static final SIGQUIT_DIR:Ljava/lang/String; = "traces"

.field public static final SIGQUIT_MAX_REPORT_SIZE:J = 0x80000L

.field public static final TAG:Ljava/lang/String; = "ErrorReporter"

.field public static final TEMP_REPORTFILE_EXTENSION:Ljava/lang/String; = ".temp_stacktrace"

.field private static mInstanceSingleton:Lcom/facebook/acra/ErrorReporter; = null

.field private static final mInternalException:Ljava/lang/String; = "ACRA_INTERNAL=java.lang.Exception: An exception occurred while trying to collect data about an ACRA internal error\n\tat com.facebook.acra.ErrorReporter.handleException(ErrorReporter.java:810)\n\tat com.facebook.acra.ErrorReporter.handleException(ErrorReporter.java:866)\n\tat com.facebook.acra.ErrorReporter.uncaughtException(ErrorReporter.java:666)\n\tat java.lang.ThreadGroup.uncaughtException(ThreadGroup.java:693)\n\tat java.lang.ThreadGroup.uncaughtException(ThreadGroup.java:690)\n"

.field private static mProcessingCrash:Ljava/util/concurrent/atomic/AtomicBoolean;

.field static sIsInternalBuild:Z

.field public static sVersionCodeRegex:Ljava/util/regex/Pattern;


# instance fields
.field private final mActivityLogger:Lcom/facebook/acra/util/SimpleTraceLogger;

.field private final mAppStartDate:Landroid/text/format/Time;

.field private mAppVersionCode:Ljava/lang/String;

.field private mAppVersionName:Ljava/lang/String;

.field private final mConstantFields:Ljava/util/Map;
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

.field public mContext:Landroid/content/Context;

.field private mCurrentlyProcessingOOM:Z

.field private mDexVerifyBridge:Lcom/facebook/common/errorreporting/AcraDexLibLoaderBridge;

.field private mDfltExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private mHasNativeCrashDumpOnInit:Z

.field mInstanceCustomParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mInstanceLazyCustomParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/acra/CustomReportDataSupplier;",
            ">;"
        }
    .end annotation
.end field

.field private mLogBridge:Lcom/facebook/acra/LogBridge;

.field private mMaxReportSize:J

.field private mReportSenders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/facebook/acra/sender/ReportSender;",
            ">;"
        }
    .end annotation
.end field

.field private final mShouldContinueProcessingExceptionLock:Ljava/lang/Object;

.field private volatile mUserId:Ljava/lang/String;

.field private preallocFile:Ljava/io/File;

.field private volatile sendInMemoryReport:Z

.field private usePreallocatedFile:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 132
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/acra/ErrorReporter;->sVersionCodeRegex:Ljava/util/regex/Pattern;

    .line 174
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/facebook/acra/ErrorReporter$CrashReportType;

    sget-object v1, Lcom/facebook/acra/ErrorReporter$CrashReportType;->ACRA_CRASH_REPORT:Lcom/facebook/acra/ErrorReporter$CrashReportType;

    aput-object v1, v0, v3

    const/4 v1, 0x1

    sget-object v2, Lcom/facebook/acra/ErrorReporter$CrashReportType;->NATIVE_CRASH_REPORT:Lcom/facebook/acra/ErrorReporter$CrashReportType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/facebook/acra/ErrorReporter$CrashReportType;->ANR_REPORT:Lcom/facebook/acra/ErrorReporter$CrashReportType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/acra/ErrorReporter;->ALL_REPORT_TYPES:[Lcom/facebook/acra/ErrorReporter$CrashReportType;

    .line 341
    const/16 v0, 0x14

    sput v0, Lcom/facebook/acra/ErrorReporter;->MAX_TRACE_COUNT_LIMIT:I

    .line 367
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/facebook/acra/ErrorReporter;->mProcessingCrash:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    const-wide/32 v0, 0x100000

    iput-wide v0, p0, Lcom/facebook/acra/ErrorReporter;->mMaxReportSize:J

    .line 161
    iput-boolean v2, p0, Lcom/facebook/acra/ErrorReporter;->mHasNativeCrashDumpOnInit:Z

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mReportSenders:Ljava/util/ArrayList;

    .line 172
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mConstantFields:Ljava/util/Map;

    .line 314
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mInstanceCustomParameters:Ljava/util/Map;

    .line 317
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mInstanceLazyCustomParameters:Ljava/util/Map;

    .line 324
    iput-boolean v2, p0, Lcom/facebook/acra/ErrorReporter;->mCurrentlyProcessingOOM:Z

    .line 325
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mShouldContinueProcessingExceptionLock:Ljava/lang/Object;

    .line 339
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/acra/ErrorReporter;->preallocFile:Ljava/io/File;

    .line 342
    new-instance v0, Lcom/facebook/acra/util/SimpleTraceLogger;

    sget v1, Lcom/facebook/acra/ErrorReporter;->MAX_TRACE_COUNT_LIMIT:I

    invoke-direct {v0, v1}, Lcom/facebook/acra/util/SimpleTraceLogger;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mActivityLogger:Lcom/facebook/acra/util/SimpleTraceLogger;

    .line 350
    iput-boolean v2, p0, Lcom/facebook/acra/ErrorReporter;->sendInMemoryReport:Z

    .line 352
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mAppStartDate:Landroid/text/format/Time;

    .line 354
    iput-boolean v2, p0, Lcom/facebook/acra/ErrorReporter;->usePreallocatedFile:Z

    .line 1231
    return-void
.end method

.method public static anyFilesPresentOfType(Ljava/io/File;[Ljava/lang/String;)Z
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1682
    if-nez p0, :cond_1

    .line 1699
    :cond_0
    :goto_0
    return v0

    .line 1686
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    .line 1687
    if-eqz v4, :cond_0

    array-length v2, v4

    if-eqz v2, :cond_0

    .line 1689
    if-eqz p1, :cond_2

    array-length v2, p1

    if-nez v2, :cond_3

    :cond_2
    move v0, v1

    .line 1690
    goto :goto_0

    .line 1692
    :cond_3
    array-length v5, v4

    move v3, v0

    :goto_1
    if-ge v3, v5, :cond_0

    aget-object v6, v4, v3

    .line 1693
    array-length v7, p1

    move v2, v0

    :goto_2
    if-ge v2, v7, :cond_5

    aget-object v8, p1, v2

    .line 1694
    invoke-virtual {v6, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    move v0, v1

    .line 1695
    goto :goto_0

    .line 1693
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1692
    :cond_5
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1
.end method

.method private checkAndSendAcraReports(Landroid/content/Context;)V
    .locals 11

    .prologue
    const/4 v0, 0x0

    .line 1175
    const-string v1, "acra-reports"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, ".stacktrace"

    aput-object v3, v2, v0

    const/4 v3, 0x1

    const-string v4, ".temp_stacktrace"

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/facebook/acra/ErrorReporter;->getCrashReportFilesList(Ljava/lang/String;[Ljava/lang/String;)[Ljava/io/File;

    move-result-object v2

    .line 1183
    iget-object v1, p0, Lcom/facebook/acra/ErrorReporter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/facebook/acra/CrashTimeDataCollector;->getProcessNameFromAms(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 1184
    array-length v4, v2

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_2

    aget-object v5, v2, v1

    .line 1185
    const/4 v6, 0x5

    if-lt v0, v6, :cond_0

    .line 1193
    invoke-static {v5}, Lcom/facebook/acra/ErrorReporter;->deleteFile(Ljava/io/File;)V

    .line 1184
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1197
    :cond_0
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    .line 1198
    sget-object v7, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Loading file "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    :try_start_0
    invoke-direct {p0, p1, v5}, Lcom/facebook/acra/ErrorReporter;->loadAcraCrashReport(Landroid/content/Context;Ljava/io/File;)Lcom/facebook/acra/CrashReportData;

    move-result-object v7

    .line 1202
    if-eqz v7, :cond_1

    .line 1203
    sget-object v8, Lcom/facebook/acra/ReportField;->ACRA_REPORT_TYPE:Lcom/facebook/acra/ReportField;

    sget-object v9, Lcom/facebook/acra/ErrorReporter$CrashReportType;->ACRA_CRASH_REPORT:Lcom/facebook/acra/ErrorReporter$CrashReportType;

    invoke-virtual {v9}, Lcom/facebook/acra/ErrorReporter$CrashReportType;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1204
    sget-object v8, Lcom/facebook/acra/ReportField;->ACRA_REPORT_FILENAME:Lcom/facebook/acra/ReportField;

    invoke-virtual {v7, v8, v6}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1207
    sget-object v8, Lcom/facebook/acra/ReportField;->UPLOADED_BY_PROCESS:Lcom/facebook/acra/ReportField;

    invoke-virtual {v7, v8, v3}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1208
    sget-object v8, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Sending file "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    invoke-direct {p0, v7}, Lcom/facebook/acra/ErrorReporter;->sendCrashReport(Lcom/facebook/acra/CrashReportData;)V

    .line 1210
    invoke-static {v5}, Lcom/facebook/acra/ErrorReporter;->deleteFile(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/facebook/acra/sender/ReportSenderException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1224
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1212
    :catch_0
    move-exception v0

    .line 1213
    sget-object v1, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Failed to send crash reports"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1214
    invoke-static {v5}, Lcom/facebook/acra/ErrorReporter;->deleteFile(Ljava/io/File;)V

    .line 1226
    :cond_2
    :goto_2
    return-void

    .line 1216
    :catch_1
    move-exception v0

    .line 1217
    sget-object v1, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to load crash report for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1218
    invoke-static {v5}, Lcom/facebook/acra/ErrorReporter;->deleteFile(Ljava/io/File;)V

    goto :goto_2

    .line 1220
    :catch_2
    move-exception v0

    .line 1221
    sget-object v1, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to send crash report for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private checkAndSendCrashAttachments(Landroid/content/Context;Lcom/facebook/acra/ErrorReporter$CrashReportType;)I
    .locals 12

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x0

    .line 1239
    sget-object v0, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "#checkAndSendCrashAttachments - start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p2, Lcom/facebook/acra/ErrorReporter$CrashReportType;->directory:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/.noupload"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1244
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1308
    :goto_0
    return v7

    .line 1248
    :cond_0
    iget-object v0, p2, Lcom/facebook/acra/ErrorReporter$CrashReportType;->directory:Ljava/lang/String;

    iget-object v1, p2, Lcom/facebook/acra/ErrorReporter$CrashReportType;->fileExtensions:[Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/acra/ErrorReporter;->getCrashReportFilesList(Ljava/lang/String;[Ljava/lang/String;)[Ljava/io/File;

    move-result-object v8

    .line 1250
    if-eqz v8, :cond_4

    array-length v0, v8

    if-lez v0, :cond_4

    .line 1253
    new-instance v4, Lcom/facebook/acra/CrashReportData;

    invoke-direct {v4}, Lcom/facebook/acra/CrashReportData;-><init>()V

    .line 1254
    sget-object v0, Lcom/facebook/acra/ReportField;->ACRA_REPORT_TYPE:Lcom/facebook/acra/ReportField;

    invoke-virtual {p2}, Lcom/facebook/acra/ErrorReporter$CrashReportType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1256
    :try_start_0
    const-string v1, "crash attachment"

    new-instance v2, Lcom/facebook/acra/ErrorReporter$CrashAttachmentException;

    const/4 v0, 0x0

    invoke-direct {v2, p0}, Lcom/facebook/acra/ErrorReporter$CrashAttachmentException;-><init>(Lcom/facebook/acra/ErrorReporter;)V

    sget-object v3, Lcom/facebook/acra/ACRA;->ALL_CRASH_REPORT_FIELDS:[Lcom/facebook/acra/ReportField;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/facebook/acra/CrashTimeDataCollector;->gatherCrashData(Lcom/facebook/acra/ErrorReporter;Ljava/lang/String;Ljava/lang/Throwable;[Lcom/facebook/acra/ReportField;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1271
    :goto_1
    array-length v2, v8

    move v1, v7

    :goto_2
    if-ge v7, v2, :cond_3

    aget-object v3, v8, v7

    .line 1272
    const/4 v0, 0x5

    if-lt v1, v0, :cond_1

    .line 1273
    invoke-static {v3}, Lcom/facebook/acra/ErrorReporter;->deleteFile(Ljava/io/File;)V

    move v0, v1

    .line 1271
    :goto_3
    add-int/lit8 v7, v7, 0x1

    move v1, v0

    goto :goto_2

    .line 1265
    :catch_0
    move-exception v0

    .line 1267
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "retrieve exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1268
    sget-object v1, Lcom/facebook/acra/ReportField;->REPORT_LOAD_THROW:Lcom/facebook/acra/ReportField;

    invoke-virtual {p0, v1, v0, v4, v9}, Lcom/facebook/acra/ErrorReporter;->put(Lcom/facebook/acra/ReportField;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V

    goto :goto_1

    .line 1276
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1278
    :try_start_1
    invoke-direct {p0, p1, v3, p2}, Lcom/facebook/acra/ErrorReporter;->loadCrashAttachment(Landroid/content/Context;Ljava/io/File;Lcom/facebook/acra/ErrorReporter$CrashReportType;)Lcom/facebook/acra/CrashReportData;

    move-result-object v6

    .line 1280
    if-nez v6, :cond_2

    move v0, v1

    .line 1283
    goto :goto_3

    .line 1285
    :cond_2
    iget-object v0, p2, Lcom/facebook/acra/ErrorReporter$CrashReportType;->attachmentField:Lcom/facebook/acra/ReportField;

    invoke-virtual {v6, v0}, Lcom/facebook/acra/CrashReportData;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1287
    sget-object v9, Lcom/facebook/acra/ReportField;->REPORT_ID:Lcom/facebook/acra/ReportField;

    const/4 v10, 0x0

    const/16 v11, 0x2e

    invoke-virtual {v5, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v11

    invoke-virtual {v5, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v4, v9, v10, v11}, Lcom/facebook/acra/CrashReportData;->put(Lcom/facebook/acra/ReportField;Ljava/lang/String;Ljava/io/Writer;)Ljava/lang/String;

    .line 1288
    iget-object v9, p2, Lcom/facebook/acra/ErrorReporter$CrashReportType;->attachmentField:Lcom/facebook/acra/ReportField;

    const/4 v10, 0x0

    invoke-virtual {v4, v9, v0, v10}, Lcom/facebook/acra/CrashReportData;->put(Lcom/facebook/acra/ReportField;Ljava/lang/String;Ljava/io/Writer;)Ljava/lang/String;

    .line 1289
    invoke-virtual {v4, v6}, Lcom/facebook/acra/CrashReportData;->merge(Lcom/facebook/acra/CrashReportData;)V

    .line 1290
    sget-object v0, Lcom/facebook/acra/ReportField;->EXCEPTION_CAUSE:Lcom/facebook/acra/ReportField;

    const-string v6, "crash attachment"

    const/4 v9, 0x0

    invoke-virtual {v4, v0, v6, v9}, Lcom/facebook/acra/CrashReportData;->put(Lcom/facebook/acra/ReportField;Ljava/lang/String;Ljava/io/Writer;)Ljava/lang/String;

    .line 1291
    invoke-direct {p0, v4}, Lcom/facebook/acra/ErrorReporter;->sendCrashReport(Lcom/facebook/acra/CrashReportData;)V

    .line 1292
    invoke-static {v3}, Lcom/facebook/acra/ErrorReporter;->deleteFile(Ljava/io/File;)V
    :try_end_1
    .catch Lcom/facebook/acra/sender/ReportSenderException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .line 1293
    add-int/lit8 v0, v1, 0x1

    goto :goto_3

    .line 1294
    :catch_1
    move-exception v0

    .line 1296
    sget-object v2, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to send crash attachment report "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1306
    :cond_3
    :goto_4
    sget-object v0, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "#checkAndSendCrashAttachments - finish, sent: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v1

    .line 1308
    goto/16 :goto_0

    .line 1298
    :catch_2
    move-exception v0

    .line 1299
    sget-object v2, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Failed on crash attachment file "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1300
    invoke-static {v3}, Lcom/facebook/acra/ErrorReporter;->deleteFile(Ljava/io/File;)V

    goto :goto_4

    :cond_4
    move v1, v7

    goto :goto_4
.end method

.method private createPreallocatedReportFile()V
    .locals 10

    .prologue
    const-wide/32 v8, 0x100000

    .line 655
    const/4 v1, 0x0

    .line 657
    const-wide/16 v4, 0x0

    .line 658
    :try_start_0
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->preallocFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 659
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->preallocFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 661
    :cond_0
    cmp-long v0, v4, v8

    if-lez v0, :cond_2

    .line 678
    :cond_1
    :goto_0
    return-void

    .line 665
    :cond_2
    const/16 v0, 0x2800

    new-array v3, v0, [B

    .line 666
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->preallocFile:Ljava/io/File;

    const/4 v6, 0x1

    invoke-direct {v2, v0, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v0, v4

    .line 667
    :goto_1
    cmp-long v4, v0, v8

    if-gez v4, :cond_3

    .line 668
    :try_start_1
    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 667
    const-wide/16 v4, 0x2800

    add-long/2addr v0, v4

    goto :goto_1

    .line 675
    :cond_3
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 678
    :catch_0
    move-exception v0

    goto :goto_0

    .line 670
    :catch_1
    move-exception v0

    .line 671
    :goto_2
    :try_start_3
    sget-object v2, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Failed to pre-allocate crash report file"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 674
    if-eqz v1, :cond_1

    .line 675
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 678
    :catch_2
    move-exception v0

    goto :goto_0

    .line 673
    :catchall_0
    move-exception v0

    .line 674
    :goto_3
    if-eqz v1, :cond_4

    .line 675
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 677
    :cond_4
    :goto_4
    throw v0

    :catch_3
    move-exception v1

    goto :goto_4

    .line 673
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_3

    .line 670
    :catch_4
    move-exception v0

    move-object v1, v2

    goto :goto_2
.end method

.method private static deleteFile(Ljava/io/File;)V
    .locals 3

    .prologue
    .line 1626
    if-nez p0, :cond_1

    .line 1633
    :cond_0
    :goto_0
    return-void

    .line 1629
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    .line 1630
    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1631
    sget-object v0, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not delete error report: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private dumpCustomDataEntry(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 556
    if-eqz p2, :cond_1

    const-string v1, "\n"

    const-string v2, "\\n"

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 557
    :goto_0
    if-eqz p3, :cond_0

    const-string v0, "\n"

    const-string v2, "\\n"

    invoke-virtual {p3, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 558
    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    return-void

    :cond_1
    move-object v1, v0

    .line 556
    goto :goto_0
.end method

.method private dumpCustomDataMap(Ljava/lang/StringBuilder;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 547
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

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

    .line 548
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 549
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 550
    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/acra/ErrorReporter;->dumpCustomDataEntry(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 552
    :cond_0
    return-void
.end method

.method private dumpLazyCustomDataMap(Ljava/lang/StringBuilder;Ljava/util/Map;Ljava/lang/Throwable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/acra/CustomReportDataSupplier;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 531
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 532
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 535
    :try_start_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/acra/CustomReportDataSupplier;

    invoke-interface {v0, p3}, Lcom/facebook/acra/CustomReportDataSupplier;->getCustomData(Ljava/lang/Throwable;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 540
    if-eqz v0, :cond_0

    .line 541
    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/acra/ErrorReporter;->dumpCustomDataEntry(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 536
    :catch_0
    move-exception v0

    .line 537
    sget-object v1, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Caught throwable while getting custom report data"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 544
    :cond_1
    return-void
.end method

.method private static fileForName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .prologue
    .line 1621
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 1622
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private formatTimestamp(J)Ljava/lang/String;
    .locals 3

    .prologue
    .line 643
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 644
    invoke-virtual {v0, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 645
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format3339(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private genCrashReportFileName(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 1096
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mAppVersionCode:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/facebook/acra/ErrorReporter;->mAppVersionCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static getInstance()Lcom/facebook/acra/ErrorReporter;
    .locals 1

    .prologue
    .line 567
    sget-object v0, Lcom/facebook/acra/ErrorReporter;->mInstanceSingleton:Lcom/facebook/acra/ErrorReporter;

    if-nez v0, :cond_0

    .line 568
    new-instance v0, Lcom/facebook/acra/ErrorReporter;

    invoke-direct {v0}, Lcom/facebook/acra/ErrorReporter;-><init>()V

    sput-object v0, Lcom/facebook/acra/ErrorReporter;->mInstanceSingleton:Lcom/facebook/acra/ErrorReporter;

    .line 570
    :cond_0
    sget-object v0, Lcom/facebook/acra/ErrorReporter;->mInstanceSingleton:Lcom/facebook/acra/ErrorReporter;

    return-object v0
.end method

.method private getReportFieldsForException(Ljava/lang/Throwable;)[Lcom/facebook/acra/ReportField;
    .locals 1

    .prologue
    .line 1787
    instance-of v0, p1, Lcom/facebook/acra/NonCrashException;

    if-eqz v0, :cond_0

    .line 1788
    sget-object v0, Lcom/facebook/acra/ACRA;->MINIMAL_REPORT_FIELDS:[Lcom/facebook/acra/ReportField;

    .line 1793
    :goto_0
    return-object v0

    .line 1789
    :cond_0
    instance-of v0, p1, Ljava/lang/OutOfMemoryError;

    if-eqz v0, :cond_1

    .line 1790
    sget-object v0, Lcom/facebook/acra/ACRA;->MINIMAL_REPORT_FIELDS:[Lcom/facebook/acra/ReportField;

    goto :goto_0

    .line 1793
    :cond_1
    sget-object v0, Lcom/facebook/acra/ACRA;->ALL_CRASH_REPORT_FIELDS:[Lcom/facebook/acra/ReportField;

    goto :goto_0
.end method

.method private handleExceptionInternal(Ljava/lang/Throwable;Ljava/util/Map;Ljava/lang/String;[Lcom/facebook/acra/ReportField;Z)Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;
    .locals 10
    .param p3    # Ljava/lang/String;
        .annotation build Lcom/facebook/acra/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "[",
            "Lcom/facebook/acra/ReportField;",
            "Z)",
            "Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;"
        }
    .end annotation

    .prologue
    .line 899
    invoke-virtual {p0, p1}, Lcom/facebook/acra/ErrorReporter;->getMostSignificantCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    .line 900
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 903
    invoke-direct {p0, v0}, Lcom/facebook/acra/ErrorReporter;->shouldContinueProcessingException(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 904
    const/4 v0, 0x0

    .line 1024
    :goto_0
    return-object v0

    .line 909
    :cond_0
    new-instance v4, Lcom/facebook/acra/CrashReportData;

    invoke-direct {v4}, Lcom/facebook/acra/CrashReportData;-><init>()V

    .line 913
    instance-of v0, p1, Lcom/facebook/acra/NonCrashException;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lcom/facebook/acra/NonCrashException;

    invoke-interface {v0}, Lcom/facebook/acra/NonCrashException;->getExceptionFriendlyName()Ljava/lang/String;

    move-result-object v0

    .line 915
    :goto_1
    sget-object v1, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Handling exception for "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2, p1, p3}, Lcom/facebook/acra/ErrorReporter;->writeToLogBridge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 924
    sget-object v1, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Generating report file for "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    const-string v0, ".temp_stacktrace"

    invoke-direct {p0, v3, v0}, Lcom/facebook/acra/ErrorReporter;->genCrashReportFileName(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 926
    iget-object v1, p0, Lcom/facebook/acra/ErrorReporter;->mContext:Landroid/content/Context;

    const-string v2, "acra-reports"

    invoke-static {v1, v2, v0}, Lcom/facebook/acra/ErrorReporter;->fileForName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    .line 927
    const-string v0, ".stacktrace"

    invoke-direct {p0, v3, v0}, Lcom/facebook/acra/ErrorReporter;->genCrashReportFileName(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 928
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mContext:Landroid/content/Context;

    const-string v1, "acra-reports"

    invoke-static {v0, v1, v6}, Lcom/facebook/acra/ErrorReporter;->fileForName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    .line 930
    const/4 v1, 0x0

    .line 931
    const/4 v5, 0x0

    .line 937
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/acra/ErrorReporter;->usePreallocatedFile:Z

    if-eqz v0, :cond_1

    .line 938
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->preallocFile:Ljava/io/File;

    invoke-virtual {v0, v8}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 949
    :cond_1
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v0, "rw"

    invoke-direct {v2, v8, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 951
    :try_start_1
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-static {v0}, Lcom/facebook/acra/CrashReportData;->getWriter(Ljava/io/OutputStream;)Ljava/io/Writer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    move-result-object v5

    move-object v7, v2

    .line 959
    :goto_2
    :try_start_2
    sget-object v0, Lcom/facebook/acra/ReportField;->ACRA_REPORT_FILENAME:Lcom/facebook/acra/ReportField;

    invoke-virtual {p0, v0, v6, v4, v5}, Lcom/facebook/acra/ErrorReporter;->put(Lcom/facebook/acra/ReportField;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V

    .line 960
    sget-object v0, Lcom/facebook/acra/ReportField;->EXCEPTION_CAUSE:Lcom/facebook/acra/ReportField;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v4, v5}, Lcom/facebook/acra/ErrorReporter;->put(Lcom/facebook/acra/ReportField;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V

    .line 966
    if-nez p3, :cond_7

    .line 967
    invoke-direct {p0, p1}, Lcom/facebook/acra/ErrorReporter;->throwableToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    :goto_3
    move-object v0, p0

    move-object v2, p1

    move-object v3, p4

    move-object v6, p2

    .line 969
    invoke-static/range {v0 .. v6}, Lcom/facebook/acra/CrashTimeDataCollector;->gatherCrashData(Lcom/facebook/acra/ErrorReporter;Ljava/lang/String;Ljava/lang/Throwable;[Lcom/facebook/acra/ReportField;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;Ljava/util/Map;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 994
    if-eqz v7, :cond_2

    .line 995
    :try_start_3
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 996
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    .line 998
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V

    .line 999
    invoke-virtual {v8, v9}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 1007
    :cond_2
    :goto_4
    if-eqz p5, :cond_6

    .line 1008
    iget-boolean v0, p0, Lcom/facebook/acra/ErrorReporter;->sendInMemoryReport:Z

    if-eqz v0, :cond_5

    new-instance v0, Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;

    invoke-direct {v0, p0, v4}, Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;-><init>(Lcom/facebook/acra/ErrorReporter;Lcom/facebook/acra/CrashReportData;)V

    .line 1011
    :goto_5
    sget-object v1, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v2, "About to start ReportSenderWorker from #handleException"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    invoke-virtual {v0}, Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;->start()V

    goto/16 :goto_0

    .line 913
    :cond_3
    const-string v0, "crash"

    goto/16 :goto_1

    .line 952
    :catch_0
    move-exception v0

    .line 953
    :goto_6
    sget-object v2, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v7, "An error occurred while creating the report file ..."

    invoke-static {v2, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 955
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/acra/ErrorReporter;->sendInMemoryReport:Z

    move-object v7, v1

    goto :goto_2

    .line 1001
    :catch_1
    move-exception v0

    .line 1002
    sget-object v1, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v2, "An error occurred while deleting closing the report file ..."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 971
    :catch_2
    move-exception v0

    .line 978
    :try_start_4
    sget-object v1, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v2, "An error occurred while gathering crash data ..."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 979
    sget-object v1, Lcom/facebook/acra/ReportField;->ACRA_INTERNAL:Lcom/facebook/acra/ReportField;

    invoke-direct {p0, v0}, Lcom/facebook/acra/ErrorReporter;->throwableToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2, v4, v5}, Lcom/facebook/acra/ErrorReporter;->put(Lcom/facebook/acra/ReportField;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 988
    :try_start_5
    sget-object v1, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v2, "An error occurred while gathering crash data ..."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 994
    :goto_7
    if-eqz v7, :cond_2

    .line 995
    :try_start_6
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 996
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    .line 998
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V

    .line 999
    invoke-virtual {v8, v9}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_4

    .line 1001
    :catch_3
    move-exception v0

    .line 1002
    sget-object v1, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v2, "An error occurred while deleting closing the report file ..."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 980
    :catch_4
    move-exception v1

    .line 985
    :try_start_7
    sget-object v2, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v3, "An error occurred while gathering internal crash data ..."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 986
    sget-object v1, Lcom/facebook/acra/ReportField;->ACRA_INTERNAL:Lcom/facebook/acra/ReportField;

    const-string v2, "ACRA_INTERNAL=java.lang.Exception: An exception occurred while trying to collect data about an ACRA internal error\n\tat com.facebook.acra.ErrorReporter.handleException(ErrorReporter.java:810)\n\tat com.facebook.acra.ErrorReporter.handleException(ErrorReporter.java:866)\n\tat com.facebook.acra.ErrorReporter.uncaughtException(ErrorReporter.java:666)\n\tat java.lang.ThreadGroup.uncaughtException(ThreadGroup.java:693)\n\tat java.lang.ThreadGroup.uncaughtException(ThreadGroup.java:690)\n"

    invoke-virtual {p0, v1, v2, v4, v5}, Lcom/facebook/acra/ErrorReporter;->put(Lcom/facebook/acra/ReportField;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 988
    :try_start_8
    sget-object v1, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v2, "An error occurred while gathering crash data ..."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_7

    .line 991
    :catchall_0
    move-exception v0

    .line 994
    if-eqz v7, :cond_4

    .line 995
    :try_start_9
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 996
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    .line 998
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V

    .line 999
    invoke-virtual {v8, v9}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    .line 1004
    :cond_4
    :goto_8
    throw v0

    .line 988
    :catchall_1
    move-exception v1

    :try_start_a
    sget-object v2, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v3, "An error occurred while gathering crash data ..."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 1001
    :catch_5
    move-exception v1

    .line 1002
    sget-object v2, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v3, "An error occurred while deleting closing the report file ..."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 1008
    :cond_5
    new-instance v0, Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/facebook/acra/ErrorReporter$CrashReportType;

    const/4 v2, 0x0

    sget-object v3, Lcom/facebook/acra/ErrorReporter$CrashReportType;->ACRA_CRASH_REPORT:Lcom/facebook/acra/ErrorReporter$CrashReportType;

    aput-object v3, v1, v2

    invoke-direct {v0, p0, v1}, Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;-><init>(Lcom/facebook/acra/ErrorReporter;[Lcom/facebook/acra/ErrorReporter$CrashReportType;)V

    goto/16 :goto_5

    .line 1021
    :cond_6
    sget-object v0, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "ACRA caught an OutOfMemoryError. Report upload deferred until next ACRA launch."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 952
    :catch_6
    move-exception v0

    move-object v1, v2

    goto/16 :goto_6

    :cond_7
    move-object v1, p3

    goto/16 :goto_3
.end method

.method private loadAcraCrashReport(Landroid/content/Context;Ljava/io/File;)Lcom/facebook/acra/CrashReportData;
    .locals 6

    .prologue
    .line 1341
    sget-object v3, Lcom/facebook/acra/ErrorReporter$CrashReportType;->ACRA_CRASH_REPORT:Lcom/facebook/acra/ErrorReporter$CrashReportType;

    iget-wide v4, p0, Lcom/facebook/acra/ErrorReporter;->mMaxReportSize:J

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/acra/ErrorReporter;->loadCrashReport(Landroid/content/Context;Ljava/io/File;Lcom/facebook/acra/ErrorReporter$CrashReportType;J)Lcom/facebook/acra/CrashReportData;

    move-result-object v0

    return-object v0
.end method

.method private loadAttachment(Ljava/io/InputStream;I)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1589
    .line 1591
    new-array v3, p2, [B

    move v1, v0

    .line 1592
    :goto_0
    sub-int v2, p2, v1

    if-lez v2, :cond_0

    .line 1593
    sub-int v0, p2, v1

    invoke-virtual {p1, v3, v1, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 1594
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 1597
    add-int/2addr v1, v0

    goto :goto_0

    .line 1600
    :cond_0
    if-nez v0, :cond_1

    .line 1601
    const-string v0, ""

    .line 1614
    :goto_1
    return-object v0

    .line 1605
    :cond_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1606
    const/4 v2, 0x0

    .line 1608
    :try_start_0
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1609
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v1, v3, v2, p2}, Ljava/util/zip/GZIPOutputStream;->write([BII)V

    .line 1610
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 1611
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 1614
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V

    goto :goto_1

    .line 1613
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_2
    if-eqz v1, :cond_2

    .line 1614
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V

    :cond_2
    throw v0

    .line 1613
    :catchall_1
    move-exception v0

    goto :goto_2
.end method

.method private loadCrashAttachment(Landroid/content/Context;Ljava/io/File;Lcom/facebook/acra/ErrorReporter$CrashReportType;)Lcom/facebook/acra/CrashReportData;
    .locals 6

    .prologue
    .line 1353
    iget-wide v4, p3, Lcom/facebook/acra/ErrorReporter$CrashReportType;->defaultMaxSize:J

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/acra/ErrorReporter;->loadCrashReport(Landroid/content/Context;Ljava/io/File;Lcom/facebook/acra/ErrorReporter$CrashReportType;J)Lcom/facebook/acra/CrashReportData;

    move-result-object v0

    return-object v0
.end method

.method private loadCrashReport(Landroid/content/Context;Ljava/io/File;Lcom/facebook/acra/ErrorReporter$CrashReportType;J)Lcom/facebook/acra/CrashReportData;
    .locals 20

    .prologue
    .line 1363
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    .line 1364
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1365
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    .line 1369
    const-string v2, ".temp_stacktrace"

    invoke-virtual {v7, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1370
    const-wide/16 v2, 0x0

    cmp-long v2, v8, v2

    if-lez v2, :cond_0

    sub-long v2, v4, v8

    const-wide/32 v10, 0x927c0

    cmp-long v2, v2, v10

    if-gez v2, :cond_0

    .line 1371
    sget-object v2, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "temp file "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is too recent; skipping"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1372
    const/4 v2, 0x0

    .line 1496
    :goto_0
    return-object v2

    .line 1373
    :cond_0
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1374
    sget-object v2, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "temp file "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " deleted. skipping"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1375
    const/4 v2, 0x0

    goto :goto_0

    .line 1379
    :cond_1
    new-instance v2, Lcom/facebook/acra/CrashReportData;

    invoke-direct {v2}, Lcom/facebook/acra/CrashReportData;-><init>()V

    .line 1380
    sget-object v3, Lcom/facebook/acra/ReportField;->TIME_OF_CRASH:Lcom/facebook/acra/ReportField;

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1381
    sub-long/2addr v4, v8

    const-wide/32 v8, 0x240c8400

    cmp-long v3, v4, v8

    if-lez v3, :cond_3

    .line 1382
    sget-object v3, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "crash report "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " was too old; deleted"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1383
    invoke-static/range {p2 .. p2}, Lcom/facebook/acra/ErrorReporter;->deleteFile(Ljava/io/File;)V

    .line 1384
    # getter for: Lcom/facebook/acra/ErrorReporter$CrashReportType;->attachmentField:Lcom/facebook/acra/ReportField;
    invoke-static/range {p3 .. p3}, Lcom/facebook/acra/ErrorReporter$CrashReportType;->access$400(Lcom/facebook/acra/ErrorReporter$CrashReportType;)Lcom/facebook/acra/ReportField;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1385
    # getter for: Lcom/facebook/acra/ErrorReporter$CrashReportType;->attachmentField:Lcom/facebook/acra/ReportField;
    invoke-static/range {p3 .. p3}, Lcom/facebook/acra/ErrorReporter$CrashReportType;->access$400(Lcom/facebook/acra/ErrorReporter$CrashReportType;)Lcom/facebook/acra/ReportField;

    move-result-object v3

    const-string v4, "attachment too old"

    invoke-virtual {v2, v3, v4}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1387
    :cond_2
    sget-object v3, Lcom/facebook/acra/ReportField;->MINIDUMP_EXCLUDE_REASON:Lcom/facebook/acra/ReportField;

    sget-object v4, Lcom/facebook/acra/MinidumpExcludeReason;->DUMP_TOO_OLD:Lcom/facebook/acra/MinidumpExcludeReason;

    invoke-virtual {v4}, Lcom/facebook/acra/MinidumpExcludeReason;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1392
    :cond_3
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->length()J

    move-result-wide v8

    .line 1393
    cmp-long v3, v8, p4

    if-lez v3, :cond_5

    .line 1394
    sget-object v3, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-byte crash report "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " exceeded max size of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bytes; deleted"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1398
    invoke-static/range {p2 .. p2}, Lcom/facebook/acra/ErrorReporter;->deleteFile(Ljava/io/File;)V

    .line 1399
    # getter for: Lcom/facebook/acra/ErrorReporter$CrashReportType;->attachmentField:Lcom/facebook/acra/ReportField;
    invoke-static/range {p3 .. p3}, Lcom/facebook/acra/ErrorReporter$CrashReportType;->access$400(Lcom/facebook/acra/ErrorReporter$CrashReportType;)Lcom/facebook/acra/ReportField;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 1400
    # getter for: Lcom/facebook/acra/ErrorReporter$CrashReportType;->attachmentField:Lcom/facebook/acra/ReportField;
    invoke-static/range {p3 .. p3}, Lcom/facebook/acra/ErrorReporter$CrashReportType;->access$400(Lcom/facebook/acra/ErrorReporter$CrashReportType;)Lcom/facebook/acra/ReportField;

    move-result-object v3

    const-string v4, "attachment too big"

    invoke-virtual {v2, v3, v4}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1402
    :cond_4
    sget-object v3, Lcom/facebook/acra/ReportField;->MINIDUMP_EXCLUDE_REASON:Lcom/facebook/acra/ReportField;

    sget-object v4, Lcom/facebook/acra/MinidumpExcludeReason;->DUMP_TOO_BIG:Lcom/facebook/acra/MinidumpExcludeReason;

    invoke-virtual {v4}, Lcom/facebook/acra/MinidumpExcludeReason;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1405
    sget-object v3, Lcom/facebook/acra/ReportField;->ATTACHMENT_ORIGINAL_SIZE:Lcom/facebook/acra/ReportField;

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1410
    :cond_5
    new-instance v10, Ljava/io/FileInputStream;

    move-object/from16 v0, p2

    invoke-direct {v10, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1411
    const/4 v6, 0x0

    .line 1414
    :try_start_0
    sget-object v3, Lcom/facebook/acra/ErrorReporter$CrashReportType;->ACRA_CRASH_REPORT:Lcom/facebook/acra/ErrorReporter$CrashReportType;

    move-object/from16 v0, p3

    if-ne v0, v3, :cond_6

    .line 1415
    invoke-virtual {v2, v10}, Lcom/facebook/acra/CrashReportData;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1488
    :goto_1
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 1494
    :goto_2
    sget-object v3, Lcom/facebook/acra/ReportField;->ACRA_REPORT_FILENAME:Lcom/facebook/acra/ReportField;

    invoke-virtual {v2, v3, v7}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1495
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/facebook/acra/ErrorReporter;->backfillCrashReportData(Lcom/facebook/acra/CrashReportData;)V

    goto/16 :goto_0

    .line 1418
    :cond_6
    long-to-int v3, v8

    :try_start_1
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v3}, Lcom/facebook/acra/ErrorReporter;->loadAttachment(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v3

    .line 1419
    sget-object v4, Lcom/facebook/acra/ErrorReporter$CrashReportType;->NATIVE_CRASH_REPORT:Lcom/facebook/acra/ErrorReporter$CrashReportType;

    move-object/from16 v0, p3

    if-ne v0, v4, :cond_8

    .line 1420
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/acra/ErrorReporter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v11

    .line 1423
    new-instance v12, Ljava/io/File;

    const-string v4, "last_url_opened"

    invoke-direct {v12, v11, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1424
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_a

    .line 1425
    sget-object v4, Lcom/facebook/acra/ReportField;->LAST_URL_VISITED:Lcom/facebook/acra/ReportField;

    const-string v5, "NO_FILE"

    invoke-virtual {v2, v4, v5}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1445
    :goto_3
    new-instance v12, Ljava/io/File;

    const-string v4, "last_activity_opened"

    invoke-direct {v12, v11, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1446
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_e

    .line 1447
    sget-object v4, Lcom/facebook/acra/ReportField;->LAST_ACTIVITY_LOGGED:Lcom/facebook/acra/ReportField;

    const-string v5, "NO_FILE"

    invoke-virtual {v2, v4, v5}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1463
    :goto_4
    new-instance v4, Ljava/io/File;

    const-string v5, "iab_open_times"

    invoke-direct {v4, v11, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1464
    invoke-static {v4}, Lcom/facebook/acra/ErrorReporter;->readFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    .line 1465
    const-string v11, "NO_FILE"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_12

    .line 1467
    sget-object v5, Lcom/facebook/acra/ReportField;->IAB_OPEN_TIMES:Lcom/facebook/acra/ReportField;

    const-string v11, "0"

    invoke-virtual {v2, v5, v11}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1471
    :cond_7
    :goto_5
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1472
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 1475
    :cond_8
    # getter for: Lcom/facebook/acra/ErrorReporter$CrashReportType;->attachmentField:Lcom/facebook/acra/ReportField;
    invoke-static/range {p3 .. p3}, Lcom/facebook/acra/ErrorReporter$CrashReportType;->access$400(Lcom/facebook/acra/ErrorReporter$CrashReportType;)Lcom/facebook/acra/ReportField;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1476
    sget-object v3, Lcom/facebook/acra/ReportField;->ATTACHMENT_ORIGINAL_SIZE:Lcom/facebook/acra/ReportField;

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 1479
    :catch_0
    move-exception v3

    .line 1480
    :try_start_2
    sget-object v4, Lcom/facebook/acra/ReportField;->REPORT_LOAD_THROW:Lcom/facebook/acra/ReportField;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "throwable: "

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1481
    sget-object v4, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "Could not load crash report:"

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1482
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1483
    const/4 v3, 0x1

    .line 1484
    :try_start_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 1485
    sget-object v4, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Crash report:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " deleted"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_2

    .line 1487
    :catchall_0
    move-exception v2

    :goto_6
    if-nez v3, :cond_9

    .line 1488
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    :cond_9
    throw v2

    .line 1427
    :cond_a
    :try_start_4
    new-instance v13, Ljava/io/FileReader;

    invoke-direct {v13, v12}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/4 v5, 0x0

    .line 1428
    :try_start_5
    new-instance v14, Ljava/io/BufferedReader;

    const/16 v4, 0x400

    invoke-direct {v14, v13, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    const/4 v4, 0x0

    .line 1429
    :try_start_6
    invoke-virtual {v14}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v15

    .line 1430
    if-nez v15, :cond_b

    .line 1431
    sget-object v15, Lcom/facebook/acra/ReportField;->LAST_URL_VISITED:Lcom/facebook/acra/ReportField;

    const-string v16, "EMPTY_URL"

    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1439
    :goto_7
    invoke-virtual {v12}, Ljava/io/File;->delete()Z
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_9

    .line 1440
    :try_start_7
    invoke-virtual {v14}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 1441
    :try_start_8
    invoke-virtual {v13}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/16 :goto_3

    .line 1487
    :catchall_1
    move-exception v2

    move v3, v6

    goto :goto_6

    .line 1433
    :cond_b
    :try_start_9
    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    .line 1434
    sget-object v16, Lcom/facebook/acra/ReportField;->LAST_URL_VISITED:Lcom/facebook/acra/ReportField;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v15}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1435
    sget-object v15, Lcom/facebook/acra/ReportField;->LAST_URL_VISITED_TIME:Lcom/facebook/acra/ReportField;

    invoke-virtual {v12}, Ljava/io/File;->lastModified()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    goto :goto_7

    .line 1428
    :catch_1
    move-exception v3

    :try_start_a
    throw v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 1440
    :catchall_2
    move-exception v4

    move-object/from16 v18, v4

    move-object v4, v3

    move-object/from16 v3, v18

    :goto_8
    if-eqz v4, :cond_c

    :try_start_b
    invoke-virtual {v14}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :goto_9
    :try_start_c
    throw v3
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 1427
    :catch_2
    move-exception v3

    :try_start_d
    throw v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 1441
    :catchall_3
    move-exception v4

    move-object/from16 v18, v4

    move-object v4, v3

    move-object/from16 v3, v18

    :goto_a
    if-eqz v4, :cond_d

    :try_start_e
    invoke-virtual {v13}, Ljava/io/FileReader;->close()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    :goto_b
    :try_start_f
    throw v3
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 1440
    :catch_3
    move-exception v8

    :try_start_10
    invoke-static {v4, v8}, Lcom/facebook/androidcompat/AndroidCompat;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_9

    .line 1441
    :catchall_4
    move-exception v3

    move-object v4, v5

    goto :goto_a

    .line 1440
    :cond_c
    invoke-virtual {v14}, Ljava/io/BufferedReader;->close()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_2
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    goto :goto_9

    .line 1441
    :catch_4
    move-exception v5

    :try_start_11
    invoke-static {v4, v5}, Lcom/facebook/androidcompat/AndroidCompat;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_b

    :cond_d
    invoke-virtual {v13}, Ljava/io/FileReader;->close()V

    goto :goto_b

    .line 1449
    :cond_e
    new-instance v13, Ljava/io/FileReader;

    invoke-direct {v13, v12}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_0
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    const/4 v5, 0x0

    .line 1450
    :try_start_12
    new-instance v14, Ljava/io/BufferedReader;

    const/16 v4, 0x400

    invoke-direct {v14, v13, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_6
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    const/4 v4, 0x0

    .line 1451
    :try_start_13
    invoke-virtual {v14}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v15

    .line 1452
    if-eqz v15, :cond_f

    .line 1453
    sget-object v16, Lcom/facebook/acra/ReportField;->LAST_ACTIVITY_LOGGED:Lcom/facebook/acra/ReportField;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v15}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1454
    sget-object v15, Lcom/facebook/acra/ReportField;->LAST_ACTIVITY_LOGGED_TIME:Lcom/facebook/acra/ReportField;

    invoke-virtual {v12}, Ljava/io/File;->lastModified()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1458
    :cond_f
    invoke-virtual {v12}, Ljava/io/File;->delete()Z
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_5
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    .line 1459
    :try_start_14
    invoke-virtual {v14}, Ljava/io/BufferedReader;->close()V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_6
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    .line 1460
    :try_start_15
    invoke-virtual {v13}, Ljava/io/FileReader;->close()V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_0
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    goto/16 :goto_4

    .line 1450
    :catch_5
    move-exception v3

    :try_start_16
    throw v3
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_5

    .line 1459
    :catchall_5
    move-exception v4

    move-object/from16 v18, v4

    move-object v4, v3

    move-object/from16 v3, v18

    :goto_c
    if-eqz v4, :cond_10

    :try_start_17
    invoke-virtual {v14}, Ljava/io/BufferedReader;->close()V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_7
    .catchall {:try_start_17 .. :try_end_17} :catchall_7

    :goto_d
    :try_start_18
    throw v3
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_6
    .catchall {:try_start_18 .. :try_end_18} :catchall_7

    .line 1449
    :catch_6
    move-exception v3

    :try_start_19
    throw v3
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_6

    .line 1460
    :catchall_6
    move-exception v4

    move-object/from16 v18, v4

    move-object v4, v3

    move-object/from16 v3, v18

    :goto_e
    if-eqz v4, :cond_11

    :try_start_1a
    invoke-virtual {v13}, Ljava/io/FileReader;->close()V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_8
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1

    :goto_f
    :try_start_1b
    throw v3
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_0
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1

    .line 1459
    :catch_7
    move-exception v8

    :try_start_1c
    invoke-static {v4, v8}, Lcom/facebook/androidcompat/AndroidCompat;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_d

    .line 1460
    :catchall_7
    move-exception v3

    move-object v4, v5

    goto :goto_e

    .line 1459
    :cond_10
    invoke-virtual {v14}, Ljava/io/BufferedReader;->close()V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_6
    .catchall {:try_start_1c .. :try_end_1c} :catchall_7

    goto :goto_d

    .line 1460
    :catch_8
    move-exception v5

    :try_start_1d
    invoke-static {v4, v5}, Lcom/facebook/androidcompat/AndroidCompat;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_f

    :cond_11
    invoke-virtual {v13}, Ljava/io/FileReader;->close()V

    goto :goto_f

    .line 1468
    :cond_12
    if-eqz v5, :cond_7

    .line 1469
    sget-object v11, Lcom/facebook/acra/ReportField;->IAB_OPEN_TIMES:Lcom/facebook/acra/ReportField;

    invoke-virtual {v2, v11, v5}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_0
    .catchall {:try_start_1d .. :try_end_1d} :catchall_1

    goto/16 :goto_5

    .line 1459
    :catchall_8
    move-exception v3

    goto :goto_c

    .line 1440
    :catchall_9
    move-exception v3

    goto/16 :goto_8
.end method

.method private static readFile(Ljava/io/File;)Ljava/lang/String;
    .locals 6
    .annotation build Lcom/facebook/acra/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1500
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1501
    const-string v0, "NO_FILE"

    .line 1514
    :goto_0
    return-object v0

    .line 1503
    :cond_0
    :try_start_0
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1504
    :try_start_1
    new-instance v4, Ljava/io/BufferedReader;

    const/16 v0, 0x400

    invoke-direct {v4, v3, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1505
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-result-object v0

    .line 1506
    if-eqz v0, :cond_1

    .line 1509
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1510
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_1
    move-object v0, v1

    .line 1514
    goto :goto_0

    .line 1509
    :cond_1
    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1510
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_1

    .line 1504
    :catch_1
    move-exception v2

    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1509
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v2, :cond_2

    :try_start_8
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :goto_3
    :try_start_9
    throw v0
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 1503
    :catch_2
    move-exception v0

    :try_start_a
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 1510
    :catchall_1
    move-exception v2

    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    :goto_4
    if-eqz v2, :cond_3

    :try_start_b
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    :goto_5
    :try_start_c
    throw v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    .line 1509
    :catch_3
    move-exception v4

    :try_start_d
    invoke-static {v2, v4}, Lcom/facebook/androidcompat/AndroidCompat;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 1510
    :catchall_2
    move-exception v0

    move-object v2, v1

    goto :goto_4

    .line 1509
    :cond_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    goto :goto_3

    .line 1510
    :catch_4
    move-exception v3

    :try_start_e
    invoke-static {v2, v3}, Lcom/facebook/androidcompat/AndroidCompat;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_3
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0

    goto :goto_5

    .line 1509
    :catchall_3
    move-exception v0

    move-object v2, v1

    goto :goto_2
.end method

.method private sendCrashReport(Lcom/facebook/acra/CrashReportData;)V
    .locals 6

    .prologue
    .line 1077
    const/4 v0, 0x0

    .line 1078
    iget-object v1, p0, Lcom/facebook/acra/ErrorReporter;->mReportSenders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/acra/sender/HttpPostSender;

    .line 1080
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/facebook/acra/sender/HttpPostSender;->send(Lcom/facebook/acra/CrashReportData;)V
    :try_end_0
    .catch Lcom/facebook/acra/sender/ReportSenderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1083
    const/4 v0, 0x1

    move v1, v0

    .line 1091
    goto :goto_0

    .line 1084
    :catch_0
    move-exception v3

    .line 1085
    if-nez v1, :cond_0

    .line 1086
    throw v3

    .line 1088
    :cond_0
    sget-object v3, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ReportSender of class "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " failed but other senders completed their task. ACRA will not send this report again."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1093
    :cond_1
    return-void
.end method

.method private shouldContinueProcessingException(Ljava/lang/Throwable;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1828
    iget-object v1, p0, Lcom/facebook/acra/ErrorReporter;->mShouldContinueProcessingExceptionLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1829
    :try_start_0
    iget-boolean v2, p0, Lcom/facebook/acra/ErrorReporter;->mCurrentlyProcessingOOM:Z

    if-eqz v2, :cond_0

    .line 1831
    const/4 v0, 0x0

    monitor-exit v1

    .line 1838
    :goto_0
    return v0

    .line 1834
    :cond_0
    instance-of v2, p1, Ljava/lang/OutOfMemoryError;

    if-eqz v2, :cond_1

    .line 1836
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/facebook/acra/ErrorReporter;->mCurrentlyProcessingOOM:Z

    .line 1838
    :cond_1
    monitor-exit v1

    goto :goto_0

    .line 1839
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private throwableToString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 786
    if-nez p1, :cond_0

    .line 787
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Report requested by developer"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 790
    :cond_0
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 791
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 792
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 793
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 795
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private writeToLogBridge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3
    .param p4    # Ljava/lang/String;
        .annotation build Lcom/facebook/acra/Nullable;
        .end annotation
    .end param

    .prologue
    .line 760
    invoke-virtual {p0}, Lcom/facebook/acra/ErrorReporter;->getLogBridge()Lcom/facebook/acra/LogBridge;

    move-result-object v0

    .line 761
    if-eqz v0, :cond_1

    .line 764
    if-eqz p4, :cond_0

    .line 765
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, p1, v1, v2}, Lcom/facebook/acra/LogBridge;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 778
    :goto_0
    return-void

    .line 767
    :cond_0
    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/acra/LogBridge;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 772
    :cond_1
    if-eqz p4, :cond_2

    .line 773
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 775
    :cond_2
    invoke-static {p1, p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public addReportSender(Lcom/facebook/acra/sender/HttpPostSender;)V
    .locals 1

    .prologue
    .line 1729
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mReportSenders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1730
    return-void
.end method

.method public varargs anyReportsOfType([Lcom/facebook/acra/ErrorReporter$CrashReportType;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 1659
    iget-object v1, p0, Lcom/facebook/acra/ErrorReporter;->mContext:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 1660
    sget-object v1, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Trying to get ACRA reports but ACRA is not initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1670
    :cond_0
    :goto_0
    return v0

    .line 1664
    :cond_1
    array-length v2, p1

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, p1, v1

    .line 1665
    iget-object v4, p0, Lcom/facebook/acra/ErrorReporter;->mContext:Landroid/content/Context;

    iget-object v5, v3, Lcom/facebook/acra/ErrorReporter$CrashReportType;->directory:Ljava/lang/String;

    invoke-virtual {v4, v5, v0}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v4

    .line 1666
    if-eqz v4, :cond_2

    iget-object v3, v3, Lcom/facebook/acra/ErrorReporter$CrashReportType;->fileExtensions:[Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/facebook/acra/ErrorReporter;->anyFilesPresentOfType(Ljava/io/File;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1667
    const/4 v0, 0x1

    goto :goto_0

    .line 1664
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method backfillCrashReportData(Lcom/facebook/acra/CrashReportData;)V
    .locals 5

    .prologue
    .line 1526
    sget-object v0, Lcom/facebook/acra/ReportField;->ACRA_REPORT_FILENAME:Lcom/facebook/acra/ReportField;

    invoke-virtual {p1, v0}, Lcom/facebook/acra/CrashReportData;->getProperty(Lcom/facebook/acra/ReportField;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/acra/ErrorReporter;->parseVersionCodeFromFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1528
    iget-object v1, p0, Lcom/facebook/acra/ErrorReporter;->mAppVersionCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    move v2, v0

    .line 1530
    :goto_0
    sget-object v0, Lcom/facebook/acra/ReportField;->REPORT_ID:Lcom/facebook/acra/ReportField;

    invoke-virtual {p1, v0}, Lcom/facebook/acra/CrashReportData;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1531
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    .line 1532
    :cond_0
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mConstantFields:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1533
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/acra/ReportField;

    sget-object v4, Lcom/facebook/acra/ReportField;->APP_VERSION_NAME:Lcom/facebook/acra/ReportField;

    invoke-virtual {v1, v4}, Lcom/facebook/acra/ReportField;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1535
    if-nez v2, :cond_1

    .line 1538
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Enum;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1528
    :cond_2
    const/4 v0, 0x0

    move v2, v0

    goto :goto_0

    .line 1542
    :cond_3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/facebook/acra/CrashReportData;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1543
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Enum;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1550
    :cond_4
    invoke-virtual {p0}, Lcom/facebook/acra/ErrorReporter;->getUserId()Ljava/lang/String;

    move-result-object v1

    .line 1551
    sget-object v0, Lcom/facebook/acra/ReportField;->UID:Lcom/facebook/acra/ReportField;

    invoke-virtual {p1, v0}, Lcom/facebook/acra/CrashReportData;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1552
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1553
    sget-object v0, Lcom/facebook/acra/ReportField;->UID:Lcom/facebook/acra/ReportField;

    invoke-virtual {p1, v0, v1}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1555
    :cond_5
    return-void
.end method

.method varargs declared-synchronized checkAndSendReports(Landroid/content/Context;[Lcom/facebook/acra/ErrorReporter$CrashReportType;)V
    .locals 4

    .prologue
    .line 1163
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "#checkAndSendReports - start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    array-length v1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p2, v0

    .line 1165
    sget-object v3, Lcom/facebook/acra/ErrorReporter$CrashReportType;->ACRA_CRASH_REPORT:Lcom/facebook/acra/ErrorReporter$CrashReportType;

    if-ne v3, v2, :cond_0

    .line 1166
    invoke-direct {p0, p1}, Lcom/facebook/acra/ErrorReporter;->checkAndSendAcraReports(Landroid/content/Context;)V

    .line 1164
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1168
    :cond_0
    invoke-direct {p0, p1, v2}, Lcom/facebook/acra/ErrorReporter;->checkAndSendCrashAttachments(Landroid/content/Context;Lcom/facebook/acra/ErrorReporter$CrashReportType;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1163
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1171
    :cond_1
    :try_start_1
    sget-object v0, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "#checkAndSendReports - finish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1172
    monitor-exit p0

    return-void
.end method

.method public varargs checkReportsOfType([Lcom/facebook/acra/ErrorReporter$CrashReportType;)Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;
    .locals 1

    .prologue
    .line 1710
    new-instance v0, Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;

    invoke-direct {v0, p0, p1}, Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;-><init>(Lcom/facebook/acra/ErrorReporter;[Lcom/facebook/acra/ErrorReporter$CrashReportType;)V

    .line 1711
    invoke-virtual {v0}, Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;->start()V

    .line 1712
    return-object v0
.end method

.method public checkReportsOnApplicationStart()Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1639
    new-array v2, v1, [Lcom/facebook/acra/ErrorReporter$CrashReportType;

    sget-object v3, Lcom/facebook/acra/ErrorReporter$CrashReportType;->NATIVE_CRASH_REPORT:Lcom/facebook/acra/ErrorReporter$CrashReportType;

    aput-object v3, v2, v0

    invoke-virtual {p0, v2}, Lcom/facebook/acra/ErrorReporter;->anyReportsOfType([Lcom/facebook/acra/ErrorReporter$CrashReportType;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/facebook/acra/ErrorReporter;->mHasNativeCrashDumpOnInit:Z

    .line 1641
    iget-boolean v2, p0, Lcom/facebook/acra/ErrorReporter;->mHasNativeCrashDumpOnInit:Z

    if-nez v2, :cond_0

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/facebook/acra/ErrorReporter$CrashReportType;

    sget-object v3, Lcom/facebook/acra/ErrorReporter$CrashReportType;->ACRA_CRASH_REPORT:Lcom/facebook/acra/ErrorReporter$CrashReportType;

    aput-object v3, v2, v0

    sget-object v3, Lcom/facebook/acra/ErrorReporter$CrashReportType;->ANR_REPORT:Lcom/facebook/acra/ErrorReporter$CrashReportType;

    aput-object v3, v2, v1

    invoke-virtual {p0, v2}, Lcom/facebook/acra/ErrorReporter;->anyReportsOfType([Lcom/facebook/acra/ErrorReporter$CrashReportType;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    .line 1646
    :cond_1
    if-eqz v0, :cond_2

    .line 1647
    sget-object v0, Lcom/facebook/acra/ErrorReporter;->ALL_REPORT_TYPES:[Lcom/facebook/acra/ErrorReporter$CrashReportType;

    invoke-virtual {p0, v0}, Lcom/facebook/acra/ErrorReporter;->checkReportsOfType([Lcom/facebook/acra/ErrorReporter$CrashReportType;)Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;

    move-result-object v0

    .line 1649
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dumpCustomDataToString(Ljava/util/Map;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 518
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 519
    iget-object v1, p0, Lcom/facebook/acra/ErrorReporter;->mInstanceCustomParameters:Ljava/util/Map;

    invoke-direct {p0, v0, v1}, Lcom/facebook/acra/ErrorReporter;->dumpCustomDataMap(Ljava/lang/StringBuilder;Ljava/util/Map;)V

    .line 520
    if-eqz p1, :cond_0

    .line 521
    invoke-direct {p0, v0, p1}, Lcom/facebook/acra/ErrorReporter;->dumpCustomDataMap(Ljava/lang/StringBuilder;Ljava/util/Map;)V

    .line 523
    :cond_0
    iget-object v1, p0, Lcom/facebook/acra/ErrorReporter;->mInstanceLazyCustomParameters:Ljava/util/Map;

    invoke-direct {p0, v0, v1, p2}, Lcom/facebook/acra/ErrorReporter;->dumpLazyCustomDataMap(Ljava/lang/StringBuilder;Ljava/util/Map;Ljava/lang/Throwable;)V

    .line 524
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getActivityLogger()Lcom/facebook/acra/util/SimpleTraceLogger;
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mActivityLogger:Lcom/facebook/acra/util/SimpleTraceLogger;

    return-object v0
.end method

.method public getAppStartDate()Landroid/text/format/Time;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mAppStartDate:Landroid/text/format/Time;

    return-object v0
.end method

.method getConstantFields()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/acra/ReportField;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 185
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mConstantFields:Ljava/util/Map;

    return-object v0
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public varargs getCrashReportFilesList(Ljava/lang/String;[Ljava/lang/String;)[Ljava/io/File;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1110
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 1111
    sget-object v0, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Trying to get ACRA reports but ACRA is not initialized."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    new-array v0, v4, [Ljava/io/File;

    .line 1152
    :goto_0
    return-object v0

    .line 1115
    :cond_0
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 1116
    if-nez v0, :cond_1

    .line 1117
    sget-object v0, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Application files directory does not exist! The application may not be installed correctly. Please try reinstalling."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    new-array v0, v4, [Ljava/io/File;

    goto :goto_0

    .line 1123
    :cond_1
    sget-object v1, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Looking for error files in "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    new-instance v1, Lcom/facebook/acra/ErrorReporter$1;

    invoke-direct {v1, p0, p2}, Lcom/facebook/acra/ErrorReporter$1;-><init>(Lcom/facebook/acra/ErrorReporter;[Ljava/lang/String;)V

    .line 1137
    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    .line 1138
    if-nez v0, :cond_2

    .line 1139
    new-array v0, v4, [Ljava/io/File;

    goto :goto_0

    .line 1141
    :cond_2
    new-instance v1, Lcom/facebook/acra/ErrorReporter$2;

    invoke-direct {v1, p0}, Lcom/facebook/acra/ErrorReporter$2;-><init>(Lcom/facebook/acra/ErrorReporter;)V

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    goto :goto_0
.end method

.method public getCustomData(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mInstanceCustomParameters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDexVerifyBridge()Lcom/facebook/common/errorreporting/AcraDexLibLoaderBridge;
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mDexVerifyBridge:Lcom/facebook/common/errorreporting/AcraDexLibLoaderBridge;

    return-object v0
.end method

.method public getLogBridge()Lcom/facebook/acra/LogBridge;
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mLogBridge:Lcom/facebook/acra/LogBridge;

    return-object v0
.end method

.method getMostSignificantCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 1808
    instance-of v0, p1, Lcom/facebook/acra/NonCrashException;

    if-eqz v0, :cond_1

    .line 1817
    :cond_0
    return-object p1

    .line 1813
    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1814
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mUserId:Ljava/lang/String;

    return-object v0
.end method

.method public handleException(Ljava/lang/Throwable;)Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;
    .locals 1

    .prologue
    .line 840
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/acra/ErrorReporter;->handleException(Ljava/lang/Throwable;Ljava/util/Map;)Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;

    move-result-object v0

    return-object v0
.end method

.method public handleException(Ljava/lang/Throwable;Ljava/lang/String;Ljava/util/Map;)Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;"
        }
    .end annotation

    .prologue
    .line 1045
    invoke-direct {p0, p1}, Lcom/facebook/acra/ErrorReporter;->getReportFieldsForException(Ljava/lang/Throwable;)[Lcom/facebook/acra/ReportField;

    move-result-object v4

    .line 1046
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/acra/ErrorReporter;->handleExceptionInternal(Ljava/lang/Throwable;Ljava/util/Map;Ljava/lang/String;[Lcom/facebook/acra/ReportField;Z)Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;

    move-result-object v0

    return-object v0
.end method

.method public handleException(Ljava/lang/Throwable;Ljava/util/Map;)Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;"
        }
    .end annotation

    .prologue
    .line 853
    instance-of v0, p1, Ljava/lang/OutOfMemoryError;

    if-nez v0, :cond_0

    const/4 v5, 0x1

    .line 854
    :goto_0
    invoke-direct {p0, p1}, Lcom/facebook/acra/ErrorReporter;->getReportFieldsForException(Ljava/lang/Throwable;)[Lcom/facebook/acra/ReportField;

    move-result-object v4

    .line 855
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/acra/ErrorReporter;->handleExceptionInternal(Ljava/lang/Throwable;Ljava/util/Map;Ljava/lang/String;[Lcom/facebook/acra/ReportField;Z)Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;

    move-result-object v0

    return-object v0

    .line 853
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public handleExceptionDelayed(Ljava/lang/Throwable;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 866
    invoke-direct {p0, p1}, Lcom/facebook/acra/ErrorReporter;->getReportFieldsForException(Ljava/lang/Throwable;)[Lcom/facebook/acra/ReportField;

    move-result-object v4

    .line 867
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/acra/ErrorReporter;->handleExceptionInternal(Ljava/lang/Throwable;Ljava/util/Map;Ljava/lang/String;[Lcom/facebook/acra/ReportField;Z)Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;

    .line 868
    return-void
.end method

.method public handleExceptionWithCustomFields(Ljava/lang/Exception;Ljava/util/Map;[Lcom/facebook/acra/ReportField;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Exception;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[",
            "Lcom/facebook/acra/ReportField;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1063
    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/acra/ErrorReporter;->handleExceptionInternal(Ljava/lang/Throwable;Ljava/util/Map;Ljava/lang/String;[Lcom/facebook/acra/ReportField;Z)Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;

    .line 1064
    return-void
.end method

.method public init(Landroid/content/Context;Z)V
    .locals 6

    .prologue
    .line 584
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mDfltExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-nez v0, :cond_3

    .line 585
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mDfltExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 587
    sput-boolean p2, Lcom/facebook/acra/ErrorReporter;->sIsInternalBuild:Z

    .line 589
    iput-object p1, p0, Lcom/facebook/acra/ErrorReporter;->mContext:Landroid/content/Context;

    .line 591
    new-instance v0, Lcom/facebook/acra/util/PackageManagerWrapper;

    invoke-direct {v0, p1}, Lcom/facebook/acra/util/PackageManagerWrapper;-><init>(Landroid/content/Context;)V

    .line 592
    invoke-virtual {v0}, Lcom/facebook/acra/util/PackageManagerWrapper;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 594
    if-eqz v1, :cond_0

    .line 595
    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mAppVersionCode:Ljava/lang/String;

    .line 596
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mAppVersionName:Ljava/lang/String;

    .line 599
    :cond_0
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mAppStartDate:Landroid/text/format/Time;

    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 602
    :try_start_0
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mConstantFields:Ljava/util/Map;

    sget-object v2, Lcom/facebook/acra/ReportField;->ANDROID_ID:Lcom/facebook/acra/ReportField;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "android_id"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mConstantFields:Ljava/util/Map;

    sget-object v2, Lcom/facebook/acra/ReportField;->APP_VERSION_CODE:Lcom/facebook/acra/ReportField;

    iget-object v3, p0, Lcom/facebook/acra/ErrorReporter;->mAppVersionCode:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mConstantFields:Ljava/util/Map;

    sget-object v2, Lcom/facebook/acra/ReportField;->APP_VERSION_NAME:Lcom/facebook/acra/ReportField;

    iget-object v3, p0, Lcom/facebook/acra/ErrorReporter;->mAppVersionName:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mConstantFields:Ljava/util/Map;

    sget-object v2, Lcom/facebook/acra/ReportField;->PACKAGE_NAME:Lcom/facebook/acra/ReportField;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mConstantFields:Ljava/util/Map;

    sget-object v2, Lcom/facebook/acra/ReportField;->PHONE_MODEL:Lcom/facebook/acra/ReportField;

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mConstantFields:Ljava/util/Map;

    sget-object v2, Lcom/facebook/acra/ReportField;->DEVICE:Lcom/facebook/acra/ReportField;

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mConstantFields:Ljava/util/Map;

    sget-object v2, Lcom/facebook/acra/ReportField;->ANDROID_VERSION:Lcom/facebook/acra/ReportField;

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mConstantFields:Ljava/util/Map;

    sget-object v2, Lcom/facebook/acra/ReportField;->OS_VERSION:Lcom/facebook/acra/ReportField;

    const-string v3, "os.version"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 611
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mConstantFields:Ljava/util/Map;

    sget-object v2, Lcom/facebook/acra/ReportField;->BUILD_HOST:Lcom/facebook/acra/ReportField;

    sget-object v3, Landroid/os/Build;->HOST:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mConstantFields:Ljava/util/Map;

    sget-object v2, Lcom/facebook/acra/ReportField;->BRAND:Lcom/facebook/acra/ReportField;

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mConstantFields:Ljava/util/Map;

    sget-object v2, Lcom/facebook/acra/ReportField;->PRODUCT:Lcom/facebook/acra/ReportField;

    sget-object v3, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    const-string v0, "n/a"

    .line 616
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    .line 617
    if-eqz v2, :cond_1

    .line 618
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 620
    :cond_1
    iget-object v2, p0, Lcom/facebook/acra/ErrorReporter;->mConstantFields:Ljava/util/Map;

    sget-object v3, Lcom/facebook/acra/ReportField;->FILE_PATH:Lcom/facebook/acra/ReportField;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 622
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v0, v2, :cond_2

    .line 623
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mConstantFields:Ljava/util/Map;

    sget-object v2, Lcom/facebook/acra/ReportField;->SERIAL:Lcom/facebook/acra/ReportField;

    sget-object v3, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    if-eqz v1, :cond_2

    .line 626
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mConstantFields:Ljava/util/Map;

    sget-object v2, Lcom/facebook/acra/ReportField;->APP_INSTALL_TIME:Lcom/facebook/acra/ReportField;

    iget-wide v4, v1, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-direct {p0, v4, v5}, Lcom/facebook/acra/ErrorReporter;->formatTimestamp(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mConstantFields:Ljava/util/Map;

    sget-object v2, Lcom/facebook/acra/ReportField;->APP_UPGRADE_TIME:Lcom/facebook/acra/ReportField;

    iget-wide v4, v1, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    invoke-direct {p0, v4, v5}, Lcom/facebook/acra/ErrorReporter;->formatTimestamp(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 636
    :cond_2
    :goto_1
    const-string v0, "acra-reports"

    const-string v1, "reportfile.prealloc"

    invoke-static {p1, v0, v1}, Lcom/facebook/acra/ErrorReporter;->fileForName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/acra/ErrorReporter;->preallocFile:Ljava/io/File;

    .line 638
    invoke-direct {p0}, Lcom/facebook/acra/ErrorReporter;->createPreallocatedReportFile()V

    .line 640
    :cond_3
    return-void

    .line 596
    :cond_4
    const-string v0, "not set"

    goto/16 :goto_0

    .line 630
    :catch_0
    move-exception v0

    .line 633
    sget-object v1, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v2, "failed to install constants"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public isNativeCrashedOnPreviousRun()Z
    .locals 1

    .prologue
    .line 1719
    iget-boolean v0, p0, Lcom/facebook/acra/ErrorReporter;->mHasNativeCrashDumpOnInit:Z

    return v0
.end method

.method public parseVersionCodeFromFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1565
    if-eqz p1, :cond_1

    .line 1566
    .line 1575
    sget-object v2, Lcom/facebook/acra/ErrorReporter;->sVersionCodeRegex:Ljava/util/regex/Pattern;

    if-nez v2, :cond_0

    .line 1576
    const-string v2, "^\\d+-[a-zA-Z0-9_\\-]+-(\\d+)\\.(temp_stacktrace|stacktrace)$"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    sput-object v2, Lcom/facebook/acra/ErrorReporter;->sVersionCodeRegex:Ljava/util/regex/Pattern;

    .line 1579
    :cond_0
    sget-object v2, Lcom/facebook/acra/ErrorReporter;->sVersionCodeRegex:Ljava/util/regex/Pattern;

    move-object v0, v2

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1567
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1568
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 1571
    :goto_0
    return-object v0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method put(Lcom/facebook/acra/ReportField;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V
    .locals 1

    .prologue
    .line 813
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/acra/ErrorReporter;->sendInMemoryReport:Z

    if-eqz v0, :cond_0

    const/4 p4, 0x0

    :cond_0
    invoke-virtual {p3, p1, p2, p4}, Lcom/facebook/acra/CrashReportData;->put(Lcom/facebook/acra/ReportField;Ljava/lang/String;Ljava/io/Writer;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 818
    :goto_0
    return-void

    .line 816
    :catch_0
    move-exception v0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/acra/ErrorReporter;->sendInMemoryReport:Z

    goto :goto_0
.end method

.method public putCustomData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 440
    if-nez p1, :cond_0

    .line 441
    const/4 v0, 0x0

    .line 446
    :goto_0
    return-object v0

    .line 443
    :cond_0
    if-eqz p2, :cond_1

    .line 444
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mInstanceCustomParameters:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 446
    :cond_1
    invoke-virtual {p0, p1}, Lcom/facebook/acra/ErrorReporter;->removeCustomData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public putLazyCustomData(Ljava/lang/String;Lcom/facebook/acra/CustomReportDataSupplier;)V
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mInstanceLazyCustomParameters:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    return-void
.end method

.method public registerActivity(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1774
    if-eqz p1, :cond_0

    .line 1775
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mActivityLogger:Lcom/facebook/acra/util/SimpleTraceLogger;

    invoke-virtual {v0, p1}, Lcom/facebook/acra/util/SimpleTraceLogger;->append(Ljava/lang/String;)V

    .line 1777
    :cond_0
    return-void
.end method

.method public removeAllReportSenders()V
    .locals 1

    .prologue
    .line 1737
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mReportSenders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1738
    return-void
.end method

.method public removeCustomData(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/facebook/acra/Nullable;
        .end annotation
    .end param

    .prologue
    .line 460
    if-nez p1, :cond_0

    .line 461
    const/4 v0, 0x0

    .line 463
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mInstanceCustomParameters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public removeLazyCustomData(Ljava/lang/String;)Lcom/facebook/acra/CustomReportDataSupplier;
    .locals 1

    .prologue
    .line 502
    if-nez p1, :cond_0

    .line 503
    const/4 v0, 0x0

    .line 505
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mInstanceLazyCustomParameters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/acra/CustomReportDataSupplier;

    goto :goto_0
.end method

.method declared-synchronized sendInMemoryReport(Landroid/content/Context;Lcom/facebook/acra/CrashReportData;)V
    .locals 3

    .prologue
    .line 1318
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Sending in-memory report"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1320
    :try_start_1
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/acra/CrashTimeDataCollector;->getProcessNameFromAms(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1321
    sget-object v1, Lcom/facebook/acra/ReportField;->UPLOADED_BY_PROCESS:Lcom/facebook/acra/ReportField;

    invoke-virtual {p2, v1, v0}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1322
    invoke-direct {p0, p2}, Lcom/facebook/acra/ErrorReporter;->sendCrashReport(Lcom/facebook/acra/CrashReportData;)V

    .line 1329
    sget-object v0, Lcom/facebook/acra/ReportField;->ACRA_REPORT_FILENAME:Lcom/facebook/acra/ReportField;

    invoke-virtual {p2, v0}, Lcom/facebook/acra/CrashReportData;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1330
    if-eqz v0, :cond_0

    .line 1331
    const-string v1, "acra-reports"

    invoke-static {p1, v1, v0}, Lcom/facebook/acra/ErrorReporter;->fileForName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 1332
    invoke-static {v0}, Lcom/facebook/acra/ErrorReporter;->deleteFile(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1337
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1334
    :catch_0
    move-exception v0

    .line 1335
    :try_start_2
    sget-object v1, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Failed to send in-memory crash report: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1318
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setDexVerifyBridge(Lcom/facebook/common/errorreporting/AcraDexLibLoaderBridge;)V
    .locals 0

    .prologue
    .line 389
    iput-object p1, p0, Lcom/facebook/acra/ErrorReporter;->mDexVerifyBridge:Lcom/facebook/common/errorreporting/AcraDexLibLoaderBridge;

    .line 390
    return-void
.end method

.method public setLogBridge(Lcom/facebook/acra/LogBridge;)V
    .locals 0

    .prologue
    .line 397
    iput-object p1, p0, Lcom/facebook/acra/ErrorReporter;->mLogBridge:Lcom/facebook/acra/LogBridge;

    .line 398
    return-void
.end method

.method public setMaxReportSize(J)V
    .locals 1

    .prologue
    .line 1746
    iput-wide p1, p0, Lcom/facebook/acra/ErrorReporter;->mMaxReportSize:J

    .line 1747
    return-void
.end method

.method public setReportProxy(Ljava/net/Proxy;)V
    .locals 3

    .prologue
    .line 1760
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mReportSenders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/acra/sender/HttpPostSender;

    .line 1761
    instance-of v2, v0, Lcom/facebook/acra/sender/HttpPostSender;

    if-eqz v2, :cond_0

    .line 1762
    check-cast v0, Lcom/facebook/acra/sender/HttpPostSender;

    invoke-virtual {v0, p1}, Lcom/facebook/acra/sender/HttpPostSender;->setProxy(Ljava/net/Proxy;)V

    goto :goto_0

    .line 1765
    :cond_1
    return-void
.end method

.method public setReportSender(Lcom/facebook/acra/sender/HttpPostSender;)V
    .locals 0

    .prologue
    .line 1755
    invoke-virtual {p0}, Lcom/facebook/acra/ErrorReporter;->removeAllReportSenders()V

    .line 1756
    invoke-virtual {p0, p1}, Lcom/facebook/acra/ErrorReporter;->addReportSender(Lcom/facebook/acra/sender/HttpPostSender;)V

    .line 1757
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 413
    iput-object p1, p0, Lcom/facebook/acra/ErrorReporter;->mUserId:Ljava/lang/String;

    .line 414
    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 687
    sget-object v0, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ACRA caught a "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " exception for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/acra/ErrorReporter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Building report."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    iput-boolean v4, p0, Lcom/facebook/acra/ErrorReporter;->usePreallocatedFile:Z

    .line 694
    sget-object v0, Lcom/facebook/acra/ErrorReporter;->mProcessingCrash:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    .line 698
    :try_start_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 699
    :try_start_1
    const-string v1, "IS_PROCESSING_ANOTHER_EXCEPTION"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2

    .line 706
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/acra/ErrorReporter;->getDexVerifyBridge()Lcom/facebook/common/errorreporting/AcraDexLibLoaderBridge;

    move-result-object v0

    .line 707
    if-eqz v0, :cond_0

    .line 708
    invoke-virtual {v0}, Lcom/facebook/common/errorreporting/AcraDexLibLoaderBridge;->verifyDexes()Ljava/lang/RuntimeException;

    move-result-object v0

    .line 710
    if-eqz v0, :cond_0

    move-object p2, v0

    .line 716
    :cond_0
    invoke-virtual {p0, p2, v2}, Lcom/facebook/acra/ErrorReporter;->handleException(Ljava/lang/Throwable;Ljava/util/Map;)Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;

    move-result-object v0

    .line 718
    if-eqz v0, :cond_2

    .line 719
    :goto_1
    invoke-virtual {v0}, Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 723
    const-wide/16 v4, 0x64

    :try_start_2
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 724
    :catch_0
    move-exception v1

    .line 725
    sget-object v4, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v5, "Error : "

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 729
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;->getException()Ljava/lang/Throwable;

    move-result-object v1

    .line 730
    if-eqz v1, :cond_2

    .line 731
    sget-object v0, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v4, "ReportsWorkerSender failed with exception"

    invoke-static {v0, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 735
    invoke-direct {p0, p2}, Lcom/facebook/acra/ErrorReporter;->getReportFieldsForException(Ljava/lang/Throwable;)[Lcom/facebook/acra/ReportField;

    move-result-object v4

    .line 736
    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/facebook/acra/ErrorReporter;->handleExceptionInternal(Ljava/lang/Throwable;Ljava/util/Map;Ljava/lang/String;[Lcom/facebook/acra/ReportField;Z)Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;

    .line 740
    :cond_2
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mDfltExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_3

    .line 741
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mDfltExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 743
    :cond_3
    return-void

    :catch_1
    move-exception v0

    move-object v2, v3

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method public writeReportToStream(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    .locals 7

    .prologue
    .line 827
    new-instance v4, Lcom/facebook/acra/CrashReportData;

    invoke-direct {v4}, Lcom/facebook/acra/CrashReportData;-><init>()V

    .line 828
    invoke-static {p2}, Lcom/facebook/acra/CrashReportData;->getWriter(Ljava/io/OutputStream;)Ljava/io/Writer;

    move-result-object v5

    .line 829
    invoke-direct {p0, p1}, Lcom/facebook/acra/ErrorReporter;->throwableToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    .line 830
    sget-object v3, Lcom/facebook/acra/ACRA;->ALL_CRASH_REPORT_FIELDS:[Lcom/facebook/acra/ReportField;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-static/range {v0 .. v6}, Lcom/facebook/acra/CrashTimeDataCollector;->gatherCrashData(Lcom/facebook/acra/ErrorReporter;Ljava/lang/String;Ljava/lang/Throwable;[Lcom/facebook/acra/ReportField;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;Ljava/util/Map;)V

    .line 832
    return-void
.end method
