.class public abstract Lcom/google/android/exoplayer/dash/mpd/Representation;
.super Ljava/lang/Object;
.source "next is called before having a strategy."

# interfaces
.implements Lcom/google/android/exoplayer/chunk/FormatWrapper;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:J

.field public final c:Lcom/google/android/exoplayer/chunk/Format;

.field public final d:J

.field public final e:J

.field public final f:J

.field private final g:Lcom/google/android/exoplayer/dash/mpd/RangedUri;


# direct methods
.method private constructor <init>(JJLjava/lang/String;JLcom/google/android/exoplayer/chunk/Format;Lcom/google/android/exoplayer/dash/mpd/SegmentBase;)V
    .locals 3

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-wide p1, p0, Lcom/google/android/exoplayer/dash/mpd/Representation;->d:J

    .line 100
    iput-wide p3, p0, Lcom/google/android/exoplayer/dash/mpd/Representation;->e:J

    .line 101
    iput-object p5, p0, Lcom/google/android/exoplayer/dash/mpd/Representation;->a:Ljava/lang/String;

    .line 102
    iput-wide p6, p0, Lcom/google/android/exoplayer/dash/mpd/Representation;->b:J

    .line 103
    iput-object p8, p0, Lcom/google/android/exoplayer/dash/mpd/Representation;->c:Lcom/google/android/exoplayer/chunk/Format;

    .line 104
    invoke-virtual {p9, p0}, Lcom/google/android/exoplayer/dash/mpd/SegmentBase;->a(Lcom/google/android/exoplayer/dash/mpd/Representation;)Lcom/google/android/exoplayer/dash/mpd/RangedUri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/dash/mpd/Representation;->g:Lcom/google/android/exoplayer/dash/mpd/RangedUri;

    .line 105
    invoke-virtual {p9}, Lcom/google/android/exoplayer/dash/mpd/SegmentBase;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer/dash/mpd/Representation;->f:J

    .line 106
    return-void
.end method

.method synthetic constructor <init>(JJLjava/lang/String;JLcom/google/android/exoplayer/chunk/Format;Lcom/google/android/exoplayer/dash/mpd/SegmentBase;B)V
    .locals 1

    .prologue
    .line 29
    invoke-direct/range {p0 .. p9}, Lcom/google/android/exoplayer/dash/mpd/Representation;-><init>(JJLjava/lang/String;JLcom/google/android/exoplayer/chunk/Format;Lcom/google/android/exoplayer/dash/mpd/SegmentBase;)V

    return-void
.end method

.method public static a(JJLjava/lang/String;JLcom/google/android/exoplayer/chunk/Format;Lcom/google/android/exoplayer/dash/mpd/SegmentBase;)Lcom/google/android/exoplayer/dash/mpd/Representation;
    .locals 14

    .prologue
    .line 85
    move-object/from16 v0, p8

    instance-of v2, v0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;

    if-eqz v2, :cond_0

    .line 86
    new-instance v2, Lcom/google/android/exoplayer/dash/mpd/Representation$SingleSegmentRepresentation;

    move-object/from16 v11, p8

    check-cast v11, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;

    const-wide/16 v12, -0x1

    move-wide v3, p0

    move-wide/from16 v5, p2

    move-object/from16 v7, p4

    move-wide/from16 v8, p5

    move-object/from16 v10, p7

    invoke-direct/range {v2 .. v13}, Lcom/google/android/exoplayer/dash/mpd/Representation$SingleSegmentRepresentation;-><init>(JJLjava/lang/String;JLcom/google/android/exoplayer/chunk/Format;Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;J)V

    .line 89
    :goto_0
    return-object v2

    .line 88
    :cond_0
    move-object/from16 v0, p8

    instance-of v2, v0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;

    if-eqz v2, :cond_1

    .line 89
    new-instance v3, Lcom/google/android/exoplayer/dash/mpd/Representation$MultiSegmentRepresentation;

    move-object/from16 v12, p8

    check-cast v12, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;

    move-wide v4, p0

    move-wide/from16 v6, p2

    move-object/from16 v8, p4

    move-wide/from16 v9, p5

    move-object/from16 v11, p7

    invoke-direct/range {v3 .. v12}, Lcom/google/android/exoplayer/dash/mpd/Representation$MultiSegmentRepresentation;-><init>(JJLjava/lang/String;JLcom/google/android/exoplayer/chunk/Format;Lcom/google/android/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;)V

    move-object v2, v3

    goto :goto_0

    .line 92
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "segmentBase must be of type SingleSegmentBase or MultiSegmentBase"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public final bO_()Lcom/google/android/exoplayer/chunk/Format;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/mpd/Representation;->c:Lcom/google/android/exoplayer/chunk/Format;

    return-object v0
.end method

.method public final d()Lcom/google/android/exoplayer/dash/mpd/RangedUri;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/mpd/Representation;->g:Lcom/google/android/exoplayer/dash/mpd/RangedUri;

    return-object v0
.end method

.method public abstract e()Lcom/google/android/exoplayer/dash/mpd/RangedUri;
.end method

.method public abstract f()Lcom/google/android/exoplayer/dash/DashSegmentIndex;
.end method

.method public final g()Ljava/lang/String;
    .locals 4

    .prologue
    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/exoplayer/dash/mpd/Representation;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer/dash/mpd/Representation;->c:Lcom/google/android/exoplayer/chunk/Format;

    iget-object v1, v1, Lcom/google/android/exoplayer/chunk/Format;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/android/exoplayer/dash/mpd/Representation;->b:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
