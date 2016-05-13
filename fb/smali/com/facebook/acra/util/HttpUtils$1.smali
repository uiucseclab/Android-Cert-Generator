.class public final Lcom/facebook/acra/util/HttpUtils$1;
.super Ljava/lang/Object;
.source "readProcFile"

# interfaces
.implements Lcom/facebook/acra/util/HttpRequest$PostEntity;


# instance fields
.field final synthetic val$parameters:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/facebook/acra/util/HttpUtils$1;->val$parameters:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final writeTo(Ljava/io/OutputStream;)V
    .locals 6

    .prologue
    .line 106
    const/4 v0, 0x1

    .line 107
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 108
    new-instance v3, Lcom/facebook/acra/util/UrlEncodingWriter;

    invoke-direct {v3, v2}, Lcom/facebook/acra/util/UrlEncodingWriter;-><init>(Ljava/io/Writer;)V

    .line 109
    iget-object v1, p0, Lcom/facebook/acra/util/HttpUtils$1;->val$parameters:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 110
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    .line 111
    if-nez v1, :cond_0

    .line 112
    const/16 v1, 0x26

    invoke-virtual {v2, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 114
    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 115
    if-nez v0, :cond_1

    .line 116
    const-string v0, ""

    .line 118
    :cond_1
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/facebook/acra/util/UrlEncodingWriter;->write(Ljava/lang/String;)V

    .line 119
    const/16 v1, 0x3d

    invoke-virtual {v2, v1}, Ljava/io/Writer;->write(I)V

    .line 120
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/acra/util/UrlEncodingWriter;->write(Ljava/lang/String;)V

    .line 121
    const/4 v0, 0x0

    move v1, v0

    .line 122
    goto :goto_0

    .line 123
    :cond_2
    invoke-virtual {v2}, Ljava/io/Writer;->flush()V

    .line 124
    return-void
.end method
