.class public Lcom/facebook/ssl/verification/FbHostnameVerifierAdaptor;
.super Ljava/lang/Object;
.source "set surface "

# interfaces
.implements Lorg/apache/http/conn/ssl/X509HostnameVerifier;


# instance fields
.field private final a:Lcom/facebook/ssl/BadVerifyInvocationNotifierImpl;

.field private final b:Lcom/facebook/ssl/verification/FbHostnameVerifier;


# direct methods
.method public constructor <init>(Lcom/facebook/ssl/BadVerifyInvocationNotifierImpl;)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/facebook/ssl/verification/FbHostnameVerifierAdaptor;->a:Lcom/facebook/ssl/BadVerifyInvocationNotifierImpl;

    .line 25
    new-instance v0, Lcom/facebook/ssl/verification/FbHostnameVerifier;

    invoke-direct {v0}, Lcom/facebook/ssl/verification/FbHostnameVerifier;-><init>()V

    iput-object v0, p0, Lcom/facebook/ssl/verification/FbHostnameVerifierAdaptor;->b:Lcom/facebook/ssl/verification/FbHostnameVerifier;

    .line 26
    return-void
.end method


# virtual methods
.method public verify(Ljava/lang/String;Ljava/security/cert/X509Certificate;)V
    .locals 3

    .prologue
    .line 41
    iget-object v0, p0, Lcom/facebook/ssl/verification/FbHostnameVerifierAdaptor;->b:Lcom/facebook/ssl/verification/FbHostnameVerifier;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ssl/verification/FbHostnameVerifier;->a(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Lcom/facebook/ssl/verification/FbHostnameVerifierResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ssl/verification/FbHostnameVerifierResult;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Ljavax/net/ssl/SSLException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to verify certificate for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_0
    return-void
.end method

.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSocket;)V
    .locals 3

    .prologue
    .line 35
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/ssl/verification/FbHostnameVerifierAdaptor;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Ljavax/net/ssl/SSLException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to verify socket for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_0
    return-void
.end method

.method public verify(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lcom/facebook/ssl/verification/FbHostnameVerifierAdaptor;->a:Lcom/facebook/ssl/BadVerifyInvocationNotifierImpl;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/facebook/ssl/verification/FbHostnameVerifierAdaptor;->a:Lcom/facebook/ssl/BadVerifyInvocationNotifierImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ssl/BadVerifyInvocationNotifierImpl;->a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 65
    :cond_0
    array-length v0, p2

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 66
    new-instance v0, Ljavax/net/ssl/SSLException;

    const-string v1, "Certificate has multiple common names"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_1
    array-length v0, p2

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 71
    :goto_0
    iget-object v1, p0, Lcom/facebook/ssl/verification/FbHostnameVerifierAdaptor;->b:Lcom/facebook/ssl/verification/FbHostnameVerifier;

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/facebook/ssl/verification/FbHostnameVerifier;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/facebook/ssl/verification/FbHostnameVerifierResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ssl/verification/FbHostnameVerifierResult;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 72
    new-instance v0, Ljavax/net/ssl/SSLException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to verify cns and subjectAlts for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_2
    const/4 v0, 0x0

    aget-object v0, p2, v0

    goto :goto_0

    .line 73
    :cond_3
    return-void
.end method

.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/facebook/ssl/verification/FbHostnameVerifierAdaptor;->b:Lcom/facebook/ssl/verification/FbHostnameVerifier;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ssl/verification/FbHostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v0

    return v0
.end method
