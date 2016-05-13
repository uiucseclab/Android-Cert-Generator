.class public Lcom/google/android/exoplayer/chunk/ChunkSampleSource$4;
.super Ljava/lang/Object;
.source "persisteduid"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/io/IOException;

.field final synthetic b:Lcom/google/android/exoplayer/chunk/ChunkSampleSource;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/chunk/ChunkSampleSource;Ljava/io/IOException;)V
    .locals 0

    .prologue
    .line 616
    iput-object p1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$4;->b:Lcom/google/android/exoplayer/chunk/ChunkSampleSource;

    iput-object p2, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$4;->a:Ljava/io/IOException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 620
    return-void
.end method
