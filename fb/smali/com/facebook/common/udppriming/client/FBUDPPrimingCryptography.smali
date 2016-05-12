.class public Lcom/facebook/common/udppriming/client/FBUDPPrimingCryptography;
.super Ljava/lang/Object;
.source "player_initiated"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "BadMethodUse-android.util.Log.v",
        "BadMethodUse-android.util.Log.d",
        "BadMethodUse-android.util.Log.i",
        "BadMethodUse-android.util.Log.w",
        "BadMethodUse-android.util.Log.e"
    }
.end annotation


# instance fields
.field public final a:[B

.field private final b:Ljavax/crypto/Cipher;

.field private final c:[B

.field private final d:Ljava/security/SecureRandom;

.field private e:[B


# direct methods
.method public constructor <init>([B[BLjava/security/SecureRandom;)V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p3, p0, Lcom/facebook/common/udppriming/client/FBUDPPrimingCryptography;->d:Ljava/security/SecureRandom;

    .line 68
    iput-object p1, p0, Lcom/facebook/common/udppriming/client/FBUDPPrimingCryptography;->a:[B

    .line 69
    invoke-direct {p0}, Lcom/facebook/common/udppriming/client/FBUDPPrimingCryptography;->a()[B

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/common/udppriming/client/FBUDPPrimingCryptography;->e:[B

    .line 70
    iput-object p2, p0, Lcom/facebook/common/udppriming/client/FBUDPPrimingCryptography;->c:[B

    .line 71
    const-string v0, "AES/CBC/NOPadding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/common/udppriming/client/FBUDPPrimingCryptography;->b:Ljavax/crypto/Cipher;

    .line 72
    return-void
.end method

.method private a()[B
    .locals 2

    .prologue
    .line 220
    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 221
    iget-object v1, p0, Lcom/facebook/common/udppriming/client/FBUDPPrimingCryptography;->d:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 222
    return-object v0
.end method

.method public static a(I)[B
    .locals 1

    .prologue
    .line 211
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method private a([B)[B
    .locals 5

    .prologue
    .line 182
    :try_start_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v1, p0, Lcom/facebook/common/udppriming/client/FBUDPPrimingCryptography;->c:[B

    const-string v2, "AES"

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 183
    iget-object v1, p0, Lcom/facebook/common/udppriming/client/FBUDPPrimingCryptography;->b:Ljavax/crypto/Cipher;

    const/4 v2, 0x1

    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    iget-object v4, p0, Lcom/facebook/common/udppriming/client/FBUDPPrimingCryptography;->e:[B

    invoke-direct {v3, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v1, v2, v0, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 187
    iget-object v0, p0, Lcom/facebook/common/udppriming/client/FBUDPPrimingCryptography;->b:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    return-object v0

    .line 188
    :catch_0
    move-exception v0

    .line 189
    const-string v1, "FBUDPPrimingCryptography"

    const-string v2, "Bad padding exception in AES256Encrypt."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 201
    :goto_0
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 191
    :catch_1
    move-exception v0

    .line 192
    const-string v1, "FBUDPPrimingCryptography"

    const-string v2, "Illegal block size exception in AES256Encrypt."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 194
    :catch_2
    move-exception v0

    .line 195
    const-string v1, "FBUDPPrimingCryptography"

    const-string v2, "Invalid algorithm parameter exception in AES256Encrypt."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 197
    :catch_3
    move-exception v0

    .line 198
    const-string v1, "FBUDPPrimingCryptography"

    const-string v2, "Invalid key exception in AES256Encrypt."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private a([BI)[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 132
    new-array v0, p2, [B

    .line 133
    iget-object v1, p0, Lcom/facebook/common/udppriming/client/FBUDPPrimingCryptography;->d:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 135
    add-int/lit8 v1, p2, -0x1

    int-to-byte v2, p2

    aput-byte v2, v0, v1

    .line 136
    array-length v1, p1

    add-int/2addr v1, p2

    new-array v1, v1, [B

    .line 137
    array-length v2, p1

    invoke-static {p1, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 138
    array-length v2, p1

    invoke-static {v0, v3, v1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 139
    return-object v1
.end method


# virtual methods
.method public final a([B[B)[B
    .locals 6

    .prologue
    .line 84
    array-length v0, p1

    rem-int/lit8 v0, v0, 0x10

    rsub-int/lit8 v0, v0, 0x10

    .line 86
    array-length v1, p1

    add-int/2addr v1, v0

    .line 87
    add-int/lit8 v1, v1, 0x31

    .line 89
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 90
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 91
    invoke-direct {p0, p1, v0}, Lcom/facebook/common/udppriming/client/FBUDPPrimingCryptography;->a([BI)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/common/udppriming/client/FBUDPPrimingCryptography;->a([B)[B

    move-result-object v0

    .line 92
    iget-object v2, p0, Lcom/facebook/common/udppriming/client/FBUDPPrimingCryptography;->e:[B

    .line 153
    array-length v3, v2

    const/16 v4, 0x10

    if-ne v3, v4, :cond_0

    array-length v3, v0

    const/16 v4, 0x5dc

    if-ge v3, v4, :cond_0

    array-length v3, p2

    const/16 v4, 0x100

    if-lt v3, v4, :cond_2

    .line 156
    :cond_0
    const/4 v3, 0x0

    .line 169
    :goto_0
    move-object v2, v3

    .line 94
    if-nez v2, :cond_1

    .line 95
    const/4 v0, 0x0

    .line 100
    :goto_1
    return-object v0

    .line 97
    :cond_1
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 98
    iget-object v2, p0, Lcom/facebook/common/udppriming/client/FBUDPPrimingCryptography;->e:[B

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 99
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 100
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    goto :goto_1

    .line 161
    :cond_2
    array-length v3, v0

    add-int/lit8 v3, v3, 0x14

    add-int/lit8 v3, v3, 0x4

    array-length v4, p2

    add-int/2addr v3, v4

    .line 163
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 164
    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 165
    array-length v4, v0

    invoke-static {v4}, Lcom/facebook/common/udppriming/client/FBUDPPrimingCryptography;->a(I)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 166
    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 167
    array-length v4, p2

    invoke-static {v4}, Lcom/facebook/common/udppriming/client/FBUDPPrimingCryptography;->a(I)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 168
    invoke-virtual {v3, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 169
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/common/udppriming/client/FBUDPPrimingCryptography;->a:[B

    sget-object v5, Lcom/facebook/common/udppriming/client/HMAC$KeyAlgorithm;->HMAC_SHA256:Lcom/facebook/common/udppriming/client/HMAC$KeyAlgorithm;

    invoke-static {v3, v4, v5}, Lcom/facebook/common/udppriming/client/HMAC;->a([B[BLcom/facebook/common/udppriming/client/HMAC$KeyAlgorithm;)[B

    move-result-object v3

    goto :goto_0
.end method
