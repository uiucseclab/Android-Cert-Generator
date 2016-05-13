.class public Lcom/facebook/common/udppriming/client/UDPPacketSender;
.super Ljava/lang/Object;
.source "player_allocated"


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


# static fields
.field private static a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const v0, 0x80e8

    sput v0, Lcom/facebook/common/udppriming/client/UDPPacketSender;->a:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/common/udppriming/client/UDPPrimingStatus;
    .locals 6

    .prologue
    .line 130
    invoke-static {}, Lcom/facebook/common/udppriming/client/UDPPrimingDNSInfo;->a()Lcom/facebook/common/udppriming/client/UDPPrimingDNSInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/common/udppriming/client/UDPPrimingDNSInfo;->b()Ljava/lang/String;

    move-result-object v0

    .line 131
    invoke-static {}, Lcom/facebook/common/udppriming/client/UDPPrimingDNSInfo;->a()Lcom/facebook/common/udppriming/client/UDPPrimingDNSInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/common/udppriming/client/UDPPrimingDNSInfo;->c()[B

    move-result-object v1

    .line 132
    if-nez v1, :cond_0

    .line 133
    sget-object v0, Lcom/facebook/common/udppriming/client/UDPPrimingStatus;->ERROR_IP_ADDRESS:Lcom/facebook/common/udppriming/client/UDPPrimingStatus;

    .line 156
    :goto_0
    return-object v0

    .line 135
    :cond_0
    invoke-static {v0, v1}, Ljava/net/InetAddress;->getByAddress(Ljava/lang/String;[B)Ljava/net/InetAddress;

    move-result-object v1

    .line 136
    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    const-string v3, "https"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "encryptedrequest"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "channel_id"

    invoke-virtual {v0, v2, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "encrypted_request"

    invoke-virtual {v0, v2, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 143
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 144
    array-length v2, v0

    .line 145
    const/16 v3, 0x5c0

    if-le v2, v3, :cond_1

    .line 146
    sget-object v0, Lcom/facebook/common/udppriming/client/UDPPrimingStatus;->ERROR_SIZE_LIMIT:Lcom/facebook/common/udppriming/client/UDPPrimingStatus;

    goto :goto_0

    .line 149
    :cond_1
    new-instance v3, Ljava/net/DatagramSocket;

    invoke-direct {v3}, Ljava/net/DatagramSocket;-><init>()V

    .line 150
    new-instance v4, Ljava/net/DatagramPacket;

    sget v5, Lcom/facebook/common/udppriming/client/UDPPacketSender;->a:I

    invoke-direct {v4, v0, v2, v1, v5}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 152
    invoke-virtual {v3, v4}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 153
    invoke-virtual {v3}, Ljava/net/DatagramSocket;->close()V

    .line 154
    const-string v0, "UDPPacketSender"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes sent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    sget-object v0, Lcom/facebook/common/udppriming/client/UDPPrimingStatus;->SENT:Lcom/facebook/common/udppriming/client/UDPPrimingStatus;

    goto :goto_0
.end method

.method public static declared-synchronized a(Ljava/lang/String;Ljava/lang/String;J)Lcom/facebook/common/udppriming/client/UDPPrimingStatus;
    .locals 8

    .prologue
    .line 63
    const-class v1, Lcom/facebook/common/udppriming/client/UDPPacketSender;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/facebook/common/udppriming/client/EncryptChannelInformation;->a()Lcom/facebook/common/udppriming/client/EncryptChannelInformation;

    move-result-object v0

    .line 64
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/facebook/common/udppriming/client/EncryptChannelInformation;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 65
    :cond_0
    sget-object v0, Lcom/facebook/common/udppriming/client/UDPPrimingStatus;->ERROR_ENCRYPT:Lcom/facebook/common/udppriming/client/UDPPrimingStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    :goto_0
    monitor-exit v1

    return-object v0

    .line 70
    :cond_1
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 71
    const-string v3, "url"

    invoke-virtual {v2, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 72
    const-string v3, "timestamp"

    invoke-virtual {v2, v3, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 73
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 75
    invoke-virtual {v0}, Lcom/facebook/common/udppriming/client/EncryptChannelInformation;->c()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    .line 76
    invoke-virtual {v0}, Lcom/facebook/common/udppriming/client/EncryptChannelInformation;->d()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    .line 78
    invoke-virtual {v0}, Lcom/facebook/common/udppriming/client/EncryptChannelInformation;->b()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    .line 79
    new-instance v6, Lcom/facebook/common/udppriming/client/FBUDPPrimingCryptography;

    new-instance v7, Ljava/security/SecureRandom;

    invoke-direct {v7}, Ljava/security/SecureRandom;-><init>()V

    invoke-direct {v6, v3, v4, v7}, Lcom/facebook/common/udppriming/client/FBUDPPrimingCryptography;-><init>([B[BLjava/security/SecureRandom;)V

    .line 85
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 86
    new-instance v4, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v4, v3}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 87
    invoke-virtual {v4, v2}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 88
    invoke-virtual {v4}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 89
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 92
    invoke-virtual {v6, v2, v5}, Lcom/facebook/common/udppriming/client/FBUDPPrimingCryptography;->a([B[B)[B

    move-result-object v2

    .line 93
    if-nez v2, :cond_2

    .line 94
    const-string v0, "UDPPacketSender"

    const-string v2, "UDP Priming packet encryption failed, might because of the preconditioncheck failed in function encryptMacForInitializationVector"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    sget-object v0, Lcom/facebook/common/udppriming/client/UDPPrimingStatus;->ERROR_ENCRYPT:Lcom/facebook/common/udppriming/client/UDPPrimingStatus;

    goto :goto_0

    .line 100
    :cond_2
    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    .line 102
    invoke-virtual {v0}, Lcom/facebook/common/udppriming/client/EncryptChannelInformation;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/facebook/common/udppriming/client/UDPPacketSender;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/common/udppriming/client/UDPPrimingStatus;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 105
    :catch_0
    move-exception v0

    .line 106
    :try_start_2
    const-string v2, "UDPPacketSender"

    const-string v3, "Json exception when apply json encoding in UDPPacketSender"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 107
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 108
    :catch_1
    move-exception v0

    .line 109
    :try_start_3
    const-string v2, "UDPPacketSender"

    const-string v3, "Encryption exception in UDPPacketSender"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 110
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 111
    :catch_2
    move-exception v0

    .line 112
    const-string v2, "UDPPacketSender"

    const-string v3, "IO exception in UDPPacketSender"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 115
    sget-object v0, Lcom/facebook/common/udppriming/client/UDPPrimingStatus;->ERROR_NETWORK_IO:Lcom/facebook/common/udppriming/client/UDPPrimingStatus;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0
.end method
