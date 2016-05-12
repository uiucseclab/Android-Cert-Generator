.class public Lcom/google/android/exoplayer/chunk/ChunkSampleSource$5;
.super Ljava/lang/Object;
.source "persisteduid"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:J

.field final synthetic b:J

.field final synthetic c:Lcom/google/android/exoplayer/chunk/ChunkSampleSource;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/chunk/ChunkSampleSource;JJ)V
    .locals 0

    .prologue
    .line 627
    iput-object p1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$5;->c:Lcom/google/android/exoplayer/chunk/ChunkSampleSource;

    iput-wide p2, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$5;->a:J

    iput-wide p4, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$5;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 632
    return-void
.end method
