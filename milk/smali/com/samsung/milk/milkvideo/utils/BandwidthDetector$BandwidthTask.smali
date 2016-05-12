.class public Lcom/samsung/milk/milkvideo/utils/BandwidthDetector$BandwidthTask;
.super Landroid/os/AsyncTask;
.source "BandwidthDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/milk/milkvideo/utils/BandwidthDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "BandwidthTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/milk/milkvideo/utils/BandwidthDetector;


# direct methods
.method protected constructor <init>(Lcom/samsung/milk/milkvideo/utils/BandwidthDetector;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/utils/BandwidthDetector$BandwidthTask;->this$0:Lcom/samsung/milk/milkvideo/utils/BandwidthDetector;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 82
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/samsung/milk/milkvideo/utils/BandwidthDetector$BandwidthTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/utils/BandwidthDetector$BandwidthTask;->this$0:Lcom/samsung/milk/milkvideo/utils/BandwidthDetector;

    # invokes: Lcom/samsung/milk/milkvideo/utils/BandwidthDetector;->calculateNetworkBandwidth()V
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/utils/BandwidthDetector;->access$100(Lcom/samsung/milk/milkvideo/utils/BandwidthDetector;)V

    .line 86
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 2

    .prologue
    .line 107
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 108
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/utils/BandwidthDetector$BandwidthTask;->this$0:Lcom/samsung/milk/milkvideo/utils/BandwidthDetector;

    const/4 v1, 0x1

    # invokes: Lcom/samsung/milk/milkvideo/utils/BandwidthDetector;->writeBandwidthToSharedPreferences(I)V
    invoke-static {v0, v1}, Lcom/samsung/milk/milkvideo/utils/BandwidthDetector;->access$400(Lcom/samsung/milk/milkvideo/utils/BandwidthDetector;I)V

    .line 109
    const-string v0, "Bandwidth test: timed out after 2000 seconds"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 82
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/samsung/milk/milkvideo/utils/BandwidthDetector$BandwidthTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 8
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    .line 91
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 92
    iget-object v4, p0, Lcom/samsung/milk/milkvideo/utils/BandwidthDetector$BandwidthTask;->this$0:Lcom/samsung/milk/milkvideo/utils/BandwidthDetector;

    iget-object v4, v4, Lcom/samsung/milk/milkvideo/utils/BandwidthDetector;->timeService:Lcom/samsung/milk/milkvideo/utils/TimeService;

    invoke-virtual {v4}, Lcom/samsung/milk/milkvideo/utils/TimeService;->currentTimeMillis()J

    move-result-wide v0

    .line 95
    .local v0, "endTime":J
    iget-object v4, p0, Lcom/samsung/milk/milkvideo/utils/BandwidthDetector$BandwidthTask;->this$0:Lcom/samsung/milk/milkvideo/utils/BandwidthDetector;

    # getter for: Lcom/samsung/milk/milkvideo/utils/BandwidthDetector;->startTime:J
    invoke-static {v4}, Lcom/samsung/milk/milkvideo/utils/BandwidthDetector;->access$200(Lcom/samsung/milk/milkvideo/utils/BandwidthDetector;)J

    move-result-wide v4

    sub-long v4, v0, v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 96
    iget-object v4, p0, Lcom/samsung/milk/milkvideo/utils/BandwidthDetector$BandwidthTask;->this$0:Lcom/samsung/milk/milkvideo/utils/BandwidthDetector;

    # getter for: Lcom/samsung/milk/milkvideo/utils/BandwidthDetector;->fileSizeInBytes:J
    invoke-static {v4}, Lcom/samsung/milk/milkvideo/utils/BandwidthDetector;->access$300(Lcom/samsung/milk/milkvideo/utils/BandwidthDetector;)J

    move-result-wide v4

    iget-object v6, p0, Lcom/samsung/milk/milkvideo/utils/BandwidthDetector$BandwidthTask;->this$0:Lcom/samsung/milk/milkvideo/utils/BandwidthDetector;

    # getter for: Lcom/samsung/milk/milkvideo/utils/BandwidthDetector;->startTime:J
    invoke-static {v6}, Lcom/samsung/milk/milkvideo/utils/BandwidthDetector;->access$200(Lcom/samsung/milk/milkvideo/utils/BandwidthDetector;)J

    move-result-wide v6

    sub-long v6, v0, v6

    div-long/2addr v4, v6

    long-to-float v4, v4

    const v5, 0x3a83126f    # 0.001f

    mul-float v3, v4, v5

    .line 97
    .local v3, "rateInMegaBytes":F
    const/high16 v4, 0x41000000    # 8.0f

    mul-float v2, v3, v4

    .line 101
    .end local v3    # "rateInMegaBytes":F
    .local v2, "rateInMegaBits":F
    :goto_0
    iget-object v5, p0, Lcom/samsung/milk/milkvideo/utils/BandwidthDetector$BandwidthTask;->this$0:Lcom/samsung/milk/milkvideo/utils/BandwidthDetector;

    const/high16 v4, 0x40c00000    # 6.0f

    cmpl-float v4, v2, v4

    if-lez v4, :cond_1

    const/4 v4, 0x2

    :goto_1
    # invokes: Lcom/samsung/milk/milkvideo/utils/BandwidthDetector;->writeBandwidthToSharedPreferences(I)V
    invoke-static {v5, v4}, Lcom/samsung/milk/milkvideo/utils/BandwidthDetector;->access$400(Lcom/samsung/milk/milkvideo/utils/BandwidthDetector;I)V

    .line 102
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Approximate bandwidth: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Mbps"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    return-void

    .line 99
    .end local v2    # "rateInMegaBits":F
    :cond_0
    const/high16 v2, 0x40c00000    # 6.0f

    .restart local v2    # "rateInMegaBits":F
    goto :goto_0

    .line 101
    :cond_1
    const/4 v4, 0x1

    goto :goto_1
.end method
