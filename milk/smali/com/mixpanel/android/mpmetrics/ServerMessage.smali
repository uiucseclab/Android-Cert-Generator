.class Lcom/mixpanel/android/mpmetrics/ServerMessage;
.super Ljava/lang/Object;
.source "ServerMessage.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "MixpanelAPI"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private slurp(Ljava/io/InputStream;)[B
    .locals 5
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 122
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 125
    .local v0, "buffer":Ljava/io/ByteArrayOutputStream;
    const/16 v3, 0x2000

    new-array v1, v3, [B

    .line 127
    .local v1, "data":[B
    :goto_0
    array-length v3, v1

    invoke-virtual {p1, v1, v4, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .local v2, "nRead":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 128
    invoke-virtual {v0, v1, v4, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 131
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 132
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public getUrls(Landroid/content/Context;[Ljava/lang/String;)[B
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "urls"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 40
    invoke-virtual {p0, p1}, Lcom/mixpanel/android/mpmetrics/ServerMessage;->isOnline(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 60
    :cond_0
    :goto_0
    return-object v4

    .line 44
    :cond_1
    const/4 v4, 0x0

    .line 45
    .local v4, "response":[B
    move-object v0, p2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v5, v0, v2

    .line 47
    .local v5, "url":Ljava/lang/String;
    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {p0, v5, v6}, Lcom/mixpanel/android/mpmetrics/ServerMessage;->performRequest(Ljava/lang/String;Ljava/util/List;)[B
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v4

    goto :goto_0

    .line 49
    :catch_0
    move-exception v1

    .line 50
    .local v1, "e":Ljava/net/MalformedURLException;
    const-string v6, "MixpanelAPI"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot interpret "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " as a URL."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 45
    .end local v1    # "e":Ljava/net/MalformedURLException;
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 51
    :catch_1
    move-exception v1

    .line 52
    .local v1, "e":Ljava/io/IOException;
    sget-boolean v6, Lcom/mixpanel/android/mpmetrics/MPConfig;->DEBUG:Z

    if-eqz v6, :cond_2

    .line 53
    const-string v6, "MixpanelAPI"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot get "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 54
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 55
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    const-string v6, "MixpanelAPI"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Out of memory when getting to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isOnline(Landroid/content/Context;)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    :try_start_0
    const-string v4, "connectivity"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 29
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 30
    .local v3, "netInfo":Landroid/net/NetworkInfo;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v2, 0x1

    .line 31
    .local v2, "isOnline":Z
    :goto_0
    sget-boolean v4, Lcom/mixpanel/android/mpmetrics/MPConfig;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v5, "MixpanelAPI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ConnectivityManager says we "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v2, :cond_2

    const-string v4, "are"

    :goto_1
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " online"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    .end local v3    # "netInfo":Landroid/net/NetworkInfo;
    :cond_0
    :goto_2
    return v2

    .line 30
    .end local v2    # "isOnline":Z
    .restart local v0    # "cm":Landroid/net/ConnectivityManager;
    .restart local v3    # "netInfo":Landroid/net/NetworkInfo;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 31
    .restart local v2    # "isOnline":Z
    :cond_2
    const-string v4, "are not"
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 32
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    .end local v2    # "isOnline":Z
    .end local v3    # "netInfo":Landroid/net/NetworkInfo;
    :catch_0
    move-exception v1

    .line 33
    .local v1, "e":Ljava/lang/SecurityException;
    const/4 v2, 0x1

    .line 34
    .restart local v2    # "isOnline":Z
    sget-boolean v4, Lcom/mixpanel/android/mpmetrics/MPConfig;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "MixpanelAPI"

    const-string v5, "Don\'t have permission to check connectivity, assuming online"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public performRequest(Ljava/lang/String;Ljava/util/List;)[B
    .locals 15
    .param p1, "endpointUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    .local p2, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    sget-boolean v12, Lcom/mixpanel/android/mpmetrics/MPConfig;->DEBUG:Z

    if-eqz v12, :cond_0

    const-string v12, "MixpanelAPI"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Attempting request to "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_0
    const/4 v8, 0x0

    .line 71
    .local v8, "response":[B
    const/4 v9, 0x0

    .line 72
    .local v9, "retries":I
    const/4 v10, 0x0

    .line 73
    .local v10, "succeeded":Z
    :cond_1
    :goto_0
    const/4 v12, 0x3

    if-ge v9, v12, :cond_e

    if-nez v10, :cond_e

    .line 74
    const/4 v6, 0x0

    .line 75
    .local v6, "in":Ljava/io/InputStream;
    const/4 v7, 0x0

    .line 76
    .local v7, "out":Ljava/io/OutputStream;
    const/4 v1, 0x0

    .line 77
    .local v1, "bout":Ljava/io/BufferedOutputStream;
    const/4 v3, 0x0

    .line 80
    .local v3, "connection":Ljava/net/HttpURLConnection;
    :try_start_0
    new-instance v11, Ljava/net/URL;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 81
    .local v11, "url":Ljava/net/URL;
    invoke-virtual {v11}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v3, v0

    .line 82
    const/16 v12, 0x7d0

    invoke-virtual {v3, v12}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 83
    const/16 v12, 0x2710

    invoke-virtual {v3, v12}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 84
    if-eqz p2, :cond_2

    .line 85
    const/4 v12, 0x1

    invoke-virtual {v3, v12}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 86
    new-instance v5, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v12, "UTF-8"

    move-object/from16 v0, p2

    invoke-direct {v5, v0, v12}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 87
    .local v5, "form":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    const-string v12, "POST"

    invoke-virtual {v3, v12}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v5}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;->getContentLength()J

    move-result-wide v12

    long-to-int v12, v12

    invoke-virtual {v3, v12}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 89
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    .line 90
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    .end local v1    # "bout":Ljava/io/BufferedOutputStream;
    .local v2, "bout":Ljava/io/BufferedOutputStream;
    :try_start_1
    invoke-virtual {v5, v2}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 92
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 93
    const/4 v1, 0x0

    .line 94
    .end local v2    # "bout":Ljava/io/BufferedOutputStream;
    .restart local v1    # "bout":Ljava/io/BufferedOutputStream;
    :try_start_2
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    .line 95
    const/4 v7, 0x0

    .line 97
    .end local v5    # "form":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    :cond_2
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    .line 98
    invoke-direct {p0, v6}, Lcom/mixpanel/android/mpmetrics/ServerMessage;->slurp(Ljava/io/InputStream;)[B

    move-result-object v8

    .line 99
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 100
    const/4 v6, 0x0

    .line 101
    const/4 v10, 0x1

    .line 106
    if-eqz v1, :cond_3

    .line 107
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 108
    :cond_3
    :goto_1
    if-eqz v7, :cond_4

    .line 109
    :try_start_4
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 110
    :cond_4
    :goto_2
    if-eqz v6, :cond_5

    .line 111
    :try_start_5
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 112
    :cond_5
    :goto_3
    if-eqz v3, :cond_1

    .line 113
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    .line 102
    .end local v11    # "url":Ljava/net/URL;
    :catch_0
    move-exception v4

    .line 103
    .local v4, "e":Ljava/io/EOFException;
    :goto_4
    :try_start_6
    sget-boolean v12, Lcom/mixpanel/android/mpmetrics/MPConfig;->DEBUG:Z

    if-eqz v12, :cond_6

    const-string v12, "MixpanelAPI"

    const-string v13, "Failure to connect, likely caused by a known issue with Android lib. Retrying."

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 104
    :cond_6
    add-int/lit8 v9, v9, 0x1

    .line 106
    if-eqz v1, :cond_7

    .line 107
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 108
    :cond_7
    :goto_5
    if-eqz v7, :cond_8

    .line 109
    :try_start_8
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 110
    :cond_8
    :goto_6
    if-eqz v6, :cond_9

    .line 111
    :try_start_9
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 112
    :cond_9
    :goto_7
    if-eqz v3, :cond_1

    .line 113
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_0

    .line 106
    .end local v4    # "e":Ljava/io/EOFException;
    :catchall_0
    move-exception v12

    :goto_8
    if-eqz v1, :cond_a

    .line 107
    :try_start_a
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 108
    :cond_a
    :goto_9
    if-eqz v7, :cond_b

    .line 109
    :try_start_b
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    .line 110
    :cond_b
    :goto_a
    if-eqz v6, :cond_c

    .line 111
    :try_start_c
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    .line 112
    :cond_c
    :goto_b
    if-eqz v3, :cond_d

    .line 113
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_d
    throw v12

    .line 107
    .restart local v11    # "url":Ljava/net/URL;
    :catch_1
    move-exception v12

    goto :goto_1

    .line 109
    :catch_2
    move-exception v12

    goto :goto_2

    .line 111
    :catch_3
    move-exception v12

    goto :goto_3

    .line 107
    .end local v11    # "url":Ljava/net/URL;
    .restart local v4    # "e":Ljava/io/EOFException;
    :catch_4
    move-exception v12

    goto :goto_5

    .line 109
    :catch_5
    move-exception v12

    goto :goto_6

    .line 111
    :catch_6
    move-exception v12

    goto :goto_7

    .line 107
    .end local v4    # "e":Ljava/io/EOFException;
    :catch_7
    move-exception v13

    goto :goto_9

    .line 109
    :catch_8
    move-exception v13

    goto :goto_a

    .line 111
    :catch_9
    move-exception v13

    goto :goto_b

    .line 116
    .end local v1    # "bout":Ljava/io/BufferedOutputStream;
    .end local v3    # "connection":Ljava/net/HttpURLConnection;
    .end local v6    # "in":Ljava/io/InputStream;
    .end local v7    # "out":Ljava/io/OutputStream;
    :cond_e
    return-object v8

    .line 106
    .restart local v2    # "bout":Ljava/io/BufferedOutputStream;
    .restart local v3    # "connection":Ljava/net/HttpURLConnection;
    .restart local v5    # "form":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .restart local v6    # "in":Ljava/io/InputStream;
    .restart local v7    # "out":Ljava/io/OutputStream;
    .restart local v11    # "url":Ljava/net/URL;
    :catchall_1
    move-exception v12

    move-object v1, v2

    .end local v2    # "bout":Ljava/io/BufferedOutputStream;
    .restart local v1    # "bout":Ljava/io/BufferedOutputStream;
    goto :goto_8

    .line 102
    .end local v1    # "bout":Ljava/io/BufferedOutputStream;
    .restart local v2    # "bout":Ljava/io/BufferedOutputStream;
    :catch_a
    move-exception v4

    move-object v1, v2

    .end local v2    # "bout":Ljava/io/BufferedOutputStream;
    .restart local v1    # "bout":Ljava/io/BufferedOutputStream;
    goto :goto_4
.end method
