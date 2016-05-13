.class final enum Lcom/facebook/rti/mqtt/protocol/MqttClient$ClientCapability;
.super Ljava/lang/Enum;
.source "s_svc_ms"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/rti/mqtt/protocol/MqttClient$ClientCapability;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/rti/mqtt/protocol/MqttClient$ClientCapability;

.field public static final enum ACKNOWLEDGED_DELIVERY:Lcom/facebook/rti/mqtt/protocol/MqttClient$ClientCapability;

.field public static final enum DELTA_SENT_MESSAGE_ENABLED:Lcom/facebook/rti/mqtt/protocol/MqttClient$ClientCapability;

.field public static final enum EXACT_KEEPALIVE:Lcom/facebook/rti/mqtt/protocol/MqttClient$ClientCapability;

.field public static final enum PROCESSING_LASTACTIVE_PRESENCEINFO:Lcom/facebook/rti/mqtt/protocol/MqttClient$ClientCapability;

.field public static final enum REQUIRES_JSON_UNICODE_ESCAPES:Lcom/facebook/rti/mqtt/protocol/MqttClient$ClientCapability;

.field public static final enum SUPPRESS_GETDIFF_IN_CONNECT:Lcom/facebook/rti/mqtt/protocol/MqttClient$ClientCapability;

.field public static final enum USE_ENUM_TOPIC:Lcom/facebook/rti/mqtt/protocol/MqttClient$ClientCapability;


