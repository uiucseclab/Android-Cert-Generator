.class public final enum Lcom/facebook/video/analytics/VideoDisplayedInfo$AutoPlayFailureReason;
.super Ljava/lang/Enum;
.source "tfhd"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/video/analytics/VideoDisplayedInfo$AutoPlayFailureReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/video/analytics/VideoDisplayedInfo$AutoPlayFailureReason;

.field public static final enum DISABLED_BY_360_AUTOPLAY_SENSOR_REQUIREMENT:Lcom/facebook/video/analytics/VideoDisplayedInfo$AutoPlayFailureReason;

.field public static final enum DISABLED_BY_360_AUTOPLAY_WIFI_REQUIREMENT:Lcom/facebook/video/analytics/VideoDisplayedInfo$AutoPlayFailureReason;

.field public static final enum DISABLED_BY_ALREADY_SEEN:Lcom/facebook/video/analytics/VideoDisplayedInfo$AutoPlayFailureReason;

.field public static final enum DISABLED_BY_AUTOPLAY_SETTING:Lcom/facebook/video/analytics/VideoDisplayedInfo$AutoPlayFailureReason;

.field public static final enum DISABLED_BY_CACHE_NOT_READY:Lcom/facebook/video/analytics/VideoDisplayedInfo$AutoPlayFailureReason;

.field public static final enum DISABLED_BY_CONNECTION:Lcom/facebook/video/analytics/VideoDisplayedInfo$AutoPlayFailureReason;

.field public static final enum DISABLED_BY_LOW_BATTERY:Lcom/facebook/video/analytics/VideoDisplayedInfo$AutoPlayFailureReason;

.field public static final enum DISABLED_BY_METERED_NETWORK:Lcom/facebook/video/analytics/VideoDisplayedInfo$AutoPlayFailureReason;

.field public static final enum DISABLED_BY_POWER_SAVING:Lcom/facebook/video/analytics/VideoDisplayedInfo$AutoPlayFailureReason;

.field public static final enum DISABLED_BY_SERVER:Lcom/facebook/video/analytics/VideoDisplayedInfo$AutoPlayFailureReason;

.field public static final enum DISABLED_BY_UNKNOWN_AUTOPLAY_SETTINGS:Lcom/facebook/video/analytics/VideoDisplayedInfo$AutoPlayFailureReason;

.field public static final enum DISABLED_BY_ZERORATING:Lcom/facebook/video/analytics/VideoDisplayedInfo$AutoPlayFailureReason;


