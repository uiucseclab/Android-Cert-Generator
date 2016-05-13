.class public Lcom/facebook/systrace/http/SystraceHttpFlowObserver;
.super Lcom/facebook/http/observer/AbstractFbHttpFlowObserver;
.source "traces"


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/facebook/http/observer/AbstractFbHttpFlowObserver;-><init>()V

    .line 27
    return-void
.end method

.method public static a(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/systrace/http/SystraceHttpFlowObserver;
    .locals 2

    .prologue
    .line 33
    .line 16
    new-instance v1, Lcom/facebook/systrace/http/SystraceHttpFlowObserver;

    invoke-direct {v1}, Lcom/facebook/systrace/http/SystraceHttpFlowObserver;-><init>()V

    .line 17
    move-object v0, v1

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/facebook/http/observer/Stage;Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;Ljava/io/IOException;)V
    .locals 8
    .param p3    # Lorg/apache/http/HttpResponse;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const-wide/16 v6, 0x10

    .line 75
    invoke-super/range {p0 .. p5}, Lcom/facebook/http/observer/AbstractFbHttpFlowObserver;->a(Lcom/facebook/http/observer/Stage;Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;Ljava/io/IOException;)V

    .line 77
    invoke-interface {p2}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v1

    .line 78
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    .line 81
    if-eqz p3, :cond_0

    .line 82
    invoke-interface {p3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 83
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "(FAILED: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 88
    :goto_0
    invoke-static {v6, v7, v1, v2}, Lcom/facebook/systrace/Systrace;->c(JLjava/lang/String;I)V

    .line 89
    invoke-static {v6, v7, v1, v0, v2}, Lcom/facebook/systrace/Systrace;->b(JLjava/lang/String;Ljava/lang/String;I)V

    .line 94
    return-void

    .line 85
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "(FAILED)"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;Lcom/facebook/http/observer/HttpFlowStatistics;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x10

    .line 32
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/http/observer/AbstractFbHttpFlowObserver;->a(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;Lcom/facebook/http/observer/HttpFlowStatistics;)V

    .line 34
    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v0

    .line 35
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 37
    invoke-static {v4, v5, v0, v1}, Lcom/facebook/systrace/Systrace;->b(JLjava/lang/String;I)V

    .line 38
    const-string v2, "Latency"

    invoke-static {v4, v5, v0, v1, v2}, Lcom/facebook/systrace/Systrace;->a(JLjava/lang/String;ILjava/lang/String;)V

    .line 43
    return-void
.end method

.method public final a(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
    .locals 5

    .prologue
    .line 48
    invoke-super {p0, p1, p2}, Lcom/facebook/http/observer/AbstractFbHttpFlowObserver;->a(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V

    .line 50
    const-wide/16 v0, 0x10

    invoke-virtual {p0}, Lcom/facebook/http/observer/AbstractFbHttpFlowObserver;->b()Lorg/apache/http/HttpRequest;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/facebook/http/observer/AbstractFbHttpFlowObserver;->b()Lorg/apache/http/HttpRequest;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    const-string v4, "Download"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/facebook/systrace/Systrace;->a(JLjava/lang/String;ILjava/lang/String;)V

    .line 55
    return-void
.end method

.method public final b(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
    .locals 4

    .prologue
    .line 60
    invoke-super {p0, p1, p2}, Lcom/facebook/http/observer/AbstractFbHttpFlowObserver;->b(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V

    .line 62
    const-wide/16 v0, 0x10

    invoke-virtual {p0}, Lcom/facebook/http/observer/AbstractFbHttpFlowObserver;->b()Lorg/apache/http/HttpRequest;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/facebook/http/observer/AbstractFbHttpFlowObserver;->b()Lorg/apache/http/HttpRequest;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/systrace/Systrace;->c(JLjava/lang/String;I)V

    .line 66
    return-void
.end method
