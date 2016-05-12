.class final Lcom/squareup/okhttp/internal/huc/JavaApiConverter$CacheHttpsURLConnection;
.super Lcom/squareup/okhttp/internal/huc/DelegatingHttpsURLConnection;
.source "JavaApiConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/huc/JavaApiConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CacheHttpsURLConnection"
.end annotation


# instance fields
.field private final delegate:Lcom/squareup/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;


# direct methods
.method public constructor <init>(Lcom/squareup/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;)V
    .locals 0
    .param p1, "delegate"    # Lcom/squareup/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;

    .prologue
    .line 629
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/huc/DelegatingHttpsURLConnection;-><init>(Ljava/net/HttpURLConnection;)V

    .line 630
    iput-object p1, p0, Lcom/squareup/okhttp/internal/huc/JavaApiConverter$CacheHttpsURLConnection;->delegate:Lcom/squareup/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;

    .line 631
    return-void
.end method


# virtual methods
.method public getContentLengthLong()J
    .locals 2

    .prologue
    .line 654
    iget-object v0, p0, Lcom/squareup/okhttp/internal/huc/JavaApiConverter$CacheHttpsURLConnection;->delegate:Lcom/squareup/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;->getContentLengthLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public getHeaderFieldLong(Ljava/lang/String;J)J
    .locals 2
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .prologue
    .line 662
    iget-object v0, p0, Lcom/squareup/okhttp/internal/huc/JavaApiConverter$CacheHttpsURLConnection;->delegate:Lcom/squareup/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;

    invoke-virtual {v0, p1, p2, p3}, Lcom/squareup/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;->getHeaderFieldLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    .prologue
    .line 642
    # invokes: Lcom/squareup/okhttp/internal/huc/JavaApiConverter;->throwRequestSslAccessException()Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/squareup/okhttp/internal/huc/JavaApiConverter;->access$400()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .prologue
    .line 650
    # invokes: Lcom/squareup/okhttp/internal/huc/JavaApiConverter;->throwRequestSslAccessException()Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/squareup/okhttp/internal/huc/JavaApiConverter;->access$400()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method protected handshake()Lcom/squareup/okhttp/Handshake;
    .locals 1

    .prologue
    .line 634
    iget-object v0, p0, Lcom/squareup/okhttp/internal/huc/JavaApiConverter$CacheHttpsURLConnection;->delegate:Lcom/squareup/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;

    # getter for: Lcom/squareup/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;->response:Lcom/squareup/okhttp/Response;
    invoke-static {v0}, Lcom/squareup/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;->access$300(Lcom/squareup/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;)Lcom/squareup/okhttp/Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/Response;->handshake()Lcom/squareup/okhttp/Handshake;

    move-result-object v0

    return-object v0
.end method

.method public setFixedLengthStreamingMode(J)V
    .locals 1
    .param p1, "contentLength"    # J

    .prologue
    .line 658
    iget-object v0, p0, Lcom/squareup/okhttp/internal/huc/JavaApiConverter$CacheHttpsURLConnection;->delegate:Lcom/squareup/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;

    invoke-virtual {v0, p1, p2}, Lcom/squareup/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;->setFixedLengthStreamingMode(J)V

    .line 659
    return-void
.end method

.method public setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    .locals 1
    .param p1, "hostnameVerifier"    # Ljavax/net/ssl/HostnameVerifier;

    .prologue
    .line 638
    # invokes: Lcom/squareup/okhttp/internal/huc/JavaApiConverter;->throwRequestModificationException()Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/squareup/okhttp/internal/huc/JavaApiConverter;->access$000()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 1
    .param p1, "socketFactory"    # Ljavax/net/ssl/SSLSocketFactory;

    .prologue
    .line 646
    # invokes: Lcom/squareup/okhttp/internal/huc/JavaApiConverter;->throwRequestModificationException()Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/squareup/okhttp/internal/huc/JavaApiConverter;->access$000()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method
