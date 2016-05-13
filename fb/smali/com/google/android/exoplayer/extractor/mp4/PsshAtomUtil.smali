.class public final Lcom/google/android/exoplayer/extractor/mp4/PsshAtomUtil;
.super Ljava/lang/Object;
.source "mr"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([B)Ljava/util/UUID;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 59
    new-instance v1, Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-direct {v1, p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>([B)V

    .line 60
    invoke-static {v1, v0}, Lcom/google/android/exoplayer/extractor/mp4/PsshAtomUtil;->a(Lcom/google/android/exoplayer/util/ParsableByteArray;Ljava/util/UUID;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 64
    :goto_0
    return-object v0

    .line 63
    :cond_0
    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->b(I)V

    .line 64
    new-instance v0, Ljava/util/UUID;

    invoke-virtual {v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->k()J

    move-result-wide v2

    invoke-virtual {v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->k()J

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Ljava/util/UUID;-><init>(JJ)V

    goto :goto_0
.end method

.method private static a(Lcom/google/android/exoplayer/util/ParsableByteArray;Ljava/util/UUID;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 91
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->c()I

    move-result v1

    const/16 v2, 0x20

    if-ge v1, v2, :cond_1

    .line 119
    :cond_0
    :goto_0
    return v0

    .line 95
    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->b(I)V

    .line 96
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->j()I

    move-result v1

    .line 97
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->b()I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    if-ne v1, v2, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->j()I

    move-result v1

    .line 102
    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Atom;->I:I

    if-ne v1, v2, :cond_0

    .line 106
    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->b(I)V

    .line 107
    if-nez p1, :cond_3

    .line 108
    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->c(I)V

    .line 114
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->j()I

    move-result v1

    .line 115
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->b()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 119
    const/4 v0, 0x1

    goto :goto_0

    .line 109
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->k()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->k()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    goto :goto_0
.end method