# instance fields
.field public final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 33
    new-instance v0, Lcom/facebook/video/analytics/VideoDisplayedInfo$AutoPlayFailureReason;

    const-string v1, "DISABLED_BY_SERVER"

    const-string v2, "server_blocked"

    invoke-direct {v0, v1, v4, v2}, Lcom/facebook/video/analytics/VideoDisplayedInfo$AutoPlayFailureReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/video/analytics/VideoDisplayedInfo$AutoPlayFailureReason;->DISABLED_BY_SERVER:Lcom/facebook/video/analytics/VideoDisplayedInfo$AutoPlayFailureReason;

    .line 34
    new-instance v0, Lcom/facebook/video/analytics/VideoDisplayedInfo$AutoPlayFailureReason;

    const-string v1, "DISABLED_BY_AUTOPLAY_SETTING"

    const-string v2, "user_setting_off"

    invoke-direct {v0, v1, v5, v2}, Lcom/facebook/video/analytics/VideoDisplayedInfo$AutoPlayFailureReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/video/analytics/VideoDisplayedInfo$AutoPlayFailureReason;->DISABLED_BY_AUTOPLAY_SETTING:Lcom/facebook/video/analytics/VideoDisplayedInfo$AutoPlayFailureReason;

    .line 35
    new-instance v0, Lcom/facebook/video/analytics/VideoDisplayedInfo$AutoPlayFailureReason;

    const-string v1, "DISABLED_BY_CONNECTION"

    const-string v2, "network_connectivity_low"

    invoke-direct {v0, v1, v6, v2}, Lcom/facebook/video/analytics/VideoDisplayedInfo$AutoPlayFailureReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/video/analytics/VideoDisplayedInfo$AutoPlayFailureReason;->DISABLED_BY_CONNECTION:Lcom/facebook/video/analytics/VideoDisplayedInfo$AutoPlayFailureReason;

    .line 36
    new-instance v0, Lcom/facebook/video/analytics/VideoDisplayedInfo$AutoPlayFailureReason;

    const-string v1, "DISABLED_BY_ALREADY_SEEN"

    const-string v2, "video_already_seen"

    invoke-direct {v0, v1, v7, v2}, Lcom/facebook/video/analytics/VideoDisplayedInfo$AutoPlayFailureReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/video/analytics/VideoDisplayedInfo$AutoPlayFailureReason;->DISABLED_BY_ALREADY_SEEN:Lcom/facebook/video/analytics/VideoDisplayedInfo$AutoPlayFailureReason;

    .line 37
    new-instance v0, Lcom/facebook/video/analytics/VideoDisplayedInfo$AutoPlayFailureReason;

    const-string v1, "DISABLED_BY_UNKNOWN_AUTOPLAY_SETTINGS"

    const-string v2, "disabled_by_unknown_settings"

    invoke-direct {v0, v1, v8, v2}, Lcom/facebook/video/analytics/VideoDisplayedInfo$AutoPlayFailureReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/video/analytics/VideoDisplayedInfo$AutoPlayFailureReason;->DISABLED_BY_UNKNOWN_AUTOPLAY_SETTINGS:Lcom/facebook/video/analytics/VideoDisplayedInfo$AutoPlayFailureReason;

    .line 38
    new-instance v0, Lcom/facebook/video/analytics/VideoDisplayedInfo$AutoPlayFailureReason;

    const-string v1, "DISABLED_BY_ZERORATING"

    const/4 v2, 0x5

    const-string v3, "zerorating_enabled"

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/video/analytics/VideoDisplayedInfo$AutoPlayFailureReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/video/analytics/VideoDisplayedInfo$AutoPlayFailureReason;->DISABLED_BY_ZERORATING:Lcom/facebook/video/analytics/VideoDisplayedInfo$AutoPlayFailureReason;

    .line 39
    new-instance v0, Lcom/facebook/video/analytics/VideoDisplayedInfo$AutoPlayFailureReason;

    const-string v1, "DISABLED_BY_METERED_NETWORK"

    const/4 v2, 0x6

    const-string v3, "user_network_metered"

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/video/analytics/VideoDisplayedInfo$AutoPlayFailureReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/video/analytics/VideoDisplayedInfo$AutoPlayFailureReason;->DISABLED_BY_METERED_NETWORK:Lcom/facebook/video/analytics/VideoDisplayedInfo$AutoPlayFailureReason;

    .line 40
    new-instance v0, Lcom/facebook/video/analytics/VideoDisplayedInfo$AutoPlayFailureReason;

    const-string v1, "DISABLED_BY_LOW_BATTERY"

    const/4 v2, 0x7

    const-string v3, "low_battery_level"

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/video/analytics/VideoDisplayedInfo$AutoPlayFailureReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/video/analytics/VideoDisplayedInfo$AutoPlayFailureReason;->DISABLED_BY_LOW_BATTERY:Lcom/facebook/video/analytics/VideoDisplayedInfo$AutoPlayFailureReason;

    .line 41
    new-instance v0, Lcom/facebook/video/analytics/VideoDisplayedInfo$AutoPlayFailureReason;

    const-string v1, "DISABLED_BY_POWER_SAVING"

    const/16 v2, 0x8

    const-string v3, "power_saving_enabled"

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/video/analytics/VideoDisplayedInfo$AutoPlayFailureReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/video/analytics/VideoDisplayedInfo$AutoPlayFailureReason;->DISABLED_BY_POWER_SAVING:Lcom/facebook/video/analytics/VideoDisplayedInfo$AutoPlayFailureReason;

    .line 42
    new-instance v0, Lcom/facebook/video/analytics/VideoDisplayedInfo$AutoPlayFailureReason;

    const-string v1, "DISABLED_BY_CACHE_NOT_READY"

    const/16 v2, 0x9

    const-string v3, "cache_not_ready"

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/video/analytics/VideoDisplayedInfo$AutoPlayFailureReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/video/analytics/VideoDisplayedInfo$AutoPlayFailureReason;->DISABLED_BY_CACHE_NOT_READY:Lcom/facebook/video/analytics/VideoDisplayedInfo$AutoPlayFailureReason;

    .line 43
    new-instance v0, Lcom/facebook/video/analytics/VideoDisplayedInfo$AutoPlayFailureReason;

    const-string v1, "DISABLED_BY_360_AUTOPLAY_WIFI_REQUIREMENT"

    const/16 v2, 0xa

    const-string v3, "user_setting_failed_360_wifi_requirement"

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/video/analytics/VideoDisplayedInfo$AutoPlayFailureReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/video/analytics/VideoDisplayedInfo$AutoPlayFailureReason;->DISABLED_BY_360_AUTOPLAY_WIFI_REQUIREMENT:Lcom/facebook/video/analytics/VideoDisplayedInfo$AutoPlayFailureReason;

    .line 44
    new-instance v0, Lcom/facebook/video/analytics/VideoDisplayedInfo$AutoPlayFailureReason;

    const-string v1, "DISABLED_BY_360_AUTOPLAY_SENSOR_REQUIREMENT"

    const/16 v2, 0xb

    const-string v3, "user_setting_failed_360_sensor_requirement"

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/video/analytics/VideoDisplayedInfo$AutoPlayFailureReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/video/analytics/VideoDisplayedInfo$AutoPlayFailureReason;->DISABLED_BY_360_AUTOPLAY_SENSOR_REQUIREMENT:Lcom/facebook/video/analytics/VideoDisplayedInfo$AutoPlayFailureReason;

    .line 31
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/facebook/video/analytics/VideoDisplayedInfo$AutoPlayFailureReason;

    sget-object v1, Lcom/facebook/video/analytics/VideoDisplayedInfo$AutoPlayFailureReason;->DISABLED_BY_SERVER:Lcom/facebook/video/analytics/VideoDisplayedInfo$AutoPlayFailureReason;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/video/analytics/VideoDisplayedInfo$AutoPlayFailureReason;->DISABLED_BY_AUTOPLAY_SETTING:Lcom/facebook/video/analytics/VideoDisplayedInfo$AutoPlayFailureReason;

    aput-object v1, v0, v5

    sget-object v1, Lcom/facebook/video/analytics/VideoDisplayedInfo$AutoPlayFailureReason;->DISABLED_BY_CONNECTION:Lcom/facebook/video/analytics/VideoDisplayedInfo$AutoPlayFailureReason;

    aput-object v1, v0, v6

    sget-object v1, Lcom/facebook/video/analytics/VideoDisplayedInfo$AutoPlayFailureReason;->DISABLED_BY_ALREADY_SEEN:Lcom/facebook/video/analytics/VideoDisplayedInfo$AutoPlayFailureReason;

    aput-object v1, v0, v7

    sget-object v1, Lcom/facebook/video/analytics/VideoDisplayedInfo$AutoPlayFailureReason;->DISABLED_BY_UNKNOWN_AUTOPLAY_SETTINGS:Lcom/facebook/video/analytics/VideoDisplayedInfo$AutoPlayFailureReason;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/facebook/video/analytics/VideoDisplayedInfo$AutoPlayFailureReason;->DISABLED_BY_ZERORATING:Lcom/facebook/video/analytics/VideoDisplayedInfo$AutoPlayFailureReason;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/facebook/video/analytics/VideoDisplayedInfo$AutoPlayFailureReason;->DISABLED_BY_METERED_NETWORK:Lcom/facebook/video/analytics/VideoDisplayedInfo$AutoPlayFailureReason;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/facebook/video/analytics/VideoDisplayedInfo$AutoPlayFailureReason;->DISABLED_BY_LOW_BATTERY:Lcom/facebook/video/analytics/VideoDisplayedInfo$AutoPlayFailureReason;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/facebook/video/analytics/VideoDisplayedInfo$AutoPlayFailureReason;->DISABLED_BY_POWER_SAVING:Lcom/facebook/video/analytics/VideoDisplayedInfo$AutoPlayFailureReason;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/facebook/video/analytics/VideoDisplayedInfo$AutoPlayFailureReason;->DISABLED_BY_CACHE_NOT_READY:Lcom/facebook/video/analytics/VideoDisplayedInfo$AutoPlayFailureReason;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/facebook/video/analytics/VideoDisplayedInfo$AutoPlayFailureReason;->DISABLED_BY_360_AUTOPLAY_WIFI_REQUIREMENT:Lcom/facebook/video/analytics/VideoDisplayedInfo$AutoPlayFailureReason;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/facebook/video/analytics/VideoDisplayedInfo$AutoPlayFailureReason;->DISABLED_BY_360_AUTOPLAY_SENSOR_REQUIREMENT:Lcom/facebook/video/analytics/VideoDisplayedInfo$AutoPlayFailureReason;

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/video/analytics/VideoDisplayedInfo$AutoPlayFailureReason;->$VALUES:[Lcom/facebook/video/analytics/VideoDisplayedInfo$AutoPlayFailureReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 48
    iput-object p3, p0, Lcom/facebook/video/analytics/VideoDisplayedInfo$AutoPlayFailureReason;->value:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/video/analytics/VideoDisplayedInfo$AutoPlayFailureReason;
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/facebook/video/analytics/VideoDisplayedInfo$AutoPlayFailureReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/video/analytics/VideoDisplayedInfo$AutoPlayFailureReason;

    return-object v0
.end method

.method public static values()[Lcom/facebook/video/analytics/VideoDisplayedInfo$AutoPlayFailureReason;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/facebook/video/analytics/VideoDisplayedInfo$AutoPlayFailureReason;->$VALUES:[Lcom/facebook/video/analytics/VideoDisplayedInfo$AutoPlayFailureReason;

    invoke-virtual {v0}, [Lcom/facebook/video/analytics/VideoDisplayedInfo$AutoPlayFailureReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/video/analytics/VideoDisplayedInfo$AutoPlayFailureReason;

    return-object v0
.end method
