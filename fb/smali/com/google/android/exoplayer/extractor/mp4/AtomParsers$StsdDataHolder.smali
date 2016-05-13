.class final Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdDataHolder;
.super Ljava/lang/Object;
.source "mt"


# instance fields
.field public final a:[Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;

.field public b:Lcom/google/android/exoplayer/MediaFormat;

.field public c:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 691
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 692
    new-array v0, p1, [Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdDataHolder;->a:[Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;

    .line 693
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdDataHolder;->c:I

    .line 694
    return-void
.end method
