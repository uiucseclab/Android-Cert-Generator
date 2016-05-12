.class Lcom/google/android/exoplayer/chunk/ChunkSampleSource$1;
.super Ljava/lang/Object;
.source "persisteduid"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:J

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcom/google/android/exoplayer/chunk/Format;

.field final synthetic e:J

.field final synthetic f:J

.field final synthetic g:Lcom/google/android/exoplayer/chunk/ChunkSampleSource;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer/chunk/ChunkSampleSource;JIILcom/google/android/exoplayer/chunk/Format;JJ)V
    .locals 1

    .prologue
    .line 579
    iput-object p1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$1;->g:Lcom/google/android/exoplayer/chunk/ChunkSampleSource;

    iput-wide p2, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$1;->a:J

    iput p4, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$1;->b:I

    iput p5, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$1;->c:I

    iput-object p6, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$1;->d:Lcom/google/android/exoplayer/chunk/Format;

    iput-wide p7, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$1;->e:J

    iput-wide p9, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$1;->f:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 584
    return-void
.end method
