.class public Lcom/facebook/dalvik/DalvikInternals;
.super Ljava/lang/Object;
.source "zh_HK"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, "fb_dalvik-internals"

    invoke-static {v0}, Lcom/facebook/soloader/SoLoader;->a(Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 109
    const-string v0, "java.vm.version"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 110
    if-eqz v0, :cond_0

    const-string v1, "0."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "1."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    :goto_0
    return-void

    .line 114
    :cond_0
    invoke-static {p0}, Lcom/facebook/dalvik/DalvikInternals;->nativeRegisterDalvikStreamWithBreakpad(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static native attemptAllocate(IJI)Z
.end method

.method public static native closeUnixFd(I)V
.end method

.method public static native deleteRecursive(Ljava/lang/String;)V
.end method

.method public static native dexOptCreateEmptyHeader(I)V
.end method

.method public static native enableDalvikInfoStream(Z)V
.end method

.method public static native fdatasync(II)V
.end method

.method public static synchronized native declared-synchronized fixDvmForCrossDexHack()V
.end method

.method public static synchronized native declared-synchronized fixLinearAllocBuffer(I)V
.end method

.method public static native fsync(II)V
.end method

.method public static native fsyncNamed(Ljava/lang/String;I)V
.end method

.method public static native getElapsedGcMillis()J
.end method

.method public static native getEnabledThreadArtHacks()I
.end method

.method public static native getOpenFileLinkCount(I)I
.end method

.method public static native getOwnerUid(Ljava/lang/String;)I
.end method

.method public static native getTotalGcCount()J
.end method

.method public static native hookSIGSEGV()V
.end method

.method public static native initGcInstrumentation()Z
.end method

.method public static synchronized native declared-synchronized installArtHacks(I)I
.end method

.method public static native ioprio_get(II)I
.end method

.method public static native ioprio_set(III)V
.end method

.method public static native link(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method private static native nativeRegisterDalvikStreamWithBreakpad(Ljava/lang/String;)V
.end method

.method public static native noop()V
.end method

.method public static native onColdStartEnd()V
.end method

.method public static native openUnixSyncReadWriteFd(Ljava/lang/String;)I
.end method

.method public static native readOdexDepBlock(Ljava/lang/String;)[B
.end method

.method public static native realpath(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native replaceOdexDepBlock(I[B)V
.end method

.method public static native setEnabledThreadArtHacks(I)I
.end method
