.class public Lcom/facebook/systrace/TraceDirect;
.super Ljava/lang/Object;
.source "onServiceDisconnected %s"


# static fields
.field private static final a:Ljava/lang/String;

.field public static final b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 13
    const-class v2, Lcom/facebook/systrace/TraceDirect;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/facebook/systrace/TraceDirect;->a:Ljava/lang/String;

    .line 25
    :try_start_0
    const-string v2, "fbsystrace"

    invoke-static {v2}, Lcom/facebook/soloader/SoLoader;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v0

    .line 32
    :goto_0
    if-nez v2, :cond_0

    :goto_1
    sput-boolean v0, Lcom/facebook/systrace/TraceDirect;->b:Z

    .line 33
    return-void

    .line 28
    :catch_0
    move-exception v2

    sget-object v2, Lcom/facebook/systrace/TraceDirect;->a:Ljava/lang/String;

    const-string v3, "fbsystrace.so not found; disabling direct tracing."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 29
    goto :goto_0

    :cond_0
    move v0, v1

    .line 32
    goto :goto_1
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;IJ)V
    .locals 2

    .prologue
    .line 79
    sget-boolean v0, Lcom/facebook/systrace/TraceDirect;->b:Z

    if-eqz v0, :cond_0

    .line 84
    :goto_0
    return-void

    .line 83
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/facebook/systrace/TraceDirect;->nativeAsyncTraceBegin(Ljava/lang/String;IJ)V

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;IJ)V
    .locals 2

    .prologue
    .line 101
    sget-boolean v0, Lcom/facebook/systrace/TraceDirect;->b:Z

    if-eqz v0, :cond_0

    .line 106
    :goto_0
    return-void

    .line 105
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/facebook/systrace/TraceDirect;->nativeAsyncTraceEnd(Ljava/lang/String;IJ)V

    goto :goto_0
.end method

.method private static native nativeAsyncTraceBegin(Ljava/lang/String;IJ)V
.end method

.method public static native nativeAsyncTraceCancel(Ljava/lang/String;I)V
.end method

.method private static native nativeAsyncTraceEnd(Ljava/lang/String;IJ)V
.end method

.method public static native nativeAsyncTraceRename(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public static native nativeAsyncTraceStageBegin(Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public static native nativeBeginSection(Ljava/lang/String;)V
.end method

.method public static native nativeBeginSectionWithArgs(Ljava/lang/StringBuilder;)V
.end method

.method public static native nativeEndAsyncFlow(Ljava/lang/String;I)V
.end method

.method public static native nativeEndSection()V
.end method

.method public static native nativeEndSectionWithArgs(Ljava/lang/StringBuilder;)V
.end method

.method public static native nativeSetEnabledTags(J)V
.end method

.method public static native nativeStartAsyncFlow(Ljava/lang/String;I)V
.end method

.method private static native nativeStepAsyncFlow(Ljava/lang/String;I)V
.end method

.method public static native nativeTraceCounter(Ljava/lang/String;I)V
.end method

.method public static native nativeTraceInstant(Ljava/lang/String;Ljava/lang/String;C)V
.end method

.method public static native nativeTraceMetadata(Ljava/lang/String;Ljava/lang/String;I)V
.end method
