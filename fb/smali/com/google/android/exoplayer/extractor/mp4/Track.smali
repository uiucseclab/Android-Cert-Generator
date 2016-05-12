.class public final Lcom/google/android/exoplayer/extractor/mp4/Track;
.super Ljava/lang/Object;
.source "mqtt_socket_connect"


# static fields
.field public static final a:I

.field public static final b:I

.field public static final c:I

.field public static final d:I


# instance fields
.field public final e:I

.field public final f:I

.field public final g:J

.field public final h:J

.field public final i:Lcom/google/android/exoplayer/MediaFormat;

.field public final j:[Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;

.field public final k:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-string v0, "vide"

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Util;->e(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer/extractor/mp4/Track;->a:I

    .line 34
    const-string v0, "soun"

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Util;->e(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer/extractor/mp4/Track;->b:I

    .line 38
    const-string v0, "text"

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Util;->e(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer/extractor/mp4/Track;->c:I

    .line 42
    const-string v0, "sbtl"

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Util;->e(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer/extractor/mp4/Track;->d:I

    return-void
.end method

.method public constructor <init>(IIJJLcom/google/android/exoplayer/MediaFormat;[Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;I)V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput p1, p0, Lcom/google/android/exoplayer/extractor/mp4/Track;->e:I

    .line 83
    iput p2, p0, Lcom/google/android/exoplayer/extractor/mp4/Track;->f:I

    .line 84
    iput-wide p3, p0, Lcom/google/android/exoplayer/extractor/mp4/Track;->g:J

    .line 85
    iput-wide p5, p0, Lcom/google/android/exoplayer/extractor/mp4/Track;->h:J

    .line 86
    iput-object p7, p0, Lcom/google/android/exoplayer/extractor/mp4/Track;->i:Lcom/google/android/exoplayer/MediaFormat;

    .line 87
    iput-object p8, p0, Lcom/google/android/exoplayer/extractor/mp4/Track;->j:[Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;

    .line 88
    iput p9, p0, Lcom/google/android/exoplayer/extractor/mp4/Track;->k:I

    .line 89
    return-void
.end method
