.class public abstract Lcom/squareup/okhttp/internal/Internal;
.super Ljava/lang/Object;
.source "Internal.java"


# static fields
.field public static instance:Lcom/squareup/okhttp/internal/Internal;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addLine(Lcom/squareup/okhttp/Headers$Builder;Ljava/lang/String;)V
.end method

.method public abstract clearOwner(Lcom/squareup/okhttp/Connection;)Z
.end method

.method public abstract closeIfOwnedBy(Lcom/squareup/okhttp/Connection;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract connect(Lcom/squareup/okhttp/Connection;IIILcom/squareup/okhttp/Request;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getOwner(Lcom/squareup/okhttp/Connection;)Ljava/lang/Object;
.end method

.method public abstract internalCache(Lcom/squareup/okhttp/OkHttpClient;)Lcom/squareup/okhttp/internal/InternalCache;
.end method

.method public abstract isConnected(Lcom/squareup/okhttp/Connection;)Z
.end method

.method public abstract isReadable(Lcom/squareup/okhttp/Connection;)Z
.end method

.method public abstract isSpdy(Lcom/squareup/okhttp/Connection;)Z
.end method

.method public abstract newTransport(Lcom/squareup/okhttp/Connection;Lcom/squareup/okhttp/internal/http/HttpEngine;)Lcom/squareup/okhttp/internal/http/Transport;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract recycle(Lcom/squareup/okhttp/ConnectionPool;Lcom/squareup/okhttp/Connection;)V
.end method

.method public abstract recycleCount(Lcom/squareup/okhttp/Connection;)I
.end method

.method public abstract routeDatabase(Lcom/squareup/okhttp/OkHttpClient;)Lcom/squareup/okhttp/internal/RouteDatabase;
.end method

.method public abstract setCache(Lcom/squareup/okhttp/OkHttpClient;Lcom/squareup/okhttp/internal/InternalCache;)V
.end method

.method public abstract setOwner(Lcom/squareup/okhttp/Connection;Lcom/squareup/okhttp/internal/http/HttpEngine;)V
.end method

.method public abstract setProtocol(Lcom/squareup/okhttp/Connection;Lcom/squareup/okhttp/Protocol;)V
.end method

.method public abstract setTimeouts(Lcom/squareup/okhttp/Connection;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract share(Lcom/squareup/okhttp/ConnectionPool;Lcom/squareup/okhttp/Connection;)V
.end method
