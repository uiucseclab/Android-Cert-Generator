.class final Lcom/google/android/exoplayer/dash/mpd/DashSingleSegmentIndex;
.super Ljava/lang/Object;
.source "no"

# interfaces
.implements Lcom/google/android/exoplayer/dash/DashSegmentIndex;


# instance fields
.field private final a:J

.field private final b:J

.field private final c:Lcom/google/android/exoplayer/dash/mpd/RangedUri;


# direct methods
.method public constructor <init>(JJLcom/google/android/exoplayer/dash/mpd/RangedUri;)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-wide p1, p0, Lcom/google/android/exoplayer/dash/mpd/DashSingleSegmentIndex;->a:J

    .line 36
    iput-wide p3, p0, Lcom/google/android/exoplayer/dash/mpd/DashSingleSegmentIndex;->b:J

    .line 37
    iput-object p5, p0, Lcom/google/android/exoplayer/dash/mpd/DashSingleSegmentIndex;->c:Lcom/google/android/exoplayer/dash/mpd/RangedUri;

    .line 38
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public final a(J)I
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public final a(I)J
    .locals 2

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/google/android/exoplayer/dash/mpd/DashSingleSegmentIndex;->a:J

    return-wide v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public final b(I)J
    .locals 2

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/google/android/exoplayer/dash/mpd/DashSingleSegmentIndex;->b:J

    return-wide v0
.end method

.method public final c(I)Lcom/google/android/exoplayer/dash/mpd/RangedUri;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/mpd/DashSingleSegmentIndex;->c:Lcom/google/android/exoplayer/dash/mpd/RangedUri;

    return-object v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x1

    return v0
.end method
