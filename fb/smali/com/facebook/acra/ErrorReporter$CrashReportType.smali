.class public final enum Lcom/facebook/acra/ErrorReporter$CrashReportType;
.super Ljava/lang/Enum;
.source "xz stream terminated prematurely"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/acra/ErrorReporter$CrashReportType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/acra/ErrorReporter$CrashReportType;

.field public static final enum ACRA_CRASH_REPORT:Lcom/facebook/acra/ErrorReporter$CrashReportType;

.field public static final enum ANR_REPORT:Lcom/facebook/acra/ErrorReporter$CrashReportType;

.field public static final enum NATIVE_CRASH_REPORT:Lcom/facebook/acra/ErrorReporter$CrashReportType;


# instance fields
.field public final attachmentField:Lcom/facebook/acra/ReportField;

.field public final defaultMaxSize:J

.field public final directory:Ljava/lang/String;

.field public final fileExtensions:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v2, 0x0

    .line 198
    new-instance v0, Lcom/facebook/acra/ErrorReporter$CrashReportType;

    const-string v1, "ACRA_CRASH_REPORT"

    const-string v3, "acra-reports"

    const-wide/32 v4, 0x100000

    const/4 v6, 0x0

    new-array v7, v13, [Ljava/lang/String;

    const-string v8, ".stacktrace"

    aput-object v8, v7, v2

    const-string v8, ".temp_stacktrace"

    aput-object v8, v7, v12

    invoke-direct/range {v0 .. v7}, Lcom/facebook/acra/ErrorReporter$CrashReportType;-><init>(Ljava/lang/String;ILjava/lang/String;JLcom/facebook/acra/ReportField;[Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/acra/ErrorReporter$CrashReportType;->ACRA_CRASH_REPORT:Lcom/facebook/acra/ErrorReporter$CrashReportType;

    .line 205
    new-instance v4, Lcom/facebook/acra/ErrorReporter$CrashReportType;

    const-string v5, "NATIVE_CRASH_REPORT"

    const-string v7, "minidumps"

    const-wide/32 v8, 0x800000

    sget-object v10, Lcom/facebook/acra/ReportField;->MINIDUMP:Lcom/facebook/acra/ReportField;

    new-array v11, v12, [Ljava/lang/String;

    const-string v0, ".dmp"

    aput-object v0, v11, v2

    move v6, v12

    invoke-direct/range {v4 .. v11}, Lcom/facebook/acra/ErrorReporter$CrashReportType;-><init>(Ljava/lang/String;ILjava/lang/String;JLcom/facebook/acra/ReportField;[Ljava/lang/String;)V

    sput-object v4, Lcom/facebook/acra/ErrorReporter$CrashReportType;->NATIVE_CRASH_REPORT:Lcom/facebook/acra/ErrorReporter$CrashReportType;

    .line 211
    new-instance v4, Lcom/facebook/acra/ErrorReporter$CrashReportType;

    const-string v5, "ANR_REPORT"

    const-string v7, "traces"

    const-wide/32 v8, 0x80000

    sget-object v10, Lcom/facebook/acra/ReportField;->SIGQUIT:Lcom/facebook/acra/ReportField;

    new-array v11, v13, [Ljava/lang/String;

    const-string v0, ".stacktrace"

    aput-object v0, v11, v2

    const-string v0, ".temp_stacktrace"

    aput-object v0, v11, v12

    move v6, v13

    invoke-direct/range {v4 .. v11}, Lcom/facebook/acra/ErrorReporter$CrashReportType;-><init>(Ljava/lang/String;ILjava/lang/String;JLcom/facebook/acra/ReportField;[Ljava/lang/String;)V

    sput-object v4, Lcom/facebook/acra/ErrorReporter$CrashReportType;->ANR_REPORT:Lcom/facebook/acra/ErrorReporter$CrashReportType;

    .line 196
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/facebook/acra/ErrorReporter$CrashReportType;

    sget-object v1, Lcom/facebook/acra/ErrorReporter$CrashReportType;->ACRA_CRASH_REPORT:Lcom/facebook/acra/ErrorReporter$CrashReportType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/acra/ErrorReporter$CrashReportType;->NATIVE_CRASH_REPORT:Lcom/facebook/acra/ErrorReporter$CrashReportType;

    aput-object v1, v0, v12

    sget-object v1, Lcom/facebook/acra/ErrorReporter$CrashReportType;->ANR_REPORT:Lcom/facebook/acra/ErrorReporter$CrashReportType;

    aput-object v1, v0, v13

    sput-object v0, Lcom/facebook/acra/ErrorReporter$CrashReportType;->$VALUES:[Lcom/facebook/acra/ErrorReporter$CrashReportType;

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;ILjava/lang/String;JLcom/facebook/acra/ReportField;[Ljava/lang/String;)V
    .locals 0
    .param p6    # Lcom/facebook/acra/ReportField;
        .annotation build Lcom/facebook/acra/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lcom/facebook/acra/ReportField;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 221
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 222
    iput-object p3, p0, Lcom/facebook/acra/ErrorReporter$CrashReportType;->directory:Ljava/lang/String;

    .line 223
    iput-wide p4, p0, Lcom/facebook/acra/ErrorReporter$CrashReportType;->defaultMaxSize:J

    .line 224
    iput-object p6, p0, Lcom/facebook/acra/ErrorReporter$CrashReportType;->attachmentField:Lcom/facebook/acra/ReportField;

    .line 225
    iput-object p7, p0, Lcom/facebook/acra/ErrorReporter$CrashReportType;->fileExtensions:[Ljava/lang/String;

    .line 226
    return-void
.end method

.method static synthetic access$400(Lcom/facebook/acra/ErrorReporter$CrashReportType;)Lcom/facebook/acra/ReportField;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter$CrashReportType;->attachmentField:Lcom/facebook/acra/ReportField;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/acra/ErrorReporter$CrashReportType;
    .locals 1

    .prologue
    .line 196
    const-class v0, Lcom/facebook/acra/ErrorReporter$CrashReportType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/acra/ErrorReporter$CrashReportType;

    return-object v0
.end method

.method public static values()[Lcom/facebook/acra/ErrorReporter$CrashReportType;
    .locals 1

    .prologue
    .line 196
    sget-object v0, Lcom/facebook/acra/ErrorReporter$CrashReportType;->$VALUES:[Lcom/facebook/acra/ErrorReporter$CrashReportType;

    invoke-virtual {v0}, [Lcom/facebook/acra/ErrorReporter$CrashReportType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/acra/ErrorReporter$CrashReportType;

    return-object v0
.end method
