.class public Lretrofit/mime/TypedByteArray;
.super Ljava/lang/Object;
.source "TypedByteArray.java"

# interfaces
.implements Lretrofit/mime/TypedInput;
.implements Lretrofit/mime/TypedOutput;


# instance fields
.field private final bytes:[B

.field private final mimeType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 2
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "bytes"    # [B

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    if-nez p1, :cond_0

    .line 40
    const-string p1, "application/unknown"

    .line 42
    :cond_0
    if-nez p2, :cond_1

    .line 43
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "bytes"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_1
    iput-object p1, p0, Lretrofit/mime/TypedByteArray;->mimeType:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lretrofit/mime/TypedByteArray;->bytes:[B

    .line 47
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 74
    if-ne p0, p1, :cond_1

    .line 82
    :cond_0
    :goto_0
    return v1

    .line 75
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 77
    check-cast v0, Lretrofit/mime/TypedByteArray;

    .line 79
    .local v0, "that":Lretrofit/mime/TypedByteArray;
    iget-object v3, p0, Lretrofit/mime/TypedByteArray;->bytes:[B

    iget-object v4, v0, Lretrofit/mime/TypedByteArray;->bytes:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    goto :goto_0

    .line 80
    :cond_4
    iget-object v3, p0, Lretrofit/mime/TypedByteArray;->mimeType:Ljava/lang/String;

    iget-object v4, v0, Lretrofit/mime/TypedByteArray;->mimeType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public fileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBytes()[B
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lretrofit/mime/TypedByteArray;->bytes:[B

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 86
    iget-object v1, p0, Lretrofit/mime/TypedByteArray;->mimeType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 87
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lretrofit/mime/TypedByteArray;->bytes:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int v0, v1, v2

    .line 88
    return v0
.end method

.method public in()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lretrofit/mime/TypedByteArray;->bytes:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public length()J
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lretrofit/mime/TypedByteArray;->bytes:[B

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public mimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lretrofit/mime/TypedByteArray;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lretrofit/mime/TypedByteArray;->bytes:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 67
    return-void
.end method
