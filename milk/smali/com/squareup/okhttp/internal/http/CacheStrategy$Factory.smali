.class public Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;
.super Ljava/lang/Object;
.source "CacheStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/http/CacheStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# instance fields
.field private ageSeconds:I

.field final cacheResponse:Lcom/squareup/okhttp/Response;

.field private etag:Ljava/lang/String;

.field private expires:Ljava/util/Date;

.field private lastModified:Ljava/util/Date;

.field private lastModifiedString:Ljava/lang/String;

.field final nowMillis:J

.field private receivedResponseMillis:J

.field final request:Lcom/squareup/okhttp/Request;

.field private sentRequestMillis:J

.field private servedDate:Ljava/util/Date;

.field private servedDateString:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLcom/squareup/okhttp/Request;Lcom/squareup/okhttp/Response;)V
    .locals 5
    .param p1, "nowMillis"    # J
    .param p3, "request"    # Lcom/squareup/okhttp/Request;
    .param p4, "cacheResponse"    # Lcom/squareup/okhttp/Response;

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const/4 v3, -0x1

    iput v3, p0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->ageSeconds:I

    .line 102
    iput-wide p1, p0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->nowMillis:J

    .line 103
    iput-object p3, p0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->request:Lcom/squareup/okhttp/Request;

    .line 104
    iput-object p4, p0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->cacheResponse:Lcom/squareup/okhttp/Response;

    .line 106
    if-eqz p4, :cond_7

    .line 107
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p4}, Lcom/squareup/okhttp/Response;->headers()Lcom/squareup/okhttp/Headers;

    move-result-object v3

    invoke-virtual {v3}, Lcom/squareup/okhttp/Headers;->size()I

    move-result v3

    if-ge v1, v3, :cond_7

    .line 108
    invoke-virtual {p4}, Lcom/squareup/okhttp/Response;->headers()Lcom/squareup/okhttp/Headers;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/squareup/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, "fieldName":Ljava/lang/String;
    invoke-virtual {p4}, Lcom/squareup/okhttp/Response;->headers()Lcom/squareup/okhttp/Headers;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/squareup/okhttp/Headers;->value(I)Ljava/lang/String;

    move-result-object v2

    .line 110
    .local v2, "value":Ljava/lang/String;
    const-string v3, "Date"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 111
    invoke-static {v2}, Lcom/squareup/okhttp/internal/http/HttpDate;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    iput-object v3, p0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    .line 112
    iput-object v2, p0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->servedDateString:Ljava/lang/String;

    .line 107
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 113
    :cond_1
    const-string v3, "Expires"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 114
    invoke-static {v2}, Lcom/squareup/okhttp/internal/http/HttpDate;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    iput-object v3, p0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->expires:Ljava/util/Date;

    goto :goto_1

    .line 115
    :cond_2
    const-string v3, "Last-Modified"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 116
    invoke-static {v2}, Lcom/squareup/okhttp/internal/http/HttpDate;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    iput-object v3, p0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->lastModified:Ljava/util/Date;

    .line 117
    iput-object v2, p0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->lastModifiedString:Ljava/lang/String;

    goto :goto_1

    .line 118
    :cond_3
    const-string v3, "ETag"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 119
    iput-object v2, p0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->etag:Ljava/lang/String;

    goto :goto_1

    .line 120
    :cond_4
    const-string v3, "Age"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 121
    invoke-static {v2}, Lcom/squareup/okhttp/internal/http/HeaderParser;->parseSeconds(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->ageSeconds:I

    goto :goto_1

    .line 122
    :cond_5
    sget-object v3, Lcom/squareup/okhttp/internal/http/OkHeaders;->SENT_MILLIS:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 123
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->sentRequestMillis:J

    goto :goto_1

    .line 124
    :cond_6
    sget-object v3, Lcom/squareup/okhttp/internal/http/OkHeaders;->RECEIVED_MILLIS:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 125
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->receivedResponseMillis:J

    goto :goto_1

    .line 129
    .end local v0    # "fieldName":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "value":Ljava/lang/String;
    :cond_7
    return-void
.end method

.method private cacheResponseAge()J
    .locals 12

    .prologue
    const-wide/16 v0, 0x0

    .line 252
    iget-object v8, p0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    if-eqz v8, :cond_0

    iget-wide v8, p0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->receivedResponseMillis:J

    iget-object v10, p0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    sub-long/2addr v8, v10

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 255
    .local v0, "apparentReceivedAge":J
    :cond_0
    iget v8, p0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->ageSeconds:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_1

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v9, p0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->ageSeconds:I

    int-to-long v9, v9

    invoke-virtual {v8, v9, v10}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 258
    .local v2, "receivedAge":J
    :goto_0
    iget-wide v8, p0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->receivedResponseMillis:J

    iget-wide v10, p0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->sentRequestMillis:J

    sub-long v6, v8, v10

    .line 259
    .local v6, "responseDuration":J
    iget-wide v8, p0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->nowMillis:J

    iget-wide v10, p0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->receivedResponseMillis:J

    sub-long v4, v8, v10

    .line 260
    .local v4, "residentDuration":J
    add-long v8, v2, v6

    add-long/2addr v8, v4

    return-wide v8

    .end local v2    # "receivedAge":J
    .end local v4    # "residentDuration":J
    .end local v6    # "responseDuration":J
    :cond_1
    move-wide v2, v0

    .line 255
    goto :goto_0
.end method

.method private computeFreshnessLifetime()J
    .locals 9

    .prologue
    const-wide/16 v5, 0x0

    .line 223
    iget-object v7, p0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->cacheResponse:Lcom/squareup/okhttp/Response;

    invoke-virtual {v7}, Lcom/squareup/okhttp/Response;->cacheControl()Lcom/squareup/okhttp/CacheControl;

    move-result-object v2

    .line 224
    .local v2, "responseCaching":Lcom/squareup/okhttp/CacheControl;
    invoke-virtual {v2}, Lcom/squareup/okhttp/CacheControl;->maxAgeSeconds()I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_1

    .line 225
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2}, Lcom/squareup/okhttp/CacheControl;->maxAgeSeconds()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    .line 244
    :cond_0
    :goto_0
    return-wide v5

    .line 226
    :cond_1
    iget-object v7, p0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->expires:Ljava/util/Date;

    if-eqz v7, :cond_4

    .line 227
    iget-object v7, p0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    .line 230
    .local v3, "servedMillis":J
    :goto_1
    iget-object v7, p0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->expires:Ljava/util/Date;

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    sub-long v0, v7, v3

    .line 231
    .local v0, "delta":J
    cmp-long v7, v0, v5

    if-lez v7, :cond_3

    .end local v0    # "delta":J
    :goto_2
    move-wide v5, v0

    goto :goto_0

    .line 227
    .end local v3    # "servedMillis":J
    :cond_2
    iget-wide v3, p0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->receivedResponseMillis:J

    goto :goto_1

    .restart local v0    # "delta":J
    .restart local v3    # "servedMillis":J
    :cond_3
    move-wide v0, v5

    .line 231
    goto :goto_2

    .line 232
    .end local v0    # "delta":J
    .end local v3    # "servedMillis":J
    :cond_4
    iget-object v7, p0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->lastModified:Ljava/util/Date;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->cacheResponse:Lcom/squareup/okhttp/Response;

    invoke-virtual {v7}, Lcom/squareup/okhttp/Response;->request()Lcom/squareup/okhttp/Request;

    move-result-object v7

    invoke-virtual {v7}, Lcom/squareup/okhttp/Request;->url()Ljava/net/URL;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_0

    .line 238
    iget-object v7, p0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    .line 241
    .restart local v3    # "servedMillis":J
    :goto_3
    iget-object v7, p0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->lastModified:Ljava/util/Date;

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    sub-long v0, v3, v7

    .line 242
    .restart local v0    # "delta":J
    cmp-long v7, v0, v5

    if-lez v7, :cond_0

    const-wide/16 v5, 0xa

    div-long v5, v0, v5

    goto :goto_0

    .line 238
    .end local v0    # "delta":J
    .end local v3    # "servedMillis":J
    :cond_5
    iget-wide v3, p0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->sentRequestMillis:J

    goto :goto_3
