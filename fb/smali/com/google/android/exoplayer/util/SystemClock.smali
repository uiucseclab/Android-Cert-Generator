.class public final Lcom/google/android/exoplayer/util/SystemClock;
.super Ljava/lang/Object;
.source "soft_error_category"

# interfaces
.implements Lcom/google/android/exoplayer/util/Clock;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .prologue
    .line 25
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method
