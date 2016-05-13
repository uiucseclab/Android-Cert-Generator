.class public Lcom/facebook/dalviktelemetry/DalvikTelemetry;
.super Ljava/lang/Object;
.source "width="


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static b:Lcom/facebook/analytics/logger/HoneyClientEvent;
    .annotation build Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private static c:Ljava/lang/String;
    .annotation build Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private static d:Ljava/lang/Throwable;
    .annotation build Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/facebook/dalviktelemetry/DalvikTelemetry;

    sput-object v0, Lcom/facebook/dalviktelemetry/DalvikTelemetry;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    return-void
.end method

.method private static a(Ljava/lang/String;)Lcom/facebook/analytics/logger/HoneyClientEvent;
    .locals 3

    .prologue
    .line 155
    new-instance v0, Lcom/facebook/analytics/logger/HoneyClientEvent;

    invoke-direct {v0, p0}, Lcom/facebook/analytics/logger/HoneyClientEvent;-><init>(Ljava/lang/String;)V

    .line 156
    const-string v1, "app"

    invoke-virtual {v0, v1}, Lcom/facebook/analytics/logger/HoneyClientEvent;->g(Ljava/lang/String;)Lcom/facebook/analytics/logger/HoneyClientEvent;

    .line 157
    const-string v1, "sdk_version"

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1, v2}, Lcom/facebook/analytics/logger/HoneyClientEvent;->a(Ljava/lang/String;I)Lcom/facebook/analytics/logger/HoneyClientEvent;

    .line 158
    const-string v1, "fingerprint"

    sget-object v2, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/analytics/logger/HoneyClientEvent;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/analytics/logger/HoneyClientEvent;

    .line 159
    const-string v1, "model"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/analytics/logger/HoneyClientEvent;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/analytics/logger/HoneyClientEvent;

    .line 160
    const-string v1, "device"

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/analytics/logger/HoneyClientEvent;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/analytics/logger/HoneyClientEvent;

    .line 161
    const-string v1, "manufacturer"

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/analytics/logger/HoneyClientEvent;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/analytics/logger/HoneyClientEvent;

    .line 162
    const-string v1, "cpu_abi"

    sget-object v2, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/analytics/logger/HoneyClientEvent;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/analytics/logger/HoneyClientEvent;

    .line 163
    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 4

    .prologue
    .line 71
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "dalvik_hack_telemetry"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 72
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 74
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 75
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to create dir: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 173
    .line 174
    sget-object v0, Lcom/facebook/dalviktelemetry/DalvikTelemetry$ReportType;->NORMAL:Lcom/facebook/dalviktelemetry/DalvikTelemetry$ReportType;

    .line 176
    invoke-static {}, Lcom/facebook/dalviktelemetry/DalvikTelemetry;->a()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 177
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 180
    :try_start_0
    const-string v5, "attempted"

    invoke-static {p0, p1, v5}, Lcom/facebook/dalviktelemetry/DalvikTelemetry;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    .line 181
    if-eqz v5, :cond_1

    .line 185
    const-string v1, "attempted"

    const/4 v5, 0x0

    invoke-static {p0, p1, v1, v5}, Lcom/facebook/dalviktelemetry/DalvikTelemetry;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :try_start_1
    sget-object v0, Lcom/facebook/dalviktelemetry/DalvikTelemetry$ReportType;->TEST:Lcom/facebook/dalviktelemetry/DalvikTelemetry$ReportType;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move v3, v2

    move-object v2, v0

    move-object v0, v4

    .line 199
    :goto_0
    if-eqz v0, :cond_3

    .line 201
    const-string v1, "dalvik_hack_storage_failure"

    sput-object v1, Lcom/facebook/dalviktelemetry/DalvikTelemetry;->c:Ljava/lang/String;

    .line 202
    sput-object v0, Lcom/facebook/dalviktelemetry/DalvikTelemetry;->d:Ljava/lang/Throwable;

    .line 205
    const-string v1, "dalvik_hack_storage_failure"

    invoke-static {v1}, Lcom/facebook/dalviktelemetry/DalvikTelemetry;->a(Ljava/lang/String;)Lcom/facebook/analytics/logger/HoneyClientEvent;

    move-result-object v1

    .line 207
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 208
    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 209
    invoke-virtual {v0, v3}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 210
    const-string v3, "io_stack_trace"

    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/facebook/analytics/logger/HoneyClientEvent;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/analytics/logger/HoneyClientEvent;

    .line 211
    const-string v2, "io_exception"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/facebook/analytics/logger/HoneyClientEvent;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/analytics/logger/HoneyClientEvent;

    .line 212
    sput-object v1, Lcom/facebook/dalviktelemetry/DalvikTelemetry;->b:Lcom/facebook/analytics/logger/HoneyClientEvent;

    .line 215
    sget-object v1, Lcom/facebook/dalviktelemetry/DalvikTelemetry;->a:Ljava/lang/Class;

    const-string v2, "IOException"

    invoke-static {v1, v2, v0}, Lcom/facebook/debug/log/BLog;->b(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 259
    :cond_0
    :goto_1
    return-void

    .line 188
    :cond_1
    :try_start_2
    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    const v2, 0x3c23d70a    # 0.01f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    .line 189
    const-string v1, "attempted"

    const/4 v2, 0x1

    invoke-static {p0, p1, v1, v2}, Lcom/facebook/dalviktelemetry/DalvikTelemetry;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 190
    sget-object v1, Lcom/facebook/dalvik/DalvikLinearAllocType;->FBANDROID_RELEASE:Lcom/facebook/dalvik/DalvikLinearAllocType;

    invoke-static {v1}, Lcom/facebook/dalvik/DalvikReplaceBuffer;->b(Lcom/facebook/dalvik/DalvikLinearAllocType;)V

    .line 191
    sget-object v0, Lcom/facebook/dalviktelemetry/DalvikTelemetry$ReportType;->TEST:Lcom/facebook/dalviktelemetry/DalvikTelemetry$ReportType;

    .line 192
    const-string v1, "attempted"

    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2}, Lcom/facebook/dalviktelemetry/DalvikTelemetry;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    move-object v2, v0

    move-object v0, v4

    .line 196
    goto :goto_0

    .line 194
    :catch_0
    move-exception v1

    move v2, v3

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    :goto_2
    move v3, v2

    move-object v2, v1

    .line 195
    goto :goto_0

    .line 219
    :cond_3
    invoke-static {v2}, Lcom/facebook/dalviktelemetry/DalvikTelemetry;->a(Lcom/facebook/dalviktelemetry/DalvikTelemetry$ReportType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    if-nez v3, :cond_6

    invoke-static {}, Lcom/facebook/dalvik/DalvikReplaceBuffer;->a()Lcom/facebook/dalvik/DalvikReplaceBuffer$Result;

    move-result-object v0

    .line 224
    :goto_3
    sget-object v1, Lcom/facebook/dalviktelemetry/DalvikTelemetry$ReportType;->NORMAL:Lcom/facebook/dalviktelemetry/DalvikTelemetry$ReportType;

    if-ne v2, v1, :cond_7

    .line 225
    sget-object v1, Lcom/facebook/dalvik/DalvikReplaceBuffer$Result;->FAILURE:Lcom/facebook/dalvik/DalvikReplaceBuffer$Result;

    if-ne v0, v1, :cond_a

    .line 226
    const-string v1, "dalvik_hack_failure"

    invoke-static {v1}, Lcom/facebook/dalviktelemetry/DalvikTelemetry;->a(Ljava/lang/String;)Lcom/facebook/analytics/logger/HoneyClientEvent;

    move-result-object v1

    .line 227
    const-string v4, "dalvik_hack_failure"

    sput-object v4, Lcom/facebook/dalviktelemetry/DalvikTelemetry;->c:Ljava/lang/String;

    .line 228
    new-instance v4, Ljava/lang/Throwable;

    const-string v5, "Failed to apply dalvik hack."

    invoke-direct {v4, v5}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    sput-object v4, Lcom/facebook/dalviktelemetry/DalvikTelemetry;->d:Ljava/lang/Throwable;

    .line 240
    :goto_4
    if-nez v1, :cond_4

    .line 241
    const-string v1, "dalvik_hack_error"

    invoke-static {v1}, Lcom/facebook/dalviktelemetry/DalvikTelemetry;->a(Ljava/lang/String;)Lcom/facebook/analytics/logger/HoneyClientEvent;

    move-result-object v1

    .line 242
    const-string v4, "report_type"

    invoke-virtual {v2}, Lcom/facebook/dalviktelemetry/DalvikTelemetry$ReportType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lcom/facebook/analytics/logger/HoneyClientEvent;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/analytics/logger/HoneyClientEvent;

    .line 243
    const-string v2, "result"

    invoke-virtual {v0}, Lcom/facebook/dalvik/DalvikReplaceBuffer$Result;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/facebook/analytics/logger/HoneyClientEvent;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/analytics/logger/HoneyClientEvent;

    .line 245
    const-string v2, "dalvik_hack_error"

    sput-object v2, Lcom/facebook/dalviktelemetry/DalvikTelemetry;->c:Ljava/lang/String;

    .line 246
    new-instance v2, Ljava/lang/Throwable;

    const-string v4, "Unexpected telemetry state."

    invoke-direct {v2, v4}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/facebook/dalviktelemetry/DalvikTelemetry;->d:Ljava/lang/Throwable;

    .line 249
    :cond_4
    const-string v2, "app"

    invoke-virtual {v1, v2}, Lcom/facebook/analytics/logger/HoneyClientEvent;->g(Ljava/lang/String;)Lcom/facebook/analytics/logger/HoneyClientEvent;

    .line 251
    sget-object v2, Lcom/facebook/dalvik/DalvikReplaceBuffer$Result;->FAILURE:Lcom/facebook/dalvik/DalvikReplaceBuffer$Result;

    if-ne v0, v2, :cond_5

    .line 252
    const-string v2, "failure_string"

    if-nez v3, :cond_9

    invoke-static {}, Lcom/facebook/dalvik/DalvikReplaceBuffer;->b()Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-virtual {v1, v2, v0}, Lcom/facebook/analytics/logger/HoneyClientEvent;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/analytics/logger/HoneyClientEvent;

    .line 257
    :cond_5
    sput-object v1, Lcom/facebook/dalviktelemetry/DalvikTelemetry;->b:Lcom/facebook/analytics/logger/HoneyClientEvent;

    goto/16 :goto_1

    .line 221
    :cond_6
    sget-object v0, Lcom/facebook/dalvik/DalvikReplaceBuffer$Result;->FAILURE:Lcom/facebook/dalvik/DalvikReplaceBuffer$Result;

    goto :goto_3

    .line 231
    :cond_7
    sget-object v1, Lcom/facebook/dalvik/DalvikReplaceBuffer$Result;->SUCCESS:Lcom/facebook/dalvik/DalvikReplaceBuffer$Result;

    if-ne v0, v1, :cond_8

    .line 232
    const-string v1, "dalvik_hack_telemetry_success"

    invoke-static {v1}, Lcom/facebook/dalviktelemetry/DalvikTelemetry;->a(Ljava/lang/String;)Lcom/facebook/analytics/logger/HoneyClientEvent;

    move-result-object v1

    goto :goto_4

    .line 233
    :cond_8
    sget-object v1, Lcom/facebook/dalvik/DalvikReplaceBuffer$Result;->FAILURE:Lcom/facebook/dalvik/DalvikReplaceBuffer$Result;

    if-ne v0, v1, :cond_a

    .line 234
    const-string v1, "dalvik_hack_telemetry_failure"

    invoke-static {v1}, Lcom/facebook/dalviktelemetry/DalvikTelemetry;->a(Ljava/lang/String;)Lcom/facebook/analytics/logger/HoneyClientEvent;

    move-result-object v1

    .line 235
    const-string v4, "dalvik_hack_telemetry_failure"

    sput-object v4, Lcom/facebook/dalviktelemetry/DalvikTelemetry;->c:Ljava/lang/String;

    .line 236
    new-instance v4, Ljava/lang/Throwable;

    const-string v5, "Failed to apply dalvik hack."

    invoke-direct {v4, v5}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    sput-object v4, Lcom/facebook/dalviktelemetry/DalvikTelemetry;->d:Ljava/lang/Throwable;

    goto :goto_4

    .line 252
    :cond_9
    const-string v0, "Previous attempt crashed the process"

    goto :goto_5

    .line 194
    :catch_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto/16 :goto_2

    :cond_a
    move-object v1, v4

    goto :goto_4

    :cond_b
    move-object v2, v0

    move-object v0, v4

    goto/16 :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4

    .prologue
    .line 103
    invoke-static {p0, p1, p2}, Lcom/facebook/dalviktelemetry/DalvikTelemetry;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 104
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-ne p3, v1, :cond_1

    .line 122
    :cond_0
    return-void

    .line 109
    :cond_1
    if-eqz p3, :cond_2

    .line 110
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 111
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write(I)V

    .line 112
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 113
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 114
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to create a file: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 117
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 118
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to delete a file: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static a(Lcom/facebook/inject/FbInjector;)V
    .locals 3

    .prologue
    .line 282
    sget-object v0, Lcom/facebook/dalviktelemetry/DalvikTelemetry;->b:Lcom/facebook/analytics/logger/HoneyClientEvent;

    if-eqz v0, :cond_0

    .line 283
    invoke-static {p0}, Lcom/facebook/analytics/AnalyticsLoggerMethodAutoProvider;->a(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/analytics/logger/AnalyticsLogger;

    move-result-object v0

    check-cast v0, Lcom/facebook/analytics/logger/AnalyticsLogger;

    .line 284
    sget-object v1, Lcom/facebook/dalviktelemetry/DalvikTelemetry;->b:Lcom/facebook/analytics/logger/HoneyClientEvent;

    invoke-interface {v0, v1}, Lcom/facebook/analytics/logger/AnalyticsLogger;->c(Lcom/facebook/analytics/HoneyAnalyticsEvent;)V

    .line 287
    :cond_0
    sget-object v0, Lcom/facebook/dalviktelemetry/DalvikTelemetry;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/facebook/dalviktelemetry/DalvikTelemetry;->d:Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    .line 288
    invoke-static {p0}, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->a(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/common/errorreporting/FbErrorReporterImpl;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/errorreporting/AbstractFbErrorReporter;

    .line 289
    sget-object v1, Lcom/facebook/dalviktelemetry/DalvikTelemetry;->c:Ljava/lang/String;

    sget-object v2, Lcom/facebook/dalviktelemetry/DalvikTelemetry;->d:Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/errorreporting/AbstractFbErrorReporter;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 291
    :cond_1
    return-void
.end method

.method private static a()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 141
    invoke-static {}, Lcom/facebook/dalvik/DalvikReplaceBuffer;->a()Lcom/facebook/dalvik/DalvikReplaceBuffer$Result;

    move-result-object v1

    sget-object v2, Lcom/facebook/dalvik/DalvikReplaceBuffer$Result;->NOT_ATTEMPTED:Lcom/facebook/dalvik/DalvikReplaceBuffer$Result;

    if-eq v1, v2, :cond_1

    .line 145
    :cond_0
    :goto_0
    return v0

    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static a(Lcom/facebook/dalviktelemetry/DalvikTelemetry$ReportType;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 262
    sget-object v1, Lcom/facebook/dalviktelemetry/DalvikTelemetry$ReportType;->TEST:Lcom/facebook/dalviktelemetry/DalvikTelemetry$ReportType;

    if-ne p0, v1, :cond_0

    .line 271
    :goto_0
    :pswitch_0
    return v0

    .line 265
    :cond_0
    invoke-static {}, Lcom/facebook/dalvik/DalvikReplaceBuffer;->a()Lcom/facebook/dalvik/DalvikReplaceBuffer$Result;

    move-result-object v1

    .line 266
    sget-object v2, Lcom/facebook/dalviktelemetry/DalvikTelemetry$1;->a:[I

    invoke-virtual {v1}, Lcom/facebook/dalvik/DalvikReplaceBuffer$Result;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 273
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown replace buffer result="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 271
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 266
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 90
    invoke-static {p0, p1, p2}, Lcom/facebook/dalviktelemetry/DalvikTelemetry;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method
