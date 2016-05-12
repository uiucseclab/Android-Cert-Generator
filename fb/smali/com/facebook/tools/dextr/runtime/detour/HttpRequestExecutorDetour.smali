.class public Lcom/facebook/tools/dextr/runtime/detour/HttpRequestExecutorDetour;
.super Ljava/lang/Object;
.source "tr"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method private static a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 95
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    int-to-long v2, p1

    invoke-static {v2, v3}, Lcom/facebook/fbtrace/utils/FbTraceId;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/facebook/http/engine/HttpRequestExecutor;Lorg/apache/http/client/methods/HttpUriRequest;Lcom/facebook/http/common/FbRequestState;Lorg/apache/http/protocol/HttpContext;Lcom/facebook/http/observer/HttpFlowStatistics;I)Lorg/apache/http/HttpResponse;
    .locals 8
    .param p1    # Lorg/apache/http/client/methods/HttpUriRequest;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v7, 0x2

    const/16 v6, 0x8

    .line 40
    sget-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->NETWORK_OP_START:Lcom/facebook/loom/logger/LogEntry$EntryType;

    invoke-static {v6, v0, p5}, Lcom/facebook/loom/logger/Logger;->a(ILcom/facebook/loom/logger/LogEntry$EntryType;I)I

    move-result v1

    .line 42
    invoke-static {}, Lcom/facebook/loom/core/TraceControl;->a()Lcom/facebook/loom/core/TraceControl;

    move-result-object v2

    .line 43
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/facebook/loom/core/TraceControl;->b()Ljava/lang/String;

    move-result-object v0

    .line 47
    :goto_0
    const/16 v3, 0x10

    invoke-static {v3}, Lcom/facebook/loom/core/TraceEvents;->a(I)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz p1, :cond_0

    const-string v3, "AAAAAAAAAAA"

    if-eq v0, v3, :cond_0

    .line 50
    const-string v3, "X-FBTrace-Meta"

    invoke-static {v0, v1}, Lcom/facebook/tools/dextr/runtime/detour/HttpRequestExecutorDetour;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v3, v0}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v0, "X-FBTrace-Sampled"

    const-string v3, "true"

    invoke-interface {p1, v0, v3}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :cond_0
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/facebook/http/engine/HttpRequestExecutor;->a(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/facebook/http/common/FbRequestState;Lorg/apache/http/protocol/HttpContext;Lcom/facebook/http/observer/HttpFlowStatistics;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 59
    sget-object v3, Lcom/facebook/loom/logger/LogEntry$EntryType;->NETWORK_OP_END:Lcom/facebook/loom/logger/LogEntry$EntryType;

    invoke-static {v6, v3, p5, v1}, Lcom/facebook/loom/logger/Logger;->a(ILcom/facebook/loom/logger/LogEntry$EntryType;II)I

    .line 62
    if-nez v0, :cond_3

    .line 63
    const/4 v0, 0x0

    .line 87
    :cond_1
    :goto_1
    return-object v0

    .line 43
    :cond_2
    const-string v0, "AAAAAAAAAAA"

    goto :goto_0

    .line 66
    :cond_3
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 67
    if-eqz v1, :cond_4

    .line 68
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v4

    .line 69
    sget-object v1, Lcom/facebook/loom/logger/LogEntry$EntryType;->COUNTER:Lcom/facebook/loom/logger/LogEntry$EntryType;

    invoke-static {v6, v1, p5, v4, v5}, Lcom/facebook/loom/logger/Logger;->a(ILcom/facebook/loom/logger/LogEntry$EntryType;IJ)I

    .line 73
    :cond_4
    const-string v1, "X-FBTrace-Backwards"

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->containsHeader(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 74
    const-string v1, "X-FBTrace-Backwards"

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 76
    const-string v3, "true"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    const/4 v1, 0x4

    invoke-virtual {v2, v7, v1, p1}, Lcom/facebook/loom/core/TraceControl;->a(IILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 83
    invoke-virtual {v2, v7, p1}, Lcom/facebook/loom/core/TraceControl;->a(ILjava/lang/Object;)V

    goto :goto_1
.end method
