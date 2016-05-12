.class public Lcom/facebook/common/udppriming/client/HMAC;
.super Ljava/lang/Object;
.source "player_format_changed"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public static a([B[BLcom/facebook/common/udppriming/client/HMAC$KeyAlgorithm;)[B
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 43
    :try_start_0
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p2}, Lcom/facebook/common/udppriming/client/HMAC$KeyAlgorithm;->getAlgorithmName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 44
    invoke-virtual {p2}, Lcom/facebook/common/udppriming/client/HMAC$KeyAlgorithm;->getAlgorithmName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v2

    .line 45
    invoke-virtual {v2, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 46
    invoke-virtual {v2, p0}, Ljavax/crypto/Mac;->doFinal([B)[B
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 50
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0

    .line 48
    :catch_1
    move-exception v1

    goto :goto_0
.end method
