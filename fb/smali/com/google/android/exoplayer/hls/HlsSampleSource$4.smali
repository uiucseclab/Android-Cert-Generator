.class public Lcom/google/android/exoplayer/hls/HlsSampleSource$4;
.super Ljava/lang/Object;
.source "mp41"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/io/IOException;

.field final synthetic b:Lcom/google/android/exoplayer/hls/HlsSampleSource;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/hls/HlsSampleSource;Ljava/io/IOException;)V
    .locals 0

    .prologue
    .line 608
    iput-object p1, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource$4;->b:Lcom/google/android/exoplayer/hls/HlsSampleSource;

    iput-object p2, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource$4;->a:Ljava/io/IOException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 612
    return-void
.end method
