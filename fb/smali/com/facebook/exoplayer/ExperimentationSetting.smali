.class public Lcom/facebook/exoplayer/ExperimentationSetting;
.super Ljava/lang/Object;
.source "title"


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;

.field public static f:Ljava/lang/String;

.field public static g:Ljava/lang/String;

.field public static h:Ljava/lang/String;

.field public static i:Ljava/lang/String;

.field public static j:Ljava/lang/String;

.field public static k:Ljava/lang/String;

.field public static l:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-string v0, "dash.audio_buffer_segment_num"

    sput-object v0, Lcom/facebook/exoplayer/ExperimentationSetting;->a:Ljava/lang/String;

    .line 12
    const-string v0, "dash.video_buffer_segment_num"

    sput-object v0, Lcom/facebook/exoplayer/ExperimentationSetting;->b:Ljava/lang/String;

    .line 15
    const-string v0, "dash.enable_abr"

    sput-object v0, Lcom/facebook/exoplayer/ExperimentationSetting;->c:Ljava/lang/String;

    .line 17
    const-string v0, "dash.buffer_segment_size"

    sput-object v0, Lcom/facebook/exoplayer/ExperimentationSetting;->d:Ljava/lang/String;

    .line 20
    const-string v0, "video.buffer_segment_size"

    sput-object v0, Lcom/facebook/exoplayer/ExperimentationSetting;->e:Ljava/lang/String;

    .line 23
    const-string v0, "video.buffer_segments_num"

    sput-object v0, Lcom/facebook/exoplayer/ExperimentationSetting;->f:Ljava/lang/String;

    .line 26
    const-string v0, "video.min_buffer_ms"

    sput-object v0, Lcom/facebook/exoplayer/ExperimentationSetting;->g:Ljava/lang/String;

    .line 29
    const-string v0, "video.min_rebuffer_ms"

    sput-object v0, Lcom/facebook/exoplayer/ExperimentationSetting;->h:Ljava/lang/String;

    .line 32
    const-string v0, "dash.low_watermark_ms"

    sput-object v0, Lcom/facebook/exoplayer/ExperimentationSetting;->i:Ljava/lang/String;

    .line 35
    const-string v0, "dash.high_watermark_ms"

    sput-object v0, Lcom/facebook/exoplayer/ExperimentationSetting;->j:Ljava/lang/String;

    .line 38
    const-string v0, "dash.low_buffer_load"

    sput-object v0, Lcom/facebook/exoplayer/ExperimentationSetting;->k:Ljava/lang/String;

    .line 41
    const-string v0, "dash.high_buffer_load"

    sput-object v0, Lcom/facebook/exoplayer/ExperimentationSetting;->l:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/Map;)I
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/facebook/exoplayer/ExperimentationSetting;->a:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    sget-object v0, Lcom/facebook/exoplayer/ExperimentationSetting;->a:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 49
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x3c

    goto :goto_0
.end method

.method public static b(Ljava/util/Map;)I
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/facebook/exoplayer/ExperimentationSetting;->b:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    sget-object v0, Lcom/facebook/exoplayer/ExperimentationSetting;->b:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 56
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xc8

    goto :goto_0
.end method

.method public static c(Ljava/util/Map;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 60
    sget-object v0, Lcom/facebook/exoplayer/ExperimentationSetting;->c:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    sget-object v0, Lcom/facebook/exoplayer/ExperimentationSetting;->c:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 63
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 61
    goto :goto_0

    :cond_1
    move v0, v1

    .line 63
    goto :goto_0
.end method

.method public static d(Ljava/util/Map;)I
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/facebook/exoplayer/ExperimentationSetting;->d:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    sget-object v0, Lcom/facebook/exoplayer/ExperimentationSetting;->d:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 70
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x10000

    goto :goto_0
.end method

.method public static e(Ljava/util/Map;)I
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/facebook/exoplayer/ExperimentationSetting;->e:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    sget-object v0, Lcom/facebook/exoplayer/ExperimentationSetting;->e:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 77
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x10000

    goto :goto_0
.end method

.method public static f(Ljava/util/Map;)I
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/facebook/exoplayer/ExperimentationSetting;->f:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    sget-object v0, Lcom/facebook/exoplayer/ExperimentationSetting;->f:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 84
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x20

    goto :goto_0
.end method

.method public static g(Ljava/util/Map;)I
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/facebook/exoplayer/ExperimentationSetting;->g:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    sget-object v0, Lcom/facebook/exoplayer/ExperimentationSetting;->g:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 91
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x1f4

    goto :goto_0
.end method

.method public static h(Ljava/util/Map;)I
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lcom/facebook/exoplayer/ExperimentationSetting;->h:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    sget-object v0, Lcom/facebook/exoplayer/ExperimentationSetting;->h:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 98
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x7d0

    goto :goto_0
.end method
