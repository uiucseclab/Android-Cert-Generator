.class public interface abstract Lcom/samsung/milk/milkvideo/api/OoyalaRestService;
.super Ljava/lang/Object;
.source "OoyalaRestService.java"


# static fields
.field public static final API_ENDPOINT:Ljava/lang/String; = "https://api.ooyala.com"


# virtual methods
.method public abstract getStreams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lretrofit/Callback;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "embedCode"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "expires"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "signature"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "api_key"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lretrofit/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/milk/milkvideo/models/OoyalaStream;",
            ">;>;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/v2/assets/{embedCode}/streams"
    .end annotation
.end method
