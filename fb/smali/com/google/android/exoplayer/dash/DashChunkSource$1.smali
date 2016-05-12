.class Lcom/google/android/exoplayer/dash/DashChunkSource$1;
.super Ljava/lang/Object;
.source "no_auto_fg"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer/TimeRange;

.field final synthetic b:Lcom/google/android/exoplayer/dash/DashChunkSource;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer/dash/DashChunkSource;Lcom/google/android/exoplayer/TimeRange;)V
    .locals 0

    .prologue
    .line 725
    iput-object p1, p0, Lcom/google/android/exoplayer/dash/DashChunkSource$1;->b:Lcom/google/android/exoplayer/dash/DashChunkSource;

    iput-object p2, p0, Lcom/google/android/exoplayer/dash/DashChunkSource$1;->a:Lcom/google/android/exoplayer/TimeRange;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 729
    return-void
.end method
