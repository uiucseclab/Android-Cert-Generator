.class final Lcom/squareup/okhttp/MultipartBuilder$MultipartRequestBody;
.super Lcom/squareup/okhttp/RequestBody;
.source "MultipartBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/MultipartBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MultipartRequestBody"
.end annotation


# instance fields
.field private final boundary:Ljava/lang/String;

.field private final contentType:Lcom/squareup/okhttp/MediaType;

.field private final partBodies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/RequestBody;",
            ">;"
        }
    .end annotation
.end field

.field private final partHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/Headers;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/squareup/okhttp/MediaType;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .param p1, "type"    # Lcom/squareup/okhttp/MediaType;
    .param p2, "boundary"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/okhttp/MediaType;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/Headers;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/RequestBody;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 142
    .local p3, "partHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/Headers;>;"
    .local p4, "partBodies":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/RequestBody;>;"
    invoke-direct {p0}, Lcom/squareup/okhttp/RequestBody;-><init>()V

    .line 143
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "type == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_0
    iput-object p2, p0, Lcom/squareup/okhttp/MultipartBuilder$MultipartRequestBody;->boundary:Ljava/lang/String;

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; boundary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/squareup/okhttp/MediaType;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/MultipartBuilder$MultipartRequestBody;->contentType:Lcom/squareup/okhttp/MediaType;

    .line 147
    invoke-static {p3}, Lcom/squareup/okhttp/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/MultipartBuilder$MultipartRequestBody;->partHeaders:Ljava/util/List;

    .line 148
    invoke-static {p4}, Lcom/squareup/okhttp/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/MultipartBuilder$MultipartRequestBody;->partBodies:Ljava/util/List;

    .line 149
    return-void
.end method

.method private static writeBoundary(Lokio/BufferedSink;[BZZ)V
    .locals 1
    .param p0, "sink"    # Lokio/BufferedSink;
    .param p1, "boundary"    # [B
    .param p2, "first"    # Z
    .param p3, "last"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 170
    if-nez p2, :cond_0

    .line 171
    const-string v0, "\r\n"

    invoke-interface {p0, v0}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 173
    :cond_0
    const-string v0, "--"

    invoke-interface {p0, v0}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 174
    invoke-interface {p0, p1}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    .line 175
    if-eqz p3, :cond_1

    .line 176
    const-string v0, "--"

    invoke-interface {p0, v0}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 180
    :goto_0
    return-void

    .line 178
    :cond_1
    const-string v0, "\r\n"

    invoke-interface {p0, v0}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    goto :goto_0
.end method

.method private writePart(Lokio/BufferedSink;Lcom/squareup/okhttp/Headers;Lcom/squareup/okhttp/RequestBody;)V
    .locals 6
    .param p1, "sink"    # Lokio/BufferedSink;
    .param p2, "headers"    # Lcom/squareup/okhttp/Headers;
    .param p3, "body"    # Lcom/squareup/okhttp/RequestBody;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 184
    if-eqz p2, :cond_0

    .line 185
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p2}, Lcom/squareup/okhttp/Headers;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 186
    invoke-virtual {p2, v3}, Lcom/squareup/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v4

    const-string v5, ": "

    invoke-interface {v4, v5}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v4

    invoke-virtual {p2, v3}, Lcom/squareup/okhttp/Headers;->value(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v4

    const-string v5, "\r\n"

    invoke-interface {v4, v5}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 185
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 193
    .end local v3    # "i":I
    :cond_0
    invoke-virtual {p3}, Lcom/squareup/okhttp/RequestBody;->contentType()Lcom/squareup/okhttp/MediaType;

    move-result-object v2

    .line 194
    .local v2, "contentType":Lcom/squareup/okhttp/MediaType;
    if-eqz v2, :cond_1

    .line 195
    const-string v4, "Content-Type: "

    invoke-interface {p1, v4}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v4

    invoke-virtual {v2}, Lcom/squareup/okhttp/MediaType;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v4

    const-string v5, "\r\n"

    invoke-interface {v4, v5}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 200
    :cond_1
    invoke-virtual {p3}, Lcom/squareup/okhttp/RequestBody;->contentLength()J

    move-result-wide v0

    .line 201
    .local v0, "contentLength":J
    const-wide/16 v4, -0x1

    cmp-long v4, v0, v4

    if-eqz v4, :cond_2

    .line 202
    const-string v4, "Content-Length: "

    invoke-interface {p1, v4}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v4

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v4

    const-string v5, "\r\n"

    invoke-interface {v4, v5}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 207
    :cond_2
    const-string v4, "\r\n"

    invoke-interface {p1, v4}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 208
    invoke-virtual {p3, p1}, Lcom/squareup/okhttp/RequestBody;->writeTo(Lokio/BufferedSink;)V

    .line 209
    return-void
.end method


# virtual methods
.method public contentType()Lcom/squareup/okhttp/MediaType;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/squareup/okhttp/MultipartBuilder$MultipartRequestBody;->contentType:Lcom/squareup/okhttp/MediaType;

    return-object v0
.end method

.method public writeTo(Lokio/BufferedSink;)V
    .locals 8
    .param p1, "sink"    # Lokio/BufferedSink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 156
    iget-object v5, p0, Lcom/squareup/okhttp/MultipartBuilder$MultipartRequestBody;->boundary:Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 157
    .local v1, "boundary":[B
    const/4 v2, 0x1

    .line 158
    .local v2, "first":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v5, p0, Lcom/squareup/okhttp/MultipartBuilder$MultipartRequestBody;->partHeaders:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 159
    iget-object v5, p0, Lcom/squareup/okhttp/MultipartBuilder$MultipartRequestBody;->partHeaders:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/squareup/okhttp/Headers;

    .line 160
    .local v3, "headers":Lcom/squareup/okhttp/Headers;
    iget-object v5, p0, Lcom/squareup/okhttp/MultipartBuilder$MultipartRequestBody;->partBodies:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/okhttp/RequestBody;

    .line 161
    .local v0, "body":Lcom/squareup/okhttp/RequestBody;
    invoke-static {p1, v1, v2, v7}, Lcom/squareup/okhttp/MultipartBuilder$MultipartRequestBody;->writeBoundary(Lokio/BufferedSink;[BZZ)V

    .line 162
    invoke-direct {p0, p1, v3, v0}, Lcom/squareup/okhttp/MultipartBuilder$MultipartRequestBody;->writePart(Lokio/BufferedSink;Lcom/squareup/okhttp/Headers;Lcom/squareup/okhttp/RequestBody;)V

    .line 163
    const/4 v2, 0x0

    .line 158
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 165
    .end local v0    # "body":Lcom/squareup/okhttp/RequestBody;
    .end local v3    # "headers":Lcom/squareup/okhttp/Headers;
    :cond_0
    const/4 v5, 0x1

    invoke-static {p1, v1, v7, v5}, Lcom/squareup/okhttp/MultipartBuilder$MultipartRequestBody;->writeBoundary(Lokio/BufferedSink;[BZZ)V

    .line 166
    return-void
.end method
