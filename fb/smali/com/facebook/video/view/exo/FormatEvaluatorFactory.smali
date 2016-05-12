.class public Lcom/facebook/video/view/exo/FormatEvaluatorFactory;
.super Ljava/lang/Object;
.source "num_retained_traces"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public static a(Lcom/facebook/video/abtest/VideoDashConfig;Lcom/facebook/video/view/exo/PlaybackPreferences;Lcom/google/android/exoplayer/upstream/BandwidthMeter;ZLcom/facebook/device/DeviceConditionHelper;Lcom/facebook/common/network/FbDataConnectionManager;)Lcom/google/android/exoplayer/chunk/FormatEvaluator;
    .locals 7

    .prologue
    .line 21
    sget-object v0, Lcom/facebook/video/view/exo/FormatEvaluatorFactory$1;->a:[I

    iget-object v1, p0, Lcom/facebook/video/abtest/VideoDashConfig;->m:Lcom/facebook/video/abtest/VideoDashConfig$DashAbrPolicy;

    invoke-virtual {v1}, Lcom/facebook/video/abtest/VideoDashConfig$DashAbrPolicy;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 33
    new-instance v0, Lcom/facebook/video/view/exo/ManualEvaluator;

    invoke-direct {v0, p1}, Lcom/facebook/video/view/exo/ManualEvaluator;-><init>(Lcom/facebook/video/view/exo/PlaybackPreferences;)V

    :goto_0
    return-object v0

    .line 23
    :pswitch_0
    new-instance v0, Lcom/facebook/video/view/exo/DashCustomEvaluator;

    move-object v1, p2

    move v2, p3

    move-object v3, p1

    move-object v4, p0

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/facebook/video/view/exo/DashCustomEvaluator;-><init>(Lcom/google/android/exoplayer/upstream/BandwidthMeter;ZLcom/facebook/video/view/exo/PlaybackPreferences;Lcom/facebook/video/abtest/VideoDashConfig;Lcom/facebook/device/DeviceConditionHelper;Lcom/facebook/common/network/FbDataConnectionManager;)V

    goto :goto_0

    .line 31
    :pswitch_1
    new-instance v0, Lcom/google/android/exoplayer/chunk/FormatEvaluator$RandomEvaluator;

    invoke-direct {v0}, Lcom/google/android/exoplayer/chunk/FormatEvaluator$RandomEvaluator;-><init>()V

    goto :goto_0

    .line 21
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
