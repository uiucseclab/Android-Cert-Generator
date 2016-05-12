.class public final Lretrofit/mime/MultipartTypedOutput;
.super Ljava/lang/Object;
.source "MultipartTypedOutput.java"

# interfaces
.implements Lretrofit/mime/TypedOutput;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lretrofit/mime/MultipartTypedOutput$MimePart;
    }
.end annotation


# instance fields
.field private final boundary:Ljava/lang/String;

.field private final footer:[B

.field private length:J

.field private final mimeParts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lretrofit/mime/MultipartTypedOutput$MimePart;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 77
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lretrofit/mime/MultipartTypedOutput;-><init>(Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "boundary"    # Ljava/lang/String;

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lretrofit/mime/MultipartTypedOutput;->mimeParts:Ljava/util/List;

    .line 81
    iput-object p1, p0, Lretrofit/mime/MultipartTypedOutput;->boundary:Ljava/lang/String;

    .line 82
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lretrofit/mime/MultipartTypedOutput;->buildBoundary(Ljava/lang/String;ZZ)[B

    move-result-object v0

    iput-object v0, p0, Lretrofit/mime/MultipartTypedOutput;->footer:[B

    .line 83
    iget-object v0, p0, Lretrofit/mime/MultipartTypedOutput;->footer:[B

    array-length v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lretrofit/mime/MultipartTypedOutput;->length:J

    .line 84
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;ZZ)[B
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 27
    invoke-static {p0, p1, p2}, Lretrofit/mime/MultipartTypedOutput;->buildBoundary(Ljava/lang/String;ZZ)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/String;Lretrofit/mime/TypedOutput;)[B
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Lretrofit/mime/TypedOutput;

    .prologue
    .line 27
    invoke-static {p0, p1}, Lretrofit/mime/MultipartTypedOutput;->buildHeader(Ljava/lang/String;Lretrofit/mime/TypedOutput;)[B

    move-result-object v0

    return-object v0
.end method

.method private static buildBoundary(Ljava/lang/String;ZZ)[B
    .locals 4
    .param p0, "boundary"    # Ljava/lang/String;
    .param p1, "first"    # Z
    .param p2, "last"    # Z

    .prologue
    .line 140
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .local v1, "sb":Ljava/lang/StringBuilder;
    if-nez p1, :cond_0

    .line 142
    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    :cond_0
    const-string v2, "--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    if-eqz p2, :cond_1

    .line 147
    const-string v2, "--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    :cond_1
    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 151
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 152
    .local v0, "ex":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Unable to write multipart boundary"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static buildHeader(Ljava/lang/String;Lretrofit/mime/TypedOutput;)[B
    .locals 6
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # Lretrofit/mime/TypedOutput;

    .prologue
    .line 158
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 159
    .local v1, "headers":Ljava/lang/StringBuilder;
    const-string v2, "Content-Disposition: form-data; name=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-interface {p1}, Lretrofit/mime/TypedOutput;->fileName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 162
    const-string v2, "\"; filename=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-interface {p1}, Lretrofit/mime/TypedOutput;->fileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    :cond_0
    const-string v2, "\"\r\nContent-Type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-interface {p1}, Lretrofit/mime/TypedOutput;->mimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-interface {p1}, Lretrofit/mime/TypedOutput;->length()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 168
    const-string v2, "\r\nContent-Length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lretrofit/mime/TypedOutput;->length()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 170
    :cond_1
    const-string v2, "\r\nContent-Transfer-Encoding: binary\r\n\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 172
    .end local v1    # "headers":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 173
    .local v0, "ex":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Unable to write multipart header"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public addPart(Ljava/lang/String;Lretrofit/mime/TypedOutput;)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "body"    # Lretrofit/mime/TypedOutput;

    .prologue
    const-wide/16 v5, -0x1

    .line 97
    if-nez p1, :cond_0

    .line 98
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Part name must not be null."

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 100
    :cond_0
    if-nez p2, :cond_1

    .line 101
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Part body must not be null."

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 104
    :cond_1
    new-instance v0, Lretrofit/mime/MultipartTypedOutput$MimePart;

    iget-object v3, p0, Lretrofit/mime/MultipartTypedOutput;->boundary:Ljava/lang/String;

    iget-object v4, p0, Lretrofit/mime/MultipartTypedOutput;->mimeParts:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    invoke-direct {v0, p1, p2, v3, v4}, Lretrofit/mime/MultipartTypedOutput$MimePart;-><init>(Ljava/lang/String;Lretrofit/mime/TypedOutput;Ljava/lang/String;Z)V

    .line 105
    .local v0, "part":Lretrofit/mime/MultipartTypedOutput$MimePart;
    iget-object v3, p0, Lretrofit/mime/MultipartTypedOutput;->mimeParts:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    invoke-virtual {v0}, Lretrofit/mime/MultipartTypedOutput$MimePart;->size()J

    move-result-wide v1

    .line 108
    .local v1, "size":J
    cmp-long v3, v1, v5

    if-nez v3, :cond_3

    .line 109
    iput-wide v5, p0, Lretrofit/mime/MultipartTypedOutput;->length:J

    .line 113
    :cond_2
    :goto_0
    return-void

    .line 110
    :cond_3
    iget-wide v3, p0, Lretrofit/mime/MultipartTypedOutput;->length:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    .line 111
    iget-wide v3, p0, Lretrofit/mime/MultipartTypedOutput;->length:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Lretrofit/mime/MultipartTypedOutput;->length:J

    goto :goto_0
.end method

.method public fileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPartCount()I
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lretrofit/mime/MultipartTypedOutput;->mimeParts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method getParts()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lretrofit/mime/MultipartTypedOutput;->mimeParts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 88
    .local v2, "parts":Ljava/util/List;, "Ljava/util/List<[B>;"
    iget-object v3, p0, Lretrofit/mime/MultipartTypedOutput;->mimeParts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lretrofit/mime/MultipartTypedOutput$MimePart;

    .line 89
    .local v1, "part":Lretrofit/mime/MultipartTypedOutput$MimePart;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 90
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v1, v0}, Lretrofit/mime/MultipartTypedOutput$MimePart;->writeTo(Ljava/io/OutputStream;)V

    .line 91
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 93
    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "part":Lretrofit/mime/MultipartTypedOutput$MimePart;
    :cond_0
    return-object v2
.end method

.method public length()J
    .locals 2

    .prologue
    .line 128
    iget-wide v0, p0, Lretrofit/mime/MultipartTypedOutput;->length:J

    return-wide v0
.end method

.method public mimeType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "multipart/form-data; boundary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lretrofit/mime/MultipartTypedOutput;->boundary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 132
    iget-object v1, p0, Lretrofit/mime/MultipartTypedOutput;->mimeParts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lretrofit/mime/MultipartTypedOutput$MimePart;

    .line 133
    .local v0, "part":Lretrofit/mime/MultipartTypedOutput$MimePart;
    invoke-virtual {v0, p1}, Lretrofit/mime/MultipartTypedOutput$MimePart;->writeTo(Ljava/io/OutputStream;)V

    goto :goto_0

    .line 135
    .end local v0    # "part":Lretrofit/mime/MultipartTypedOutput$MimePart;
    :cond_0
    iget-object v1, p0, Lretrofit/mime/MultipartTypedOutput;->footer:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 136
    return-void
.end method
