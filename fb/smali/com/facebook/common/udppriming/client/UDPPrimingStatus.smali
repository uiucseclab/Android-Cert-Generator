.class public final enum Lcom/facebook/common/udppriming/client/UDPPrimingStatus;
.super Ljava/lang/Enum;
.source "user_network_metered"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/common/udppriming/client/UDPPrimingStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/common/udppriming/client/UDPPrimingStatus;

.field public static final enum ERROR_ENCRYPT:Lcom/facebook/common/udppriming/client/UDPPrimingStatus;

.field public static final enum ERROR_IP_ADDRESS:Lcom/facebook/common/udppriming/client/UDPPrimingStatus;

.field public static final enum ERROR_MISMATCH:Lcom/facebook/common/udppriming/client/UDPPrimingStatus;

.field public static final enum ERROR_NETWORK_IO:Lcom/facebook/common/udppriming/client/UDPPrimingStatus;

.field public static final enum ERROR_SIZE_LIMIT:Lcom/facebook/common/udppriming/client/UDPPrimingStatus;

.field public static final enum ERROR_TEMPLATE:Lcom/facebook/common/udppriming/client/UDPPrimingStatus;

.field public static final enum FROZEN:Lcom/facebook/common/udppriming/client/UDPPrimingStatus;

.field public static final enum NONE:Lcom/facebook/common/udppriming/client/UDPPrimingStatus;

.field public static final enum SENT:Lcom/facebook/common/udppriming/client/UDPPrimingStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 6
    new-instance v0, Lcom/facebook/common/udppriming/client/UDPPrimingStatus;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3}, Lcom/facebook/common/udppriming/client/UDPPrimingStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/common/udppriming/client/UDPPrimingStatus;->NONE:Lcom/facebook/common/udppriming/client/UDPPrimingStatus;

    .line 7
    new-instance v0, Lcom/facebook/common/udppriming/client/UDPPrimingStatus;

    const-string v1, "FROZEN"

    invoke-direct {v0, v1, v4}, Lcom/facebook/common/udppriming/client/UDPPrimingStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/common/udppriming/client/UDPPrimingStatus;->FROZEN:Lcom/facebook/common/udppriming/client/UDPPrimingStatus;

    .line 8
    new-instance v0, Lcom/facebook/common/udppriming/client/UDPPrimingStatus;

    const-string v1, "ERROR_TEMPLATE"

    invoke-direct {v0, v1, v5}, Lcom/facebook/common/udppriming/client/UDPPrimingStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/common/udppriming/client/UDPPrimingStatus;->ERROR_TEMPLATE:Lcom/facebook/common/udppriming/client/UDPPrimingStatus;

    .line 9
    new-instance v0, Lcom/facebook/common/udppriming/client/UDPPrimingStatus;

    const-string v1, "ERROR_ENCRYPT"

    invoke-direct {v0, v1, v6}, Lcom/facebook/common/udppriming/client/UDPPrimingStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/common/udppriming/client/UDPPrimingStatus;->ERROR_ENCRYPT:Lcom/facebook/common/udppriming/client/UDPPrimingStatus;

    .line 10
    new-instance v0, Lcom/facebook/common/udppriming/client/UDPPrimingStatus;

    const-string v1, "ERROR_IP_ADDRESS"

    invoke-direct {v0, v1, v7}, Lcom/facebook/common/udppriming/client/UDPPrimingStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/common/udppriming/client/UDPPrimingStatus;->ERROR_IP_ADDRESS:Lcom/facebook/common/udppriming/client/UDPPrimingStatus;

    .line 11
    new-instance v0, Lcom/facebook/common/udppriming/client/UDPPrimingStatus;

    const-string v1, "ERROR_NETWORK_IO"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/facebook/common/udppriming/client/UDPPrimingStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/common/udppriming/client/UDPPrimingStatus;->ERROR_NETWORK_IO:Lcom/facebook/common/udppriming/client/UDPPrimingStatus;

    .line 12
    new-instance v0, Lcom/facebook/common/udppriming/client/UDPPrimingStatus;

    const-string v1, "ERROR_SIZE_LIMIT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/facebook/common/udppriming/client/UDPPrimingStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/common/udppriming/client/UDPPrimingStatus;->ERROR_SIZE_LIMIT:Lcom/facebook/common/udppriming/client/UDPPrimingStatus;

    .line 13
    new-instance v0, Lcom/facebook/common/udppriming/client/UDPPrimingStatus;

    const-string v1, "ERROR_MISMATCH"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/facebook/common/udppriming/client/UDPPrimingStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/common/udppriming/client/UDPPrimingStatus;->ERROR_MISMATCH:Lcom/facebook/common/udppriming/client/UDPPrimingStatus;

    .line 14
    new-instance v0, Lcom/facebook/common/udppriming/client/UDPPrimingStatus;

    const-string v1, "SENT"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/facebook/common/udppriming/client/UDPPrimingStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/common/udppriming/client/UDPPrimingStatus;->SENT:Lcom/facebook/common/udppriming/client/UDPPrimingStatus;

    .line 5
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/facebook/common/udppriming/client/UDPPrimingStatus;

    sget-object v1, Lcom/facebook/common/udppriming/client/UDPPrimingStatus;->NONE:Lcom/facebook/common/udppriming/client/UDPPrimingStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/common/udppriming/client/UDPPrimingStatus;->FROZEN:Lcom/facebook/common/udppriming/client/UDPPrimingStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/common/udppriming/client/UDPPrimingStatus;->ERROR_TEMPLATE:Lcom/facebook/common/udppriming/client/UDPPrimingStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/facebook/common/udppriming/client/UDPPrimingStatus;->ERROR_ENCRYPT:Lcom/facebook/common/udppriming/client/UDPPrimingStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/facebook/common/udppriming/client/UDPPrimingStatus;->ERROR_IP_ADDRESS:Lcom/facebook/common/udppriming/client/UDPPrimingStatus;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/facebook/common/udppriming/client/UDPPrimingStatus;->ERROR_NETWORK_IO:Lcom/facebook/common/udppriming/client/UDPPrimingStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/facebook/common/udppriming/client/UDPPrimingStatus;->ERROR_SIZE_LIMIT:Lcom/facebook/common/udppriming/client/UDPPrimingStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/facebook/common/udppriming/client/UDPPrimingStatus;->ERROR_MISMATCH:Lcom/facebook/common/udppriming/client/UDPPrimingStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/facebook/common/udppriming/client/UDPPrimingStatus;->SENT:Lcom/facebook/common/udppriming/client/UDPPrimingStatus;

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/common/udppriming/client/UDPPrimingStatus;->$VALUES:[Lcom/facebook/common/udppriming/client/UDPPrimingStatus;

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
    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/common/udppriming/client/UDPPrimingStatus;
    .locals 1

    .prologue
    .line 5
    const-class v0, Lcom/facebook/common/udppriming/client/UDPPrimingStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/udppriming/client/UDPPrimingStatus;

    return-object v0
.end method

.method public static values()[Lcom/facebook/common/udppriming/client/UDPPrimingStatus;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/facebook/common/udppriming/client/UDPPrimingStatus;->$VALUES:[Lcom/facebook/common/udppriming/client/UDPPrimingStatus;

    invoke-virtual {v0}, [Lcom/facebook/common/udppriming/client/UDPPrimingStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/common/udppriming/client/UDPPrimingStatus;

    return-object v0
.end method
