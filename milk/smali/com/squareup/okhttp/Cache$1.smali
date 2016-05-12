.class Lcom/squareup/okhttp/Cache$1;
.super Ljava/lang/Object;
.source "Cache.java"

# interfaces
.implements Lcom/squareup/okhttp/internal/InternalCache;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/squareup/okhttp/Cache;


# direct methods
.method constructor <init>(Lcom/squareup/okhttp/Cache;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/squareup/okhttp/Cache$1;->this$0:Lcom/squareup/okhttp/Cache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Response;
    .locals 1
    .param p1, "request"    # Lcom/squareup/okhttp/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    iget-object v0, p0, Lcom/squareup/okhttp/Cache$1;->this$0:Lcom/squareup/okhttp/Cache;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/Cache;->get(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Response;

    move-result-object v0

    return-object v0
.end method

.method public put(Lcom/squareup/okhttp/Response;)Ljava/net/CacheRequest;
    .locals 1
    .param p1, "response"    # Lcom/squareup/okhttp/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lcom/squareup/okhttp/Cache$1;->this$0:Lcom/squareup/okhttp/Cache;

    # invokes: Lcom/squareup/okhttp/Cache;->put(Lcom/squareup/okhttp/Response;)Ljava/net/CacheRequest;
    invoke-static {v0, p1}, Lcom/squareup/okhttp/Cache;->access$000(Lcom/squareup/okhttp/Cache;Lcom/squareup/okhttp/Response;)Ljava/net/CacheRequest;

    move-result-object v0

    return-object v0
.end method

.method public remove(Lcom/squareup/okhttp/Request;)V
    .locals 1
    .param p1, "request"    # Lcom/squareup/okhttp/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, Lcom/squareup/okhttp/Cache$1;->this$0:Lcom/squareup/okhttp/Cache;

    # invokes: Lcom/squareup/okhttp/Cache;->remove(Lcom/squareup/okhttp/Request;)V
    invoke-static {v0, p1}, Lcom/squareup/okhttp/Cache;->access$100(Lcom/squareup/okhttp/Cache;Lcom/squareup/okhttp/Request;)V

    .line 124
    return-void
.end method

.method public trackConditionalCacheHit()V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/squareup/okhttp/Cache$1;->this$0:Lcom/squareup/okhttp/Cache;

    # invokes: Lcom/squareup/okhttp/Cache;->trackConditionalCacheHit()V
    invoke-static {v0}, Lcom/squareup/okhttp/Cache;->access$300(Lcom/squareup/okhttp/Cache;)V

    .line 130
    return-void
.end method

.method public trackResponse(Lcom/squareup/okhttp/internal/http/CacheStrategy;)V
    .locals 1
    .param p1, "cacheStrategy"    # Lcom/squareup/okhttp/internal/http/CacheStrategy;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/squareup/okhttp/Cache$1;->this$0:Lcom/squareup/okhttp/Cache;

    # invokes: Lcom/squareup/okhttp/Cache;->trackResponse(Lcom/squareup/okhttp/internal/http/CacheStrategy;)V
    invoke-static {v0, p1}, Lcom/squareup/okhttp/Cache;->access$400(Lcom/squareup/okhttp/Cache;Lcom/squareup/okhttp/internal/http/CacheStrategy;)V

    .line 133
    return-void
.end method

.method public update(Lcom/squareup/okhttp/Response;Lcom/squareup/okhttp/Response;)V
    .locals 1
    .param p1, "cached"    # Lcom/squareup/okhttp/Response;
    .param p2, "network"    # Lcom/squareup/okhttp/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Lcom/squareup/okhttp/Cache$1;->this$0:Lcom/squareup/okhttp/Cache;

    # invokes: Lcom/squareup/okhttp/Cache;->update(Lcom/squareup/okhttp/Response;Lcom/squareup/okhttp/Response;)V
    invoke-static {v0, p1, p2}, Lcom/squareup/okhttp/Cache;->access$200(Lcom/squareup/okhttp/Cache;Lcom/squareup/okhttp/Response;Lcom/squareup/okhttp/Response;)V

    .line 127
    return-void
.end method
