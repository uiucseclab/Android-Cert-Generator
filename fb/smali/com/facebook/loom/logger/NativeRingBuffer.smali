.class Lcom/facebook/loom/logger/NativeRingBuffer;
.super Ljava/lang/Object;
.source "use_compression"


# annotations
.annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
.end annotation


# instance fields
.field public mPtr:J
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-string v0, "dextr"

    invoke-static {v0}, Lcom/facebook/soloader/SoLoader;->a(Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    invoke-direct {p0, p1}, Lcom/facebook/loom/logger/NativeRingBuffer;->nativeInit(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Could not initialize native buffer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_0
    return-void
.end method

.method private native nativeDeinit()V
.end method

.method private native nativeInit(I)Z
.end method

.method private static native nativeWrite(JIIIIIJJ)V
.end method

.method private static native nativeWriteAndGetCursor(JLcom/facebook/loom/logger/NativeRingBuffer$Cursor;IIIIIJJ)V
.end method


# virtual methods
.method final a()Lcom/facebook/loom/logger/NativeRingBuffer$Cursor;
    .locals 1

    .prologue
    .line 172
    new-instance v0, Lcom/facebook/loom/logger/NativeRingBuffer$Cursor;

    invoke-direct {v0, p0}, Lcom/facebook/loom/logger/NativeRingBuffer$Cursor;-><init>(Lcom/facebook/loom/logger/NativeRingBuffer;)V

    return-object v0
.end method

.method final a(IIIIIJJ)V
    .locals 12

    .prologue
    .line 132
    iget-wide v1, p0, Lcom/facebook/loom/logger/NativeRingBuffer;->mPtr:J

    move v3, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    invoke-static/range {v1 .. v11}, Lcom/facebook/loom/logger/NativeRingBuffer;->nativeWrite(JIIIIIJJ)V

    .line 133
    return-void
.end method

.method final a(Lcom/facebook/loom/logger/NativeRingBuffer$Cursor;IIIIIJJ)V
    .locals 13

    .prologue
    .line 144
    iget-wide v0, p0, Lcom/facebook/loom/logger/NativeRingBuffer;->mPtr:J

    move-object v2, p1

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    invoke-static/range {v0 .. v11}, Lcom/facebook/loom/logger/NativeRingBuffer;->nativeWriteAndGetCursor(JLcom/facebook/loom/logger/NativeRingBuffer$Cursor;IIIIIJJ)V

    .line 145
    return-void
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/facebook/loom/logger/NativeRingBuffer;->nativeDeinit()V

    .line 117
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 118
    return-void
.end method
