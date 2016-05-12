.class public final enum Lcom/facebook/common/udppriming/client/HMAC$KeyAlgorithm;
.super Ljava/lang/Enum;
.source "player_format_changed"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/common/udppriming/client/HMAC$KeyAlgorithm;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/common/udppriming/client/HMAC$KeyAlgorithm;

.field public static final enum HMAC_MD5:Lcom/facebook/common/udppriming/client/HMAC$KeyAlgorithm;

.field public static final enum HMAC_SHA1:Lcom/facebook/common/udppriming/client/HMAC$KeyAlgorithm;

.field public static final enum HMAC_SHA256:Lcom/facebook/common/udppriming/client/HMAC$KeyAlgorithm;


# instance fields
.field private final mAlgorithm:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 15
    new-instance v0, Lcom/facebook/common/udppriming/client/HMAC$KeyAlgorithm;

    const-string v1, "HMAC_MD5"

    const-string v2, "HmacMD5"

    invoke-direct {v0, v1, v3, v2}, Lcom/facebook/common/udppriming/client/HMAC$KeyAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/common/udppriming/client/HMAC$KeyAlgorithm;->HMAC_MD5:Lcom/facebook/common/udppriming/client/HMAC$KeyAlgorithm;

    .line 16
    new-instance v0, Lcom/facebook/common/udppriming/client/HMAC$KeyAlgorithm;

    const-string v1, "HMAC_SHA1"

    const-string v2, "HmacSHA1"

    invoke-direct {v0, v1, v4, v2}, Lcom/facebook/common/udppriming/client/HMAC$KeyAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/common/udppriming/client/HMAC$KeyAlgorithm;->HMAC_SHA1:Lcom/facebook/common/udppriming/client/HMAC$KeyAlgorithm;

    .line 17
    new-instance v0, Lcom/facebook/common/udppriming/client/HMAC$KeyAlgorithm;

    const-string v1, "HMAC_SHA256"

    const-string v2, "HmacSHA256"

    invoke-direct {v0, v1, v5, v2}, Lcom/facebook/common/udppriming/client/HMAC$KeyAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/common/udppriming/client/HMAC$KeyAlgorithm;->HMAC_SHA256:Lcom/facebook/common/udppriming/client/HMAC$KeyAlgorithm;

    .line 13
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/facebook/common/udppriming/client/HMAC$KeyAlgorithm;

    sget-object v1, Lcom/facebook/common/udppriming/client/HMAC$KeyAlgorithm;->HMAC_MD5:Lcom/facebook/common/udppriming/client/HMAC$KeyAlgorithm;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/common/udppriming/client/HMAC$KeyAlgorithm;->HMAC_SHA1:Lcom/facebook/common/udppriming/client/HMAC$KeyAlgorithm;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/common/udppriming/client/HMAC$KeyAlgorithm;->HMAC_SHA256:Lcom/facebook/common/udppriming/client/HMAC$KeyAlgorithm;

    aput-object v1, v0, v5

    sput-object v0, Lcom/facebook/common/udppriming/client/HMAC$KeyAlgorithm;->$VALUES:[Lcom/facebook/common/udppriming/client/HMAC$KeyAlgorithm;

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
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 22
    iput-object p3, p0, Lcom/facebook/common/udppriming/client/HMAC$KeyAlgorithm;->mAlgorithm:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/common/udppriming/client/HMAC$KeyAlgorithm;
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/facebook/common/udppriming/client/HMAC$KeyAlgorithm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/udppriming/client/HMAC$KeyAlgorithm;

    return-object v0
.end method

.method public static values()[Lcom/facebook/common/udppriming/client/HMAC$KeyAlgorithm;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/facebook/common/udppriming/client/HMAC$KeyAlgorithm;->$VALUES:[Lcom/facebook/common/udppriming/client/HMAC$KeyAlgorithm;

    invoke-virtual {v0}, [Lcom/facebook/common/udppriming/client/HMAC$KeyAlgorithm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/common/udppriming/client/HMAC$KeyAlgorithm;

    return-object v0
.end method


# virtual methods
.method public final getAlgorithmName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/facebook/common/udppriming/client/HMAC$KeyAlgorithm;->mAlgorithm:Ljava/lang/String;

    return-object v0
.end method
