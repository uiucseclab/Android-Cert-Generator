.class final enum Lcom/facebook/video/view/exo/ExoPlayerProgressiveDownloadRendererBuilder$VideoFormat;
.super Ljava/lang/Enum;
.source "odex must be empty"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/video/view/exo/ExoPlayerProgressiveDownloadRendererBuilder$VideoFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/video/view/exo/ExoPlayerProgressiveDownloadRendererBuilder$VideoFormat;

.field public static final enum MP4:Lcom/facebook/video/view/exo/ExoPlayerProgressiveDownloadRendererBuilder$VideoFormat;

.field public static final enum UNKNOWN:Lcom/facebook/video/view/exo/ExoPlayerProgressiveDownloadRendererBuilder$VideoFormat;

.field public static final enum WEBM:Lcom/facebook/video/view/exo/ExoPlayerProgressiveDownloadRendererBuilder$VideoFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 44
    new-instance v0, Lcom/facebook/video/view/exo/ExoPlayerProgressiveDownloadRendererBuilder$VideoFormat;

    const-string v1, "MP4"

    invoke-direct {v0, v1, v2}, Lcom/facebook/video/view/exo/ExoPlayerProgressiveDownloadRendererBuilder$VideoFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/video/view/exo/ExoPlayerProgressiveDownloadRendererBuilder$VideoFormat;->MP4:Lcom/facebook/video/view/exo/ExoPlayerProgressiveDownloadRendererBuilder$VideoFormat;

    .line 45
    new-instance v0, Lcom/facebook/video/view/exo/ExoPlayerProgressiveDownloadRendererBuilder$VideoFormat;

    const-string v1, "WEBM"

    invoke-direct {v0, v1, v3}, Lcom/facebook/video/view/exo/ExoPlayerProgressiveDownloadRendererBuilder$VideoFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/video/view/exo/ExoPlayerProgressiveDownloadRendererBuilder$VideoFormat;->WEBM:Lcom/facebook/video/view/exo/ExoPlayerProgressiveDownloadRendererBuilder$VideoFormat;

    .line 46
    new-instance v0, Lcom/facebook/video/view/exo/ExoPlayerProgressiveDownloadRendererBuilder$VideoFormat;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v4}, Lcom/facebook/video/view/exo/ExoPlayerProgressiveDownloadRendererBuilder$VideoFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/video/view/exo/ExoPlayerProgressiveDownloadRendererBuilder$VideoFormat;->UNKNOWN:Lcom/facebook/video/view/exo/ExoPlayerProgressiveDownloadRendererBuilder$VideoFormat;

    .line 43
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/facebook/video/view/exo/ExoPlayerProgressiveDownloadRendererBuilder$VideoFormat;

    sget-object v1, Lcom/facebook/video/view/exo/ExoPlayerProgressiveDownloadRendererBuilder$VideoFormat;->MP4:Lcom/facebook/video/view/exo/ExoPlayerProgressiveDownloadRendererBuilder$VideoFormat;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/video/view/exo/ExoPlayerProgressiveDownloadRendererBuilder$VideoFormat;->WEBM:Lcom/facebook/video/view/exo/ExoPlayerProgressiveDownloadRendererBuilder$VideoFormat;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/video/view/exo/ExoPlayerProgressiveDownloadRendererBuilder$VideoFormat;->UNKNOWN:Lcom/facebook/video/view/exo/ExoPlayerProgressiveDownloadRendererBuilder$VideoFormat;

    aput-object v1, v0, v4

    sput-object v0, Lcom/facebook/video/view/exo/ExoPlayerProgressiveDownloadRendererBuilder$VideoFormat;->$VALUES:[Lcom/facebook/video/view/exo/ExoPlayerProgressiveDownloadRendererBuilder$VideoFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/video/view/exo/ExoPlayerProgressiveDownloadRendererBuilder$VideoFormat;
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/facebook/video/view/exo/ExoPlayerProgressiveDownloadRendererBuilder$VideoFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/video/view/exo/ExoPlayerProgressiveDownloadRendererBuilder$VideoFormat;

    return-object v0
.end method

.method public static values()[Lcom/facebook/video/view/exo/ExoPlayerProgressiveDownloadRendererBuilder$VideoFormat;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/facebook/video/view/exo/ExoPlayerProgressiveDownloadRendererBuilder$VideoFormat;->$VALUES:[Lcom/facebook/video/view/exo/ExoPlayerProgressiveDownloadRendererBuilder$VideoFormat;

    invoke-virtual {v0}, [Lcom/facebook/video/view/exo/ExoPlayerProgressiveDownloadRendererBuilder$VideoFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/video/view/exo/ExoPlayerProgressiveDownloadRendererBuilder$VideoFormat;

    return-object v0
.end method
