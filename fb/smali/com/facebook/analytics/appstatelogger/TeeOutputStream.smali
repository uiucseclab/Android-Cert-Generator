.class public Lcom/facebook/analytics/appstatelogger/TeeOutputStream;
.super Ljava/io/OutputStream;
.source "trun"


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/OutputStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/OutputStream;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/facebook/analytics/appstatelogger/TeeOutputStream;->a:Ljava/util/ArrayList;

    .line 16
    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    .prologue
    .line 20
    const/4 v1, 0x0

    .line 21
    iget-object v0, p0, Lcom/facebook/analytics/appstatelogger/TeeOutputStream;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/OutputStream;

    .line 23
    :try_start_0
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 24
    :catch_0
    move-exception v3

    .line 25
    if-nez v1, :cond_2

    .line 26
    new-instance v0, Lcom/facebook/analytics/appstatelogger/AggregateIOException;

    const-string v1, "Exception closing the stream"

    invoke-direct {v0, v1}, Lcom/facebook/analytics/appstatelogger/AggregateIOException;-><init>(Ljava/lang/String;)V

    .line 28
    :goto_1
    invoke-virtual {v0, v3}, Lcom/facebook/analytics/appstatelogger/AggregateIOException;->a(Ljava/io/IOException;)V

    move-object v1, v0

    .line 30
    goto :goto_0

    .line 32
    :cond_0
    if-eqz v1, :cond_1

    .line 33
    throw v1

    .line 35
    :cond_1
    return-void

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public flush()V
    .locals 4

    .prologue
    .line 39
    const/4 v1, 0x0

    .line 40
    iget-object v0, p0, Lcom/facebook/analytics/appstatelogger/TeeOutputStream;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/OutputStream;

    .line 42
    :try_start_0
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 43
    :catch_0
    move-exception v3

    .line 44
    if-nez v1, :cond_2

    .line 45
    new-instance v0, Lcom/facebook/analytics/appstatelogger/AggregateIOException;

    const-string v1, "Exception flushing the stream"

    invoke-direct {v0, v1}, Lcom/facebook/analytics/appstatelogger/AggregateIOException;-><init>(Ljava/lang/String;)V

    .line 47
    :goto_1
    invoke-virtual {v0, v3}, Lcom/facebook/analytics/appstatelogger/AggregateIOException;->a(Ljava/io/IOException;)V

    move-object v1, v0

    .line 49
    goto :goto_0

    .line 51
    :cond_0
    if-eqz v1, :cond_1

    .line 52
    throw v1

    .line 54
    :cond_1
    return-void

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public write(I)V
    .locals 4

    .prologue
    .line 96
    const/4 v1, 0x0

    .line 97
    iget-object v0, p0, Lcom/facebook/analytics/appstatelogger/TeeOutputStream;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/OutputStream;

    .line 99
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 100
    :catch_0
    move-exception v3

    .line 101
    if-nez v1, :cond_2

    .line 102
    new-instance v0, Lcom/facebook/analytics/appstatelogger/AggregateIOException;

    const-string v1, "Exception writing one byte to the stream"

    invoke-direct {v0, v1}, Lcom/facebook/analytics/appstatelogger/AggregateIOException;-><init>(Ljava/lang/String;)V

    .line 104
    :goto_1
    invoke-virtual {v0, v3}, Lcom/facebook/analytics/appstatelogger/AggregateIOException;->a(Ljava/io/IOException;)V

    move-object v1, v0

    .line 106
    goto :goto_0

    .line 108
    :cond_0
    if-eqz v1, :cond_1

    .line 109
    throw v1

    .line 111
    :cond_1
    return-void

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public write([B)V
    .locals 4

    .prologue
    .line 77
    const/4 v1, 0x0

    .line 78
    iget-object v0, p0, Lcom/facebook/analytics/appstatelogger/TeeOutputStream;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/OutputStream;

    .line 80
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 81
    :catch_0
    move-exception v3

    .line 82
    if-nez v1, :cond_2

    .line 83
    new-instance v0, Lcom/facebook/analytics/appstatelogger/AggregateIOException;

    const-string v1, "Exception writing to the stream"

    invoke-direct {v0, v1}, Lcom/facebook/analytics/appstatelogger/AggregateIOException;-><init>(Ljava/lang/String;)V

    .line 85
    :goto_1
    invoke-virtual {v0, v3}, Lcom/facebook/analytics/appstatelogger/AggregateIOException;->a(Ljava/io/IOException;)V

    move-object v1, v0

    .line 87
    goto :goto_0

    .line 89
    :cond_0
    if-eqz v1, :cond_1

    .line 90
    throw v1

    .line 92
    :cond_1
    return-void

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public write([BII)V
    .locals 4

    .prologue
    .line 58
    const/4 v1, 0x0

    .line 59
    iget-object v0, p0, Lcom/facebook/analytics/appstatelogger/TeeOutputStream;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/OutputStream;

    .line 61
    :try_start_0
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 62
    :catch_0
    move-exception v3

    .line 63
    if-nez v1, :cond_2

    .line 64
    new-instance v0, Lcom/facebook/analytics/appstatelogger/AggregateIOException;

    const-string v1, "Exception writing to the stream"

    invoke-direct {v0, v1}, Lcom/facebook/analytics/appstatelogger/AggregateIOException;-><init>(Ljava/lang/String;)V

    .line 66
    :goto_1
    invoke-virtual {v0, v3}, Lcom/facebook/analytics/appstatelogger/AggregateIOException;->a(Ljava/io/IOException;)V

    move-object v1, v0

    .line 68
    goto :goto_0

    .line 70
    :cond_0
    if-eqz v1, :cond_1

    .line 71
    throw v1

    .line 73
    :cond_1
    return-void

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method
