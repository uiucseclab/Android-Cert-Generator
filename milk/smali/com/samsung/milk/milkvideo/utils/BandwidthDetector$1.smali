.class Lcom/samsung/milk/milkvideo/utils/BandwidthDetector$1;
.super Ljava/lang/Object;
.source "BandwidthDetector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/milk/milkvideo/utils/BandwidthDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/milk/milkvideo/utils/BandwidthDetector;


# direct methods
.method constructor <init>(Lcom/samsung/milk/milkvideo/utils/BandwidthDetector;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/utils/BandwidthDetector$1;->this$0:Lcom/samsung/milk/milkvideo/utils/BandwidthDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/utils/BandwidthDetector$1;->this$0:Lcom/samsung/milk/milkvideo/utils/BandwidthDetector;

    # getter for: Lcom/samsung/milk/milkvideo/utils/BandwidthDetector;->bandwidthTask:Lcom/samsung/milk/milkvideo/utils/BandwidthDetector$BandwidthTask;
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/utils/BandwidthDetector;->access$000(Lcom/samsung/milk/milkvideo/utils/BandwidthDetector;)Lcom/samsung/milk/milkvideo/utils/BandwidthDetector$BandwidthTask;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/milk/milkvideo/utils/BandwidthDetector$BandwidthTask;->cancel(Z)Z

    .line 43
    return-void
.end method
