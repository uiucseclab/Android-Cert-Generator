.class public final Lcom/squareup/okhttp/internal/http/CacheStrategy;
.super Ljava/lang/Object;
.source "CacheStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/okhttp/internal/http/CacheStrategy$1;,
        Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;
    }
.end annotation


# instance fields
.field public final cacheResponse:Lcom/squareup/okhttp/Response;

.field public final networkRequest:Lcom/squareup/okhttp/Request;


# direct methods
.method private constructor <init>(Lcom/squareup/okhttp/Request;Lcom/squareup/okhttp/Response;)V
    .locals 0
    .param p1, "networkRequest"    # Lcom/squareup/okhttp/Request;
    .param p2, "cacheResponse"    # Lcom/squareup/okhttp/Response;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/CacheStrategy;->networkRequest:Lcom/squareup/okhttp/Request;

    .line 28
    iput-object p2, p0, Lcom/squareup/okhttp/internal/http/CacheStrategy;->cacheResponse:Lcom/squareup/okhttp/Response;

    .line 29
    return-void
.end method

.method synthetic constructor <init>(Lcom/squareup/okhttp/Request;Lcom/squareup/okhttp/Response;Lcom/squareup/okhttp/internal/http/CacheStrategy$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/squareup/okhttp/Request;
    .param p2, "x1"    # Lcom/squareup/okhttp/Response;
    .param p3, "x2"    # Lcom/squareup/okhttp/internal/http/CacheStrategy$1;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/squareup/okhttp/internal/http/CacheStrategy;-><init>(Lcom/squareup/okhttp/Request;Lcom/squareup/okhttp/Response;)V

    return-void
.end method

.method public static isCacheable(Lcom/squareup/okhttp/Response;Lcom/squareup/okhttp/Request;)Z
    .locals 5
    .param p0, "response"    # Lcom/squareup/okhttp/Response;
    .param p1, "request"    # Lcom/squareup/okhttp/Request;

    .prologue
    const/4 v2, 0x0

    .line 38
    invoke-virtual {p0}, Lcom/squareup/okhttp/Response;->code()I

    move-result v1

    .line 39
    .local v1, "responseCode":I
    const/16 v3, 0xc8

    if-eq v1, v3, :cond_1

    const/16 v3, 0xcb

    if-eq v1, v3, :cond_1

    const/16 v3, 0x12c

    if-eq v1, v3, :cond_1

    const/16 v3, 0x12d

    if-eq v1, v3, :cond_1

    const/16 v3, 0x19a

    if-eq v1, v3, :cond_1

    .line 61
    :cond_0
    :goto_0
    return v2

    .line 49
    :cond_1
    invoke-virtual {p0}, Lcom/squareup/okhttp/Response;->cacheControl()Lcom/squareup/okhttp/CacheControl;

    move-result-object v0

    .line 50
    .local v0, "responseCaching":Lcom/squareup/okhttp/CacheControl;
    const-string v3, "Authorization"

    invoke-virtual {p1, v3}, Lcom/squareup/okhttp/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/squareup/okhttp/CacheControl;->isPublic()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Lcom/squareup/okhttp/CacheControl;->mustRevalidate()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Lcom/squareup/okhttp/CacheControl;->sMaxAgeSeconds()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 57
    :cond_2
    invoke-virtual {v0}, Lcom/squareup/okhttp/CacheControl;->noStore()Z

    move-result v3

    if-nez v3, :cond_0

    .line 61
    const/4 v2, 0x1

    goto :goto_0
.end method