.end method

.method private getCandidate()Lcom/squareup/okhttp/internal/http/CacheStrategy;
    .locals 22

    .prologue
    .line 149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->cacheResponse:Lcom/squareup/okhttp/Response;

    move-object/from16 v18, v0

    if-nez v18, :cond_0

    .line 150
    new-instance v18, Lcom/squareup/okhttp/internal/http/CacheStrategy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->request:Lcom/squareup/okhttp/Request;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-direct/range {v18 .. v21}, Lcom/squareup/okhttp/internal/http/CacheStrategy;-><init>(Lcom/squareup/okhttp/Request;Lcom/squareup/okhttp/Response;Lcom/squareup/okhttp/internal/http/CacheStrategy$1;)V

    .line 213
    :goto_0
    return-object v18

    .line 154
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->request:Lcom/squareup/okhttp/Request;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/squareup/okhttp/Request;->isHttps()Z

    move-result v18

    if-eqz v18, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->cacheResponse:Lcom/squareup/okhttp/Response;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/squareup/okhttp/Response;->handshake()Lcom/squareup/okhttp/Handshake;

    move-result-object v18

    if-nez v18, :cond_1

    .line 155
    new-instance v18, Lcom/squareup/okhttp/internal/http/CacheStrategy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->request:Lcom/squareup/okhttp/Request;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-direct/range {v18 .. v21}, Lcom/squareup/okhttp/internal/http/CacheStrategy;-><init>(Lcom/squareup/okhttp/Request;Lcom/squareup/okhttp/Response;Lcom/squareup/okhttp/internal/http/CacheStrategy$1;)V

    goto :goto_0

    .line 161
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->cacheResponse:Lcom/squareup/okhttp/Response;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->request:Lcom/squareup/okhttp/Request;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v19}, Lcom/squareup/okhttp/internal/http/CacheStrategy;->isCacheable(Lcom/squareup/okhttp/Response;Lcom/squareup/okhttp/Request;)Z

    move-result v18

    if-nez v18, :cond_2

    .line 162
    new-instance v18, Lcom/squareup/okhttp/internal/http/CacheStrategy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->request:Lcom/squareup/okhttp/Request;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-direct/range {v18 .. v21}, Lcom/squareup/okhttp/internal/http/CacheStrategy;-><init>(Lcom/squareup/okhttp/Request;Lcom/squareup/okhttp/Response;Lcom/squareup/okhttp/internal/http/CacheStrategy$1;)V

    goto :goto_0

    .line 165
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->request:Lcom/squareup/okhttp/Request;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/squareup/okhttp/Request;->cacheControl()Lcom/squareup/okhttp/CacheControl;

    move-result-object v16

    .line 166
    .local v16, "requestCaching":Lcom/squareup/okhttp/CacheControl;
    invoke-virtual/range {v16 .. v16}, Lcom/squareup/okhttp/CacheControl;->noCache()Z

    move-result v18

    if-nez v18, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->request:Lcom/squareup/okhttp/Request;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->hasConditions(Lcom/squareup/okhttp/Request;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 167
    :cond_3
    new-instance v18, Lcom/squareup/okhttp/internal/http/CacheStrategy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->request:Lcom/squareup/okhttp/Request;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-direct/range {v18 .. v21}, Lcom/squareup/okhttp/internal/http/CacheStrategy;-><init>(Lcom/squareup/okhttp/Request;Lcom/squareup/okhttp/Response;Lcom/squareup/okhttp/internal/http/CacheStrategy$1;)V

    goto :goto_0

    .line 170
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->cacheResponseAge()J

    move-result-wide v3

    .line 171
    .local v3, "ageMillis":J
    invoke-direct/range {p0 .. p0}, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->computeFreshnessLifetime()J

    move-result-wide v8

    .line 173
    .local v8, "freshMillis":J
    invoke-virtual/range {v16 .. v16}, Lcom/squareup/okhttp/CacheControl;->maxAgeSeconds()I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_5

    .line 174
    sget-object v18, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v16 .. v16}, Lcom/squareup/okhttp/CacheControl;->maxAgeSeconds()I

    move-result v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    invoke-virtual/range {v18 .. v20}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    .line 177
    :cond_5
    const-wide/16 v12, 0x0

    .line 178
    .local v12, "minFreshMillis":J
    invoke-virtual/range {v16 .. v16}, Lcom/squareup/okhttp/CacheControl;->minFreshSeconds()I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_6

    .line 179
    sget-object v18, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v16 .. v16}, Lcom/squareup/okhttp/CacheControl;->minFreshSeconds()I

    move-result v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    invoke-virtual/range {v18 .. v20}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v12

    .line 182
    :cond_6
    const-wide/16 v10, 0x0

    .line 183
    .local v10, "maxStaleMillis":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->cacheResponse:Lcom/squareup/okhttp/Response;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/squareup/okhttp/Response;->cacheControl()Lcom/squareup/okhttp/CacheControl;

    move-result-object v17

    .line 184
    .local v17, "responseCaching":Lcom/squareup/okhttp/CacheControl;
    invoke-virtual/range {v17 .. v17}, Lcom/squareup/okhttp/CacheControl;->mustRevalidate()Z

    move-result v18

    if-nez v18, :cond_7

    invoke-virtual/range {v16 .. v16}, Lcom/squareup/okhttp/CacheControl;->maxStaleSeconds()I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_7

    .line 185
    sget-object v18, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v16 .. v16}, Lcom/squareup/okhttp/CacheControl;->maxStaleSeconds()I

    move-result v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    invoke-virtual/range {v18 .. v20}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v10

    .line 188
    :cond_7
    invoke-virtual/range {v17 .. v17}, Lcom/squareup/okhttp/CacheControl;->noCache()Z

    move-result v18

    if-nez v18, :cond_a

    add-long v18, v3, v12

    add-long v20, v8, v10

    cmp-long v18, v18, v20

    if-gez v18, :cond_a

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->cacheResponse:Lcom/squareup/okhttp/Response;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/squareup/okhttp/Response;->newBuilder()Lcom/squareup/okhttp/Response$Builder;

    move-result-object v5

    .line 190
    .local v5, "builder":Lcom/squareup/okhttp/Response$Builder;
    add-long v18, v3, v12

    cmp-long v18, v18, v8

    if-ltz v18, :cond_8

    .line 191
    const-string v18, "Warning"

    const-string v19, "110 HttpURLConnection \"Response is stale\""

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Lcom/squareup/okhttp/Response$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Response$Builder;

    .line 193
    :cond_8
    const-wide/32 v14, 0x5265c00

    .line 194
    .local v14, "oneDayMillis":J
    cmp-long v18, v3, v14

    if-lez v18, :cond_9

    invoke-direct/range {p0 .. p0}, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->isFreshnessLifetimeHeuristic()Z

    move-result v18

    if-eqz v18, :cond_9

    .line 195
    const-string v18, "Warning"

    const-string v19, "113 HttpURLConnection \"Heuristic expiration\""

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Lcom/squareup/okhttp/Response$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Response$Builder;

    .line 197
    :cond_9
    new-instance v18, Lcom/squareup/okhttp/internal/http/CacheStrategy;

    const/16 v19, 0x0

    invoke-virtual {v5}, Lcom/squareup/okhttp/Response$Builder;->build()Lcom/squareup/okhttp/Response;

    move-result-object v20

    const/16 v21, 0x0

    invoke-direct/range {v18 .. v21}, Lcom/squareup/okhttp/internal/http/CacheStrategy;-><init>(Lcom/squareup/okhttp/Request;Lcom/squareup/okhttp/Response;Lcom/squareup/okhttp/internal/http/CacheStrategy$1;)V

    goto/16 :goto_0

    .line 200
    .end local v5    # "builder":Lcom/squareup/okhttp/Response$Builder;
    .end local v14    # "oneDayMillis":J
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->request:Lcom/squareup/okhttp/Request;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/squareup/okhttp/Request;->newBuilder()Lcom/squareup/okhttp/Request$Builder;

    move-result-object v7

    .line 202
    .local v7, "conditionalRequestBuilder":Lcom/squareup/okhttp/Request$Builder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->lastModified:Ljava/util/Date;

    move-object/from16 v18, v0

    if-eqz v18, :cond_d

    .line 203
    const-string v18, "If-Modified-Since"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->lastModifiedString:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Lcom/squareup/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    .line 208
    :cond_b
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->etag:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_c

    .line 209
    const-string v18, "If-None-Match"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->etag:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Lcom/squareup/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    .line 212
    :cond_c
    invoke-virtual {v7}, Lcom/squareup/okhttp/Request$Builder;->build()Lcom/squareup/okhttp/Request;

    move-result-object v6

    .line 213
    .local v6, "conditionalRequest":Lcom/squareup/okhttp/Request;
    invoke-static {v6}, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->hasConditions(Lcom/squareup/okhttp/Request;)Z

    move-result v18

    if-eqz v18, :cond_e

    new-instance v18, Lcom/squareup/okhttp/internal/http/CacheStrategy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->cacheResponse:Lcom/squareup/okhttp/Response;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v6, v1, v2}, Lcom/squareup/okhttp/internal/http/CacheStrategy;-><init>(Lcom/squareup/okhttp/Request;Lcom/squareup/okhttp/Response;Lcom/squareup/okhttp/internal/http/CacheStrategy$1;)V

    goto/16 :goto_0

    .line 204
    .end local v6    # "conditionalRequest":Lcom/squareup/okhttp/Request;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    move-object/from16 v18, v0

    if-eqz v18, :cond_b

    .line 205
    const-string v18, "If-Modified-Since"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->servedDateString:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Lcom/squareup/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    goto :goto_1

    .line 213
    .restart local v6    # "conditionalRequest":Lcom/squareup/okhttp/Request;
    :cond_e
    new-instance v18, Lcom/squareup/okhttp/internal/http/CacheStrategy;

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v6, v1, v2}, Lcom/squareup/okhttp/internal/http/CacheStrategy;-><init>(Lcom/squareup/okhttp/Request;Lcom/squareup/okhttp/Response;Lcom/squareup/okhttp/internal/http/CacheStrategy$1;)V

    goto/16 :goto_0
