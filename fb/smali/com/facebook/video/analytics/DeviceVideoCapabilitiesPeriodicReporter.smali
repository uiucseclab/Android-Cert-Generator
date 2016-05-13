.class public Lcom/facebook/video/analytics/DeviceVideoCapabilitiesPeriodicReporter;
.super Ljava/lang/Object;
.source "retrying dex store load after reset"

# interfaces
.implements Lcom/facebook/analytics/logger/IAnalyticsPeriodicEventReporter;


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field private static final a:Ljava/lang/Class;

.field private static volatile b:Lcom/facebook/video/analytics/DeviceVideoCapabilitiesPeriodicReporter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/facebook/video/analytics/DeviceVideoCapabilitiesPeriodicReporter;

    sput-object v0, Lcom/facebook/video/analytics/DeviceVideoCapabilitiesPeriodicReporter;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method public static a(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/video/analytics/DeviceVideoCapabilitiesPeriodicReporter;
    .locals 5
    .param p0    # Lcom/facebook/inject/InjectorLike;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 42
    sget-object v0, Lcom/facebook/video/analytics/DeviceVideoCapabilitiesPeriodicReporter;->b:Lcom/facebook/video/analytics/DeviceVideoCapabilitiesPeriodicReporter;

    if-nez v0, :cond_1

    .line 43
    const-class v1, Lcom/facebook/video/analytics/DeviceVideoCapabilitiesPeriodicReporter;

    monitor-enter v1

    .line 44
    :try_start_0
    sget-object v0, Lcom/facebook/video/analytics/DeviceVideoCapabilitiesPeriodicReporter;->b:Lcom/facebook/video/analytics/DeviceVideoCapabilitiesPeriodicReporter;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 45
    invoke-static {}, Lcom/facebook/inject/ScopeSet;->a()Lcom/facebook/inject/ScopeSet;

    move-result-object v2

    .line 46
    invoke-virtual {v2}, Lcom/facebook/inject/ScopeSet;->b()B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result v3

    .line 48
    :try_start_1
    const-class v0, Lcom/facebook/inject/SingletonScope;

    invoke-interface {p0, v0}, Lcom/facebook/inject/Injector;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/inject/SingletonScope;

    .line 49
    invoke-virtual {v0}, Lcom/facebook/inject/SingletonScope;->enterScope()Lcom/facebook/inject/InjectorThreadStack;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v4

    .line 51
    :try_start_2
    invoke-interface {p0}, Lcom/facebook/inject/InjectorLike;->getApplicationInjector()Lcom/facebook/inject/FbInjector;

    invoke-static {}, Lcom/facebook/video/analytics/DeviceVideoCapabilitiesPeriodicReporter;->g()Lcom/facebook/video/analytics/DeviceVideoCapabilitiesPeriodicReporter;

    move-result-object v0

    sput-object v0, Lcom/facebook/video/analytics/DeviceVideoCapabilitiesPeriodicReporter;->b:Lcom/facebook/video/analytics/DeviceVideoCapabilitiesPeriodicReporter;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 53
    :try_start_3
    invoke-static {v4}, Lcom/facebook/inject/SingletonScope;->a(Lcom/facebook/inject/InjectorThreadStack;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 56
    :try_start_4
    invoke-virtual {v2, v3}, Lcom/facebook/inject/ScopeSet;->c(B)V

    .line 59
    :cond_0
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 61
    :cond_1
    sget-object v0, Lcom/facebook/video/analytics/DeviceVideoCapabilitiesPeriodicReporter;->b:Lcom/facebook/video/analytics/DeviceVideoCapabilitiesPeriodicReporter;

    return-object v0

    .line 53
    :catchall_0
    move-exception v0

    :try_start_5
    invoke-static {v4}, Lcom/facebook/inject/SingletonScope;->a(Lcom/facebook/inject/InjectorThreadStack;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 56
    :catchall_1
    move-exception v0

    :try_start_6
    invoke-virtual {v2, v3}, Lcom/facebook/inject/ScopeSet;->c(B)V

    throw v0

    .line 59
    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0
.end method

.method private static a(Lcom/facebook/analytics/logger/HoneyClientEvent;)V
    .locals 3

    .prologue
    .line 84
    const/4 v0, 0x0

    .line 86
    const/4 v1, 0x1

    :try_start_0
    invoke-static {v1}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 90
    :goto_0
    if-eqz v0, :cond_0

    .line 91
    const-string v1, "cam_duration"

    iget v2, v0, Landroid/media/CamcorderProfile;->duration:I

    invoke-virtual {p0, v1, v2}, Lcom/facebook/analytics/logger/HoneyClientEvent;->a(Ljava/lang/String;I)Lcom/facebook/analytics/logger/HoneyClientEvent;

    .line 92
    const-string v1, "cam_quality"

    iget v2, v0, Landroid/media/CamcorderProfile;->quality:I

    invoke-virtual {p0, v1, v2}, Lcom/facebook/analytics/logger/HoneyClientEvent;->a(Ljava/lang/String;I)Lcom/facebook/analytics/logger/HoneyClientEvent;

    .line 93
    const-string v1, "cam_fileFormat"

    iget v2, v0, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-virtual {p0, v1, v2}, Lcom/facebook/analytics/logger/HoneyClientEvent;->a(Ljava/lang/String;I)Lcom/facebook/analytics/logger/HoneyClientEvent;

    .line 94
    const-string v1, "cam_vCodec"

    iget v2, v0, Landroid/media/CamcorderProfile;->videoCodec:I

    invoke-virtual {p0, v1, v2}, Lcom/facebook/analytics/logger/HoneyClientEvent;->a(Ljava/lang/String;I)Lcom/facebook/analytics/logger/HoneyClientEvent;

    .line 95
    const-string v1, "cam_vBitRate"

    iget v2, v0, Landroid/media/CamcorderProfile;->videoBitRate:I

    invoke-virtual {p0, v1, v2}, Lcom/facebook/analytics/logger/HoneyClientEvent;->a(Ljava/lang/String;I)Lcom/facebook/analytics/logger/HoneyClientEvent;

    .line 96
    const-string v1, "cam_vFrameRate"

    iget v2, v0, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {p0, v1, v2}, Lcom/facebook/analytics/logger/HoneyClientEvent;->a(Ljava/lang/String;I)Lcom/facebook/analytics/logger/HoneyClientEvent;

    .line 97
    const-string v1, "cam_vFrameWidth"

    iget v2, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {p0, v1, v2}, Lcom/facebook/analytics/logger/HoneyClientEvent;->a(Ljava/lang/String;I)Lcom/facebook/analytics/logger/HoneyClientEvent;

    .line 98
    const-string v1, "cam_vFrameHeight"

    iget v2, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {p0, v1, v2}, Lcom/facebook/analytics/logger/HoneyClientEvent;->a(Ljava/lang/String;I)Lcom/facebook/analytics/logger/HoneyClientEvent;

    .line 99
    const-string v1, "cam_aCodec"

    iget v2, v0, Landroid/media/CamcorderProfile;->audioCodec:I

    invoke-virtual {p0, v1, v2}, Lcom/facebook/analytics/logger/HoneyClientEvent;->a(Ljava/lang/String;I)Lcom/facebook/analytics/logger/HoneyClientEvent;

    .line 100
    const-string v1, "cam_aBitRate"

    iget v2, v0, Landroid/media/CamcorderProfile;->audioBitRate:I

    invoke-virtual {p0, v1, v2}, Lcom/facebook/analytics/logger/HoneyClientEvent;->a(Ljava/lang/String;I)Lcom/facebook/analytics/logger/HoneyClientEvent;

    .line 101
    const-string v1, "cam_aSampleRate"

    iget v2, v0, Landroid/media/CamcorderProfile;->audioSampleRate:I

    invoke-virtual {p0, v1, v2}, Lcom/facebook/analytics/logger/HoneyClientEvent;->a(Ljava/lang/String;I)Lcom/facebook/analytics/logger/HoneyClientEvent;

    .line 102
    const-string v1, "cam_aChannels"

    iget v0, v0, Landroid/media/CamcorderProfile;->audioChannels:I

    invoke-virtual {p0, v1, v0}, Lcom/facebook/analytics/logger/HoneyClientEvent;->a(Ljava/lang/String;I)Lcom/facebook/analytics/logger/HoneyClientEvent;

    .line 104
    :cond_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static b(Lcom/facebook/analytics/logger/HoneyClientEvent;)V
    .locals 12
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    const/16 v11, 0x8

    const/4 v10, 0x4

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 111
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    .line 112
    invoke-virtual {v4, v8, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 113
    invoke-virtual {v4, v10, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 114
    invoke-virtual {v4, v9, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 115
    invoke-virtual {v4, v11, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 117
    const/4 v1, 0x0

    .line 119
    :try_start_0
    invoke-static {}, Lcom/facebook/video/analytics/DeviceVideoCapabilitiesPeriodicReporter;->e()Landroid/util/Pair;

    move-result-object v1

    .line 120
    if-eqz v1, :cond_1

    .line 121
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/media/MediaCodecInfo$CodecCapabilities;

    move v2, v3

    .line 122
    :goto_0
    iget-object v5, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    array-length v5, v5

    if-ge v2, v5, :cond_1

    .line 123
    iget-object v5, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    aget-object v5, v5, v2

    .line 124
    iget v6, v5, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    const/4 v7, -0x1

    invoke-virtual {v4, v6, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v6

    .line 125
    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    .line 129
    iget v7, v5, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    if-le v7, v6, :cond_0

    .line 130
    iget v6, v5, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    iget v5, v5, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {v4, v6, v5}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 134
    :catch_0
    move-exception v0

    .line 135
    sget-object v2, Lcom/facebook/video/analytics/DeviceVideoCapabilitiesPeriodicReporter;->a:Ljava/lang/Class;

    const-string v5, "Error trying to get decoder capabilities"

    invoke-static {v2, v5, v0}, Lcom/facebook/debug/log/BLog;->b(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 138
    :cond_1
    if-nez v1, :cond_2

    .line 164
    :goto_1
    return-void

    .line 142
    :cond_2
    const/4 v0, 0x5

    new-array v2, v0, [Ljava/lang/Object;

    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/media/MediaCodecInfo;

    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {v4, v8}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v8

    invoke-virtual {v4, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v9

    const/4 v0, 0x3

    invoke-virtual {v4, v9}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {v4, v11}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v10

    .line 151
    const-string v2, "h264_decoder"

    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/media/MediaCodecInfo;

    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/facebook/analytics/logger/HoneyClientEvent;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/analytics/logger/HoneyClientEvent;

    .line 152
    const-string v0, "h264_base_level"

    invoke-virtual {v4, v8}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/facebook/analytics/logger/HoneyClientEvent;->a(Ljava/lang/String;I)Lcom/facebook/analytics/logger/HoneyClientEvent;

    .line 155
    const-string v0, "h264_ext_level"

    invoke-virtual {v4, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/facebook/analytics/logger/HoneyClientEvent;->a(Ljava/lang/String;I)Lcom/facebook/analytics/logger/HoneyClientEvent;

    .line 158
    const-string v0, "h264_main_level"

    invoke-virtual {v4, v9}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/facebook/analytics/logger/HoneyClientEvent;->a(Ljava/lang/String;I)Lcom/facebook/analytics/logger/HoneyClientEvent;

    .line 161
    const-string v0, "h264_high_level"

    invoke-virtual {v4, v11}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/facebook/analytics/logger/HoneyClientEvent;->a(Ljava/lang/String;I)Lcom/facebook/analytics/logger/HoneyClientEvent;

    goto :goto_1
.end method

.method private d()Lcom/facebook/analytics/logger/HoneyClientEvent;
    .locals 5

    .prologue
    .line 65
    new-instance v0, Lcom/facebook/analytics/logger/HoneyClientEvent;

    invoke-virtual {p0}, Lcom/facebook/video/analytics/DeviceVideoCapabilitiesPeriodicReporter;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/analytics/logger/HoneyClientEvent;-><init>(Ljava/lang/String;)V

    .line 66
    const-string v1, "brand"

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/analytics/logger/HoneyClientEvent;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/analytics/logger/HoneyClientEvent;

    .line 67
    const-string v1, "manufacturer"

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/analytics/logger/HoneyClientEvent;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/analytics/logger/HoneyClientEvent;

    .line 68
    const-string v1, "video"

    invoke-virtual {v0, v1}, Lcom/facebook/analytics/logger/HoneyClientEvent;->g(Ljava/lang/String;)Lcom/facebook/analytics/logger/HoneyClientEvent;

    .line 69
    invoke-static {v0}, Lcom/facebook/video/analytics/DeviceVideoCapabilitiesPeriodicReporter;->a(Lcom/facebook/analytics/logger/HoneyClientEvent;)V

    .line 70
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    .line 72
    invoke-static {v0}, Lcom/facebook/video/analytics/DeviceVideoCapabilitiesPeriodicReporter;->b(Lcom/facebook/analytics/logger/HoneyClientEvent;)V

    .line 73
    .line 168
    invoke-static {}, Lcom/facebook/video/analytics/DeviceVideoCapabilitiesPeriodicReporter;->f()Ljava/lang/String;

    move-result-object v3

    .line 170
    const-string v4, "vp9_decoder"

    invoke-virtual {v0, v4, v3}, Lcom/facebook/analytics/logger/HoneyClientEvent;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/analytics/logger/HoneyClientEvent;

    .line 171
    .line 76
    :cond_0
    return-object v0
.end method

.method private static e()Landroid/util/Pair;
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Landroid/media/MediaCodecInfo;",
            "Landroid/media/MediaCodecInfo$CodecCapabilities;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 179
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v3

    move v2, v1

    .line 180
    :goto_0
    if-ge v2, v3, :cond_2

    .line 181
    invoke-static {v2}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v4

    .line 182
    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v0

    if-nez v0, :cond_1

    .line 185
    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v5

    move v0, v1

    .line 186
    :goto_1
    array-length v6, v5

    if-ge v0, v6, :cond_1

    .line 187
    aget-object v6, v5, v0

    const-string v7, "video/avc"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 188
    const-string v0, "video/avc"

    invoke-virtual {v4, v0}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 194
    :goto_2
    return-object v0

    .line 186
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 180
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 194
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public static f()Ljava/lang/String;
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 199
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v1

    .line 200
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 201
    invoke-static {v0}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v2

    .line 202
    invoke-virtual {v2}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v3

    if-nez v3, :cond_0

    .line 205
    invoke-virtual {v2}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "vp9"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 206
    invoke-virtual {v2}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v0

    .line 209
    :goto_1
    return-object v0

    .line 200
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 209
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static g()Lcom/facebook/video/analytics/DeviceVideoCapabilitiesPeriodicReporter;
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/facebook/video/analytics/DeviceVideoCapabilitiesPeriodicReporter;

    invoke-direct {v0}, Lcom/facebook/video/analytics/DeviceVideoCapabilitiesPeriodicReporter;-><init>()V

    .line 17
    return-object v0
.end method


# virtual methods
.method public final a(JLjava/lang/String;)Lcom/facebook/analytics/HoneyAnalyticsEvent;
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/facebook/video/analytics/DeviceVideoCapabilitiesPeriodicReporter;->d()Lcom/facebook/analytics/logger/HoneyClientEvent;

    move-result-object v0

    return-object v0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    const-string v0, "device_video_capabilities"

    return-object v0
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 51
    const-wide/32 v0, 0x240c8400

    return-wide v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method
