.class public Lcom/squareup/seismic/ShakeDetector;
.super Ljava/lang/Object;
.source "progress_message"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field private final a:Lcom/squareup/seismic/ShakeDetector$SampleQueue;

.field private final b:Lcom/squareup/seismic/ShakeDetector$Listener;

.field private c:Landroid/hardware/SensorManager;

.field private d:Landroid/hardware/Sensor;


# direct methods
.method public constructor <init>(Lcom/squareup/seismic/ShakeDetector$Listener;)V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lcom/squareup/seismic/ShakeDetector$SampleQueue;

    invoke-direct {v0}, Lcom/squareup/seismic/ShakeDetector$SampleQueue;-><init>()V

    iput-object v0, p0, Lcom/squareup/seismic/ShakeDetector;->a:Lcom/squareup/seismic/ShakeDetector$SampleQueue;

    .line 40
    iput-object p1, p0, Lcom/squareup/seismic/ShakeDetector;->b:Lcom/squareup/seismic/ShakeDetector$Listener;

    .line 41
    return-void
.end method

.method private static a(Landroid/hardware/SensorEvent;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 90
    iget-object v2, p0, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v1

    .line 91
    iget-object v3, p0, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v0

    .line 92
    iget-object v4, p0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x2

    aget v4, v4, v5

    .line 94
    mul-float/2addr v2, v2

    mul-float/2addr v3, v3

    add-float/2addr v2, v3

    mul-float v3, v4, v4

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 95
    const-wide/high16 v4, 0x402a000000000000L    # 13.0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 71
    iget-object v0, p0, Lcom/squareup/seismic/ShakeDetector;->d:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/squareup/seismic/ShakeDetector;->c:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/squareup/seismic/ShakeDetector;->d:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 73
    iput-object v2, p0, Lcom/squareup/seismic/ShakeDetector;->c:Landroid/hardware/SensorManager;

    .line 74
    iput-object v2, p0, Lcom/squareup/seismic/ShakeDetector;->d:Landroid/hardware/Sensor;

    .line 76
    :cond_0
    return-void
.end method

.method public final a(Landroid/hardware/SensorManager;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 50
    iget-object v2, p0, Lcom/squareup/seismic/ShakeDetector;->d:Landroid/hardware/Sensor;

    if-eqz v2, :cond_1

    .line 63
    :cond_0
    :goto_0
    return v0

    .line 54
    :cond_1
    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iput-object v2, p0, Lcom/squareup/seismic/ShakeDetector;->d:Landroid/hardware/Sensor;

    .line 58
    iget-object v2, p0, Lcom/squareup/seismic/ShakeDetector;->d:Landroid/hardware/Sensor;

    if-eqz v2, :cond_2

    .line 59
    iput-object p1, p0, Lcom/squareup/seismic/ShakeDetector;->c:Landroid/hardware/SensorManager;

    .line 60
    iget-object v2, p0, Lcom/squareup/seismic/ShakeDetector;->d:Landroid/hardware/Sensor;

    invoke-virtual {p1, p0, v2, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 63
    :cond_2
    iget-object v2, p0, Lcom/squareup/seismic/ShakeDetector;->d:Landroid/hardware/Sensor;

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .prologue
    .line 239
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4

    .prologue
    .line 79
    invoke-static {p1}, Lcom/squareup/seismic/ShakeDetector;->a(Landroid/hardware/SensorEvent;)Z

    move-result v0

    .line 80
    iget-wide v2, p1, Landroid/hardware/SensorEvent;->timestamp:J

    .line 81
    iget-object v1, p0, Lcom/squareup/seismic/ShakeDetector;->a:Lcom/squareup/seismic/ShakeDetector$SampleQueue;

    invoke-virtual {v1, v2, v3, v0}, Lcom/squareup/seismic/ShakeDetector$SampleQueue;->a(JZ)V

    .line 82
    iget-object v0, p0, Lcom/squareup/seismic/ShakeDetector;->a:Lcom/squareup/seismic/ShakeDetector$SampleQueue;

    invoke-virtual {v0}, Lcom/squareup/seismic/ShakeDetector$SampleQueue;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/squareup/seismic/ShakeDetector;->a:Lcom/squareup/seismic/ShakeDetector$SampleQueue;

    invoke-virtual {v0}, Lcom/squareup/seismic/ShakeDetector$SampleQueue;->a()V

    .line 84
    iget-object v0, p0, Lcom/squareup/seismic/ShakeDetector;->b:Lcom/squareup/seismic/ShakeDetector$Listener;

    invoke-interface {v0}, Lcom/squareup/seismic/ShakeDetector$Listener;->a()V

    .line 86
    :cond_0
    return-void
.end method