.end method

.method private static hasConditions(Lcom/squareup/okhttp/Request;)Z
    .locals 1
    .param p0, "request"    # Lcom/squareup/okhttp/Request;

    .prologue
    .line 278
    const-string v0, "If-Modified-Since"

    invoke-virtual {p0, v0}, Lcom/squareup/okhttp/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "If-None-Match"

    invoke-virtual {p0, v0}, Lcom/squareup/okhttp/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isFreshnessLifetimeHeuristic()Z
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->cacheResponse:Lcom/squareup/okhttp/Response;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Response;->cacheControl()Lcom/squareup/okhttp/CacheControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/CacheControl;->maxAgeSeconds()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->expires:Ljava/util/Date;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public get()Lcom/squareup/okhttp/internal/http/CacheStrategy;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 136
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->getCandidate()Lcom/squareup/okhttp/internal/http/CacheStrategy;

    move-result-object v0

    .line 138
    .local v0, "candidate":Lcom/squareup/okhttp/internal/http/CacheStrategy;
    iget-object v1, v0, Lcom/squareup/okhttp/internal/http/CacheStrategy;->networkRequest:Lcom/squareup/okhttp/Request;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;->request:Lcom/squareup/okhttp/Request;

    invoke-virtual {v1}, Lcom/squareup/okhttp/Request;->cacheControl()Lcom/squareup/okhttp/CacheControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/okhttp/CacheControl;->onlyIfCached()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    new-instance v0, Lcom/squareup/okhttp/internal/http/CacheStrategy;

    .end local v0    # "candidate":Lcom/squareup/okhttp/internal/http/CacheStrategy;
    invoke-direct {v0, v2, v2, v2}, Lcom/squareup/okhttp/internal/http/CacheStrategy;-><init>(Lcom/squareup/okhttp/Request;Lcom/squareup/okhttp/Response;Lcom/squareup/okhttp/internal/http/CacheStrategy$1;)V

    .line 143
    :cond_0
    return-object v0
.end method
