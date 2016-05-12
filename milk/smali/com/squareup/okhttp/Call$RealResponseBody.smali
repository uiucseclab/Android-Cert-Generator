.class Lcom/squareup/okhttp/Call$RealResponseBody;
.super Lcom/squareup/okhttp/ResponseBody;
.source "Call.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/Call;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RealResponseBody"
.end annotation


# instance fields
.field private final response:Lcom/squareup/okhttp/Response;

.field private final source:Lokio/BufferedSource;


# direct methods
.method constructor <init>(Lcom/squareup/okhttp/Response;Lokio/BufferedSource;)V
    .locals 0
    .param p1, "response"    # Lcom/squareup/okhttp/Response;
    .param p2, "source"    # Lokio/BufferedSource;

    .prologue
    .line 245
    invoke-direct {p0}, Lcom/squareup/okhttp/ResponseBody;-><init>()V

    .line 246
    iput-object p1, p0, Lcom/squareup/okhttp/Call$RealResponseBody;->response:Lcom/squareup/okhttp/Response;

    .line 247
    iput-object p2, p0, Lcom/squareup/okhttp/Call$RealResponseBody;->source:Lokio/BufferedSource;

    .line 248
    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .prologue
    .line 256
    iget-object v0, p0, Lcom/squareup/okhttp/Call$RealResponseBody;->response:Lcom/squareup/okhttp/Response;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/OkHeaders;->contentLength(Lcom/squareup/okhttp/Response;)J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Lcom/squareup/okhttp/MediaType;
    .locals 3

    .prologue
    .line 251
    iget-object v1, p0, Lcom/squareup/okhttp/Call$RealResponseBody;->response:Lcom/squareup/okhttp/Response;

    const-string v2, "Content-Type"

    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 252
    .local v0, "contentType":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/squareup/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/squareup/okhttp/MediaType;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public source()Lokio/BufferedSource;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/squareup/okhttp/Call$RealResponseBody;->source:Lokio/BufferedSource;

    return-object v0
.end method
