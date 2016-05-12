.class final Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;
.super Lcom/google/android/exoplayer/extractor/mp4/Atom;
.source "muted"


# instance fields
.field public final ah:Lcom/google/android/exoplayer/util/ParsableByteArray;


# direct methods
.method public constructor <init>(ILcom/google/android/exoplayer/util/ParsableByteArray;)V
    .locals 0

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/extractor/mp4/Atom;-><init>(I)V

    .line 133
    iput-object p2, p0, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->ah:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 134
    return-void
.end method
