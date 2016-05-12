.class public Lretrofit/mime/TypedString;
.super Lretrofit/mime/TypedByteArray;
.source "TypedString.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 22
    const-string v0, "text/plain; charset=UTF-8"

    invoke-static {p1}, Lretrofit/mime/TypedString;->convertToBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lretrofit/mime/TypedByteArray;-><init>(Ljava/lang/String;[B)V

    .line 23
    return-void
.end method

.method private static convertToBytes(Ljava/lang/String;)[B
    .locals 2
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 27
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 28
    :catch_0
    move-exception v0

    .line 29
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