# instance fields
.field private final mPosition:B


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 136
    new-instance v0, Lcom/facebook/rti/mqtt/protocol/MqttClient$ClientCapability;

    const-string v1, "ACKNOWLEDGED_DELIVERY"

    invoke-direct {v0, v1, v4, v4}, Lcom/facebook/rti/mqtt/protocol/MqttClient$ClientCapability;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/rti/mqtt/protocol/MqttClient$ClientCapability;->ACKNOWLEDGED_DELIVERY:Lcom/facebook/rti/mqtt/protocol/MqttClient$ClientCapability;

    .line 137
    new-instance v0, Lcom/facebook/rti/mqtt/protocol/MqttClient$ClientCapability;

    const-string v1, "PROCESSING_LASTACTIVE_PRESENCEINFO"

    invoke-direct {v0, v1, v5, v5}, Lcom/facebook/rti/mqtt/protocol/MqttClient$ClientCapability;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/rti/mqtt/protocol/MqttClient$ClientCapability;->PROCESSING_LASTACTIVE_PRESENCEINFO:Lcom/facebook/rti/mqtt/protocol/MqttClient$ClientCapability;

    .line 138
    new-instance v0, Lcom/facebook/rti/mqtt/protocol/MqttClient$ClientCapability;

    const-string v1, "EXACT_KEEPALIVE"

    invoke-direct {v0, v1, v6, v6}, Lcom/facebook/rti/mqtt/protocol/MqttClient$ClientCapability;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/rti/mqtt/protocol/MqttClient$ClientCapability;->EXACT_KEEPALIVE:Lcom/facebook/rti/mqtt/protocol/MqttClient$ClientCapability;

    .line 139
    new-instance v0, Lcom/facebook/rti/mqtt/protocol/MqttClient$ClientCapability;

    const-string v1, "REQUIRES_JSON_UNICODE_ESCAPES"

    invoke-direct {v0, v1, v7, v7}, Lcom/facebook/rti/mqtt/protocol/MqttClient$ClientCapability;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/rti/mqtt/protocol/MqttClient$ClientCapability;->REQUIRES_JSON_UNICODE_ESCAPES:Lcom/facebook/rti/mqtt/protocol/MqttClient$ClientCapability;

    .line 140
    new-instance v0, Lcom/facebook/rti/mqtt/protocol/MqttClient$ClientCapability;

    const-string v1, "DELTA_SENT_MESSAGE_ENABLED"

    invoke-direct {v0, v1, v8, v8}, Lcom/facebook/rti/mqtt/protocol/MqttClient$ClientCapability;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/rti/mqtt/protocol/MqttClient$ClientCapability;->DELTA_SENT_MESSAGE_ENABLED:Lcom/facebook/rti/mqtt/protocol/MqttClient$ClientCapability;

    .line 141
    new-instance v0, Lcom/facebook/rti/mqtt/protocol/MqttClient$ClientCapability;

    const-string v1, "USE_ENUM_TOPIC"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/rti/mqtt/protocol/MqttClient$ClientCapability;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/rti/mqtt/protocol/MqttClient$ClientCapability;->USE_ENUM_TOPIC:Lcom/facebook/rti/mqtt/protocol/MqttClient$ClientCapability;

    .line 142
    new-instance v0, Lcom/facebook/rti/mqtt/protocol/MqttClient$ClientCapability;

    const-string v1, "SUPPRESS_GETDIFF_IN_CONNECT"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/rti/mqtt/protocol/MqttClient$ClientCapability;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/rti/mqtt/protocol/MqttClient$ClientCapability;->SUPPRESS_GETDIFF_IN_CONNECT:Lcom/facebook/rti/mqtt/protocol/MqttClient$ClientCapability;

    .line 135
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/facebook/rti/mqtt/protocol/MqttClient$ClientCapability;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/MqttClient$ClientCapability;->ACKNOWLEDGED_DELIVERY:Lcom/facebook/rti/mqtt/protocol/MqttClient$ClientCapability;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/MqttClient$ClientCapability;->PROCESSING_LASTACTIVE_PRESENCEINFO:Lcom/facebook/rti/mqtt/protocol/MqttClient$ClientCapability;

    aput-object v1, v0, v5

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/MqttClient$ClientCapability;->EXACT_KEEPALIVE:Lcom/facebook/rti/mqtt/protocol/MqttClient$ClientCapability;

    aput-object v1, v0, v6

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/MqttClient$ClientCapability;->REQUIRES_JSON_UNICODE_ESCAPES:Lcom/facebook/rti/mqtt/protocol/MqttClient$ClientCapability;

    aput-object v1, v0, v7

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/MqttClient$ClientCapability;->DELTA_SENT_MESSAGE_ENABLED:Lcom/facebook/rti/mqtt/protocol/MqttClient$ClientCapability;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/facebook/rti/mqtt/protocol/MqttClient$ClientCapability;->USE_ENUM_TOPIC:Lcom/facebook/rti/mqtt/protocol/MqttClient$ClientCapability;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/facebook/rti/mqtt/protocol/MqttClient$ClientCapability;->SUPPRESS_GETDIFF_IN_CONNECT:Lcom/facebook/rti/mqtt/protocol/MqttClient$ClientCapability;

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/rti/mqtt/protocol/MqttClient$ClientCapability;->$VALUES:[Lcom/facebook/rti/mqtt/protocol/MqttClient$ClientCapability;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 146
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 147
    if-ltz p3, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/facebook/rti/common/guavalite/base/Preconditions;->a(Z)V

    .line 148
    const/16 v0, 0x40

    if-ge p3, v0, :cond_1

    :goto_1
    invoke-static {v1}, Lcom/facebook/rti/common/guavalite/base/Preconditions;->a(Z)V

    .line 149
    int-to-byte v0, p3

    iput-byte v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$ClientCapability;->mPosition:B

    .line 150
    return-void

    :cond_0
    move v0, v2

    .line 147
    goto :goto_0

    :cond_1
    move v1, v2

    .line 148
    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/rti/mqtt/protocol/MqttClient$ClientCapability;
    .locals 1

    .prologue
    .line 135
    const-class v0, Lcom/facebook/rti/mqtt/protocol/MqttClient$ClientCapability;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/protocol/MqttClient$ClientCapability;

    return-object v0
.end method

.method public static values()[Lcom/facebook/rti/mqtt/protocol/MqttClient$ClientCapability;
    .locals 1

    .prologue
    .line 135
    sget-object v0, Lcom/facebook/rti/mqtt/protocol/MqttClient$ClientCapability;->$VALUES:[Lcom/facebook/rti/mqtt/protocol/MqttClient$ClientCapability;

    invoke-virtual {v0}, [Lcom/facebook/rti/mqtt/protocol/MqttClient$ClientCapability;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/rti/mqtt/protocol/MqttClient$ClientCapability;

    return-object v0
.end method


# virtual methods
.method public final getMask()J
    .locals 2

    .prologue
    .line 157
    const/4 v0, 0x1

    iget-byte v1, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$ClientCapability;->mPosition:B

    shl-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method public final getPosition()B
    .locals 1

    .prologue
    .line 153
    iget-byte v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$ClientCapability;->mPosition:B

    return v0
.end method
