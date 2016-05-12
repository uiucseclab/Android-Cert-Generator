.class public Lcom/facebook/jni/HybridData;
.super Ljava/lang/Object;
.source "tracking"


# annotations
.annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
.end annotation


# instance fields
.field private mNativePointer:J
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string v0, "fbjni"

    invoke-static {v0}, Lcom/facebook/soloader/SoLoader;->a(Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/jni/HybridData;->mNativePointer:J

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 4

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/facebook/jni/HybridData;->mNativePointer:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/facebook/jni/HybridData;->resetNative()V

    .line 43
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 44
    return-void
.end method

.method public native resetNative()V
.end method
