.class final Lretrofit/RequestBuilder;
.super Ljava/lang/Object;
.source "RequestBuilder.java"

# interfaces
.implements Lretrofit/RequestInterceptor$RequestFacade;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lretrofit/RequestBuilder$1;,
        Lretrofit/RequestBuilder$MimeOverridingTypedOutput;
    }
.end annotation


# instance fields
.field private final apiUrl:Ljava/lang/String;

.field private body:Lretrofit/mime/TypedOutput;

.field private contentTypeHeader:Ljava/lang/String;

.field private final converter:Lretrofit/converter/Converter;

.field private final formBody:Lretrofit/mime/FormUrlEncodedTypedOutput;

.field private headers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lretrofit/client/Header;",
            ">;"
        }
    .end annotation
.end field

.field private final isObservable:Z

.field private final isSynchronous:Z

.field private final multipartBody:Lretrofit/mime/MultipartTypedOutput;

.field private final paramNames:[Ljava/lang/String;

.field private final paramUsages:[Lretrofit/RestMethodInfo$ParamUsage;

.field private queryParams:Ljava/lang/StringBuilder;

.field private relativeUrl:Ljava/lang/String;

.field private final requestMethod:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lretrofit/RestMethodInfo;Lretrofit/converter/Converter;)V
    .locals 4
    .param p1, "apiUrl"    # Ljava/lang/String;
    .param p2, "methodInfo"    # Lretrofit/RestMethodInfo;
    .param p3, "converter"    # Lretrofit/converter/Converter;

    .prologue
    const/4 v3, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lretrofit/RequestBuilder;->apiUrl:Ljava/lang/String;

    .line 57
    iput-object p3, p0, Lretrofit/RequestBuilder;->converter:Lretrofit/converter/Converter;

    .line 59
    iget-object v1, p2, Lretrofit/RestMethodInfo;->requestParamNames:[Ljava/lang/String;

    iput-object v1, p0, Lretrofit/RequestBuilder;->paramNames:[Ljava/lang/String;

    .line 60
    iget-object v1, p2, Lretrofit/RestMethodInfo;->requestParamUsage:[Lretrofit/RestMethodInfo$ParamUsage;

    iput-object v1, p0, Lretrofit/RequestBuilder;->paramUsages:[Lretrofit/RestMethodInfo$ParamUsage;

    .line 61
    iget-object v1, p2, Lretrofit/RestMethodInfo;->requestMethod:Ljava/lang/String;

    iput-object v1, p0, Lretrofit/RequestBuilder;->requestMethod:Ljava/lang/String;

    .line 62
    iget-boolean v1, p2, Lretrofit/RestMethodInfo;->isSynchronous:Z

    iput-boolean v1, p0, Lretrofit/RequestBuilder;->isSynchronous:Z

    .line 63
    iget-boolean v1, p2, Lretrofit/RestMethodInfo;->isObservable:Z

    iput-boolean v1, p0, Lretrofit/RequestBuilder;->isObservable:Z

    .line 65
    iget-object v1, p2, Lretrofit/RestMethodInfo;->headers:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 66
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p2, Lretrofit/RestMethodInfo;->headers:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lretrofit/RequestBuilder;->headers:Ljava/util/List;

    .line 68
    :cond_0
    iget-object v1, p2, Lretrofit/RestMethodInfo;->contentTypeHeader:Ljava/lang/String;

    iput-object v1, p0, Lretrofit/RequestBuilder;->contentTypeHeader:Ljava/lang/String;

    .line 70
    iget-object v1, p2, Lretrofit/RestMethodInfo;->requestUrl:Ljava/lang/String;

    iput-object v1, p0, Lretrofit/RequestBuilder;->relativeUrl:Ljava/lang/String;

    .line 72
    iget-object v0, p2, Lretrofit/RestMethodInfo;->requestQuery:Ljava/lang/String;

    .line 73
    .local v0, "requestQuery":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x3f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iput-object v1, p0, Lretrofit/RequestBuilder;->queryParams:Ljava/lang/StringBuilder;

    .line 77
    :cond_1
    sget-object v1, Lretrofit/RequestBuilder$1;->$SwitchMap$retrofit$RestMethodInfo$RequestType:[I

    iget-object v2, p2, Lretrofit/RestMethodInfo;->requestType:Lretrofit/RestMethodInfo$RequestType;

    invoke-virtual {v2}, Lretrofit/RestMethodInfo$RequestType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 94
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown request type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lretrofit/RestMethodInfo;->requestType:Lretrofit/RestMethodInfo$RequestType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 79
    :pswitch_0
    new-instance v1, Lretrofit/mime/FormUrlEncodedTypedOutput;

    invoke-direct {v1}, Lretrofit/mime/FormUrlEncodedTypedOutput;-><init>()V

    iput-object v1, p0, Lretrofit/RequestBuilder;->formBody:Lretrofit/mime/FormUrlEncodedTypedOutput;

    .line 80
    iput-object v3, p0, Lretrofit/RequestBuilder;->multipartBody:Lretrofit/mime/MultipartTypedOutput;

    .line 81
    iget-object v1, p0, Lretrofit/RequestBuilder;->formBody:Lretrofit/mime/FormUrlEncodedTypedOutput;

    iput-object v1, p0, Lretrofit/RequestBuilder;->body:Lretrofit/mime/TypedOutput;

    .line 96
    :goto_0
    return-void

    .line 84
    :pswitch_1
    iput-object v3, p0, Lretrofit/RequestBuilder;->formBody:Lretrofit/mime/FormUrlEncodedTypedOutput;

    .line 85
    new-instance v1, Lretrofit/mime/MultipartTypedOutput;

    invoke-direct {v1}, Lretrofit/mime/MultipartTypedOutput;-><init>()V

    iput-object v1, p0, Lretrofit/RequestBuilder;->multipartBody:Lretrofit/mime/MultipartTypedOutput;

    .line 86
    iget-object v1, p0, Lretrofit/RequestBuilder;->multipartBody:Lretrofit/mime/MultipartTypedOutput;

    iput-object v1, p0, Lretrofit/RequestBuilder;->body:Lretrofit/mime/TypedOutput;

    goto :goto_0

    .line 89
    :pswitch_2
    iput-object v3, p0, Lretrofit/RequestBuilder;->formBody:Lretrofit/mime/FormUrlEncodedTypedOutput;

    .line 90
    iput-object v3, p0, Lretrofit/RequestBuilder;->multipartBody:Lretrofit/mime/MultipartTypedOutput;

    goto :goto_0

    .line 77
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private addPathParam(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "urlEncodeValue"    # Z

    .prologue
    .line 123
    if-nez p1, :cond_0

    .line 124
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Path replacement name must not be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 126
    :cond_0
    if-nez p2, :cond_1

    .line 127
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Path replacement \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" value must not be null."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 131
    :cond_1
    if-eqz p3, :cond_2

    .line 132
    :try_start_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 136
    .local v1, "encodedValue":Ljava/lang/String;
    const-string v2, "+"

    const-string v3, "%20"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 137
    iget-object v2, p0, Lretrofit/RequestBuilder;->relativeUrl:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "{"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lretrofit/RequestBuilder;->relativeUrl:Ljava/lang/String;

    .line 145
    .end local v1    # "encodedValue":Ljava/lang/String;
    :goto_0
    return-void

    .line 139
    :cond_2
    iget-object v2, p0, Lretrofit/RequestBuilder;->relativeUrl:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "{"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lretrofit/RequestBuilder;->relativeUrl:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to convert path parameter \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" value to UTF-8:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private addQueryParam(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "urlEncodeValue"    # Z

    .prologue
    .line 156
    if-nez p1, :cond_0

    .line 157
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Query param name must not be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 159
    :cond_0
    if-nez p2, :cond_1

    .line 160
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Query param \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" value must not be null."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 163
    :cond_1
    if-eqz p3, :cond_2

    .line 164
    :try_start_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 166
    :cond_2
    iget-object v1, p0, Lretrofit/RequestBuilder;->queryParams:Ljava/lang/StringBuilder;

    .line 167
    .local v1, "queryParams":Ljava/lang/StringBuilder;
    if-nez v1, :cond_3

    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1    # "queryParams":Ljava/lang/StringBuilder;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .restart local v1    # "queryParams":Ljava/lang/StringBuilder;
    iput-object v1, p0, Lretrofit/RequestBuilder;->queryParams:Ljava/lang/StringBuilder;

    .line 171
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_4

    const/16 v2, 0x26

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    return-void

    .line 171
    :cond_4
    const/16 v2, 0x3f

    goto :goto_0

    .line 173
    .end local v1    # "queryParams":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 174
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to convert query parameter \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" value to UTF-8: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public addEncodedPathParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 119
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lretrofit/RequestBuilder;->addPathParam(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 120
    return-void
.end method

.method public addEncodedQueryParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 152
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lretrofit/RequestBuilder;->addQueryParam(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 153
    return-void
.end method

.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 99
    if-nez p1, :cond_0

    .line 100
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Header name must not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 102
    :cond_0
    const-string v1, "Content-Type"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 103
    iput-object p2, p0, Lretrofit/RequestBuilder;->contentTypeHeader:Ljava/lang/String;

    .line 112
    :goto_0
    return-void

    .line 107
    :cond_1
    iget-object v0, p0, Lretrofit/RequestBuilder;->headers:Ljava/util/List;

    .line 108
    .local v0, "headers":Ljava/util/List;, "Ljava/util/List<Lretrofit/client/Header;>;"
    if-nez v0, :cond_2

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "headers":Ljava/util/List;, "Ljava/util/List<Lretrofit/client/Header;>;"
    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .restart local v0    # "headers":Ljava/util/List;, "Ljava/util/List<Lretrofit/client/Header;>;"
    iput-object v0, p0, Lretrofit/RequestBuilder;->headers:Ljava/util/List;

    .line 111
    :cond_2
    new-instance v1, Lretrofit/client/Header;

    invoke-direct {v1, p1, p2}, Lretrofit/client/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addPathParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 115
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lretrofit/RequestBuilder;->addPathParam(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 116
    return-void
.end method

.method public addQueryParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 148
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lretrofit/RequestBuilder;->addQueryParam(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 149
    return-void
.end method

.method build()Lretrofit/client/Request;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 320
    iget-object v6, p0, Lretrofit/RequestBuilder;->multipartBody:Lretrofit/mime/MultipartTypedOutput;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lretrofit/RequestBuilder;->multipartBody:Lretrofit/mime/MultipartTypedOutput;

    invoke-virtual {v6}, Lretrofit/mime/MultipartTypedOutput;->getPartCount()I

    move-result v6

    if-nez v6, :cond_0

    .line 321
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Multipart requests must contain at least one part."

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 324
    :cond_0
    iget-object v0, p0, Lretrofit/RequestBuilder;->apiUrl:Ljava/lang/String;

    .line 325
    .local v0, "apiUrl":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 326
    .local v5, "url":Ljava/lang/StringBuilder;
    const-string v6, "/"

    invoke-virtual {v0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 328
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 331
    :cond_1
    iget-object v6, p0, Lretrofit/RequestBuilder;->relativeUrl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    iget-object v4, p0, Lretrofit/RequestBuilder;->queryParams:Ljava/lang/StringBuilder;

    .line 334
    .local v4, "queryParams":Ljava/lang/StringBuilder;
    if-eqz v4, :cond_2

    .line 335
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 338
    :cond_2
    iget-object v1, p0, Lretrofit/RequestBuilder;->body:Lretrofit/mime/TypedOutput;

    .line 339
    .local v1, "body":Lretrofit/mime/TypedOutput;
    iget-object v3, p0, Lretrofit/RequestBuilder;->headers:Ljava/util/List;

    .line 340
    .local v3, "headers":Ljava/util/List;, "Ljava/util/List<Lretrofit/client/Header;>;"
    iget-object v6, p0, Lretrofit/RequestBuilder;->contentTypeHeader:Ljava/lang/String;

    if-eqz v6, :cond_3

    .line 341
    if-eqz v1, :cond_4

    .line 342
    new-instance v2, Lretrofit/RequestBuilder$MimeOverridingTypedOutput;

    iget-object v6, p0, Lretrofit/RequestBuilder;->contentTypeHeader:Ljava/lang/String;

    invoke-direct {v2, v1, v6}, Lretrofit/RequestBuilder$MimeOverridingTypedOutput;-><init>(Lretrofit/mime/TypedOutput;Ljava/lang/String;)V

    .end local v1    # "body":Lretrofit/mime/TypedOutput;
    .local v2, "body":Lretrofit/mime/TypedOutput;
    move-object v1, v2

    .line 348
    .end local v2    # "body":Lretrofit/mime/TypedOutput;
    .restart local v1    # "body":Lretrofit/mime/TypedOutput;
    :cond_3
    :goto_0
    new-instance v6, Lretrofit/client/Request;

    iget-object v7, p0, Lretrofit/RequestBuilder;->requestMethod:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8, v3, v1}, Lretrofit/client/Request;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lretrofit/mime/TypedOutput;)V

    return-object v6

    .line 344
    :cond_4
    new-instance v6, Lretrofit/client/Header;

    const-string v7, "Content-Type"

    iget-object v8, p0, Lretrofit/RequestBuilder;->contentTypeHeader:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Lretrofit/client/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method setArguments([Ljava/lang/Object;)V
    .locals 20
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 180
    if-nez p1, :cond_1

    .line 317
    :cond_0
    return-void

    .line 183
    :cond_1
    move-object/from16 v0, p1

    array-length v5, v0

    .line 184
    .local v5, "count":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lretrofit/RequestBuilder;->isSynchronous:Z

    move/from16 v16, v0

    if-nez v16, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lretrofit/RequestBuilder;->isObservable:Z

    move/from16 v16, v0

    if-nez v16, :cond_2

    .line 185
    add-int/lit8 v5, v5, -0x1

    .line 187
    :cond_2
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v5, :cond_0

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lretrofit/RequestBuilder;->paramNames:[Ljava/lang/String;

    move-object/from16 v16, v0

    aget-object v11, v16, v9

    .line 189
    .local v11, "name":Ljava/lang/String;
    aget-object v14, p1, v9

    .line 190
    .local v14, "value":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v0, v0, Lretrofit/RequestBuilder;->paramUsages:[Lretrofit/RestMethodInfo$ParamUsage;

    move-object/from16 v16, v0

    aget-object v12, v16, v9

    .line 191
    .local v12, "paramUsage":Lretrofit/RestMethodInfo$ParamUsage;
    sget-object v16, Lretrofit/RequestBuilder$1;->$SwitchMap$retrofit$RestMethodInfo$ParamUsage:[I

    invoke-virtual {v12}, Lretrofit/RestMethodInfo$ParamUsage;->ordinal()I

    move-result v17

    aget v16, v16, v17

    packed-switch v16, :pswitch_data_0

    .line 314
    new-instance v16, Ljava/lang/IllegalArgumentException;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Unknown parameter usage: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 193
    :pswitch_0
    if-nez v14, :cond_3

    .line 194
    new-instance v16, Ljava/lang/IllegalArgumentException;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Path parameter \""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\" value must not be null."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 197
    :cond_3
    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v11, v1}, Lretrofit/RequestBuilder;->addPathParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    .end local v14    # "value":Ljava/lang/Object;
    :cond_4
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 200
    .restart local v14    # "value":Ljava/lang/Object;
    :pswitch_1
    if-nez v14, :cond_5

    .line 201
    new-instance v16, Ljava/lang/IllegalArgumentException;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Path parameter \""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\" value must not be null."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 204
    :cond_5
    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v11, v1}, Lretrofit/RequestBuilder;->addEncodedPathParam(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 208
    :pswitch_2
    if-eqz v14, :cond_4

    .line 209
    sget-object v16, Lretrofit/RestMethodInfo$ParamUsage;->QUERY:Lretrofit/RestMethodInfo$ParamUsage;

    move-object/from16 v0, v16

    if-ne v12, v0, :cond_7

    const/4 v13, 0x1

    .line 210
    .local v13, "urlEncodeValue":Z
    :goto_2
    instance-of v0, v14, Ljava/lang/Iterable;

    move/from16 v16, v0

    if-eqz v16, :cond_8

    .line 211
    check-cast v14, Ljava/lang/Iterable;

    .end local v14    # "value":Ljava/lang/Object;
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_6
    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_4

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 212
    .local v10, "iterableValue":Ljava/lang/Object;
    if-eqz v10, :cond_6

    .line 213
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v11, v1, v13}, Lretrofit/RequestBuilder;->addQueryParam(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_3

    .line 209
    .end local v10    # "iterableValue":Ljava/lang/Object;
    .end local v13    # "urlEncodeValue":Z
    .restart local v14    # "value":Ljava/lang/Object;
    :cond_7
    const/4 v13, 0x0

    goto :goto_2

    .line 216
    .restart local v13    # "urlEncodeValue":Z
    :cond_8
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->isArray()Z

    move-result v16

    if-eqz v16, :cond_a

    .line 217
    const/4 v15, 0x0

    .local v15, "x":I
    invoke-static {v14}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v3

    .local v3, "arrayLength":I
    :goto_4
    if-ge v15, v3, :cond_4

    .line 218
    invoke-static {v14, v15}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    .line 219
    .local v4, "arrayValue":Ljava/lang/Object;
    if-eqz v4, :cond_9

    .line 220
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v11, v1, v13}, Lretrofit/RequestBuilder;->addQueryParam(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 217
    :cond_9
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 224
    .end local v3    # "arrayLength":I
    .end local v4    # "arrayValue":Ljava/lang/Object;
    .end local v15    # "x":I
    :cond_a
    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v11, v1, v13}, Lretrofit/RequestBuilder;->addQueryParam(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 230
    .end local v13    # "urlEncodeValue":Z
    :pswitch_3
    if-eqz v14, :cond_4

    .line 231
    sget-object v16, Lretrofit/RestMethodInfo$ParamUsage;->QUERY_MAP:Lretrofit/RestMethodInfo$ParamUsage;

    move-object/from16 v0, v16

    if-ne v12, v0, :cond_c

    const/4 v13, 0x1

    .line 232
    .restart local v13    # "urlEncodeValue":Z
    :goto_5
    check-cast v14, Ljava/util/Map;

    .end local v14    # "value":Ljava/lang/Object;
    invoke-interface {v14}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_b
    :goto_6
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_4

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 233
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    .line 234
    .local v8, "entryValue":Ljava/lang/Object;
    if-eqz v8, :cond_b

    .line 235
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2, v13}, Lretrofit/RequestBuilder;->addQueryParam(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_6

    .line 231
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v8    # "entryValue":Ljava/lang/Object;
    .end local v13    # "urlEncodeValue":Z
    .restart local v14    # "value":Ljava/lang/Object;
    :cond_c
    const/4 v13, 0x0

    goto :goto_5

    .line 241
    :pswitch_4
    if-eqz v14, :cond_4

    .line 242
    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v11, v1}, Lretrofit/RequestBuilder;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 246
    :pswitch_5
    if-eqz v14, :cond_4

    .line 247
    instance-of v0, v14, Ljava/lang/Iterable;

    move/from16 v16, v0

    if-eqz v16, :cond_e

    .line 248
    check-cast v14, Ljava/lang/Iterable;

    .end local v14    # "value":Ljava/lang/Object;
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_d
    :goto_7
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_4

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 249
    .restart local v10    # "iterableValue":Ljava/lang/Object;
    if-eqz v10, :cond_d

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lretrofit/RequestBuilder;->formBody:Lretrofit/mime/FormUrlEncodedTypedOutput;

    move-object/from16 v17, v0

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v11, v1}, Lretrofit/mime/FormUrlEncodedTypedOutput;->addField(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 253
    .end local v10    # "iterableValue":Ljava/lang/Object;
    .restart local v14    # "value":Ljava/lang/Object;
    :cond_e
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->isArray()Z

    move-result v16

    if-eqz v16, :cond_10

    .line 254
    const/4 v15, 0x0

    .restart local v15    # "x":I
    invoke-static {v14}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v3

    .restart local v3    # "arrayLength":I
    :goto_8
    if-ge v15, v3, :cond_4

    .line 255
    invoke-static {v14, v15}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    .line 256
    .restart local v4    # "arrayValue":Ljava/lang/Object;
    if-eqz v4, :cond_f

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lretrofit/RequestBuilder;->formBody:Lretrofit/mime/FormUrlEncodedTypedOutput;

    move-object/from16 v16, v0

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v11, v1}, Lretrofit/mime/FormUrlEncodedTypedOutput;->addField(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    :cond_f
    add-int/lit8 v15, v15, 0x1

    goto :goto_8

    .line 261
    .end local v3    # "arrayLength":I
    .end local v4    # "arrayValue":Ljava/lang/Object;
    .end local v15    # "x":I
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lretrofit/RequestBuilder;->formBody:Lretrofit/mime/FormUrlEncodedTypedOutput;

    move-object/from16 v16, v0

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v11, v1}, Lretrofit/mime/FormUrlEncodedTypedOutput;->addField(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 266
    :pswitch_6
    if-eqz v14, :cond_4

    .line 267
    check-cast v14, Ljava/util/Map;

    .end local v14    # "value":Ljava/lang/Object;
    invoke-interface {v14}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_11
    :goto_9
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_4

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 268
    .restart local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    .line 269
    .restart local v8    # "entryValue":Ljava/lang/Object;
    if-eqz v8, :cond_11

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lretrofit/RequestBuilder;->formBody:Lretrofit/mime/FormUrlEncodedTypedOutput;

    move-object/from16 v17, v0

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Lretrofit/mime/FormUrlEncodedTypedOutput;->addField(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 276
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v8    # "entryValue":Ljava/lang/Object;
    .restart local v14    # "value":Ljava/lang/Object;
    :pswitch_7
    if-eqz v14, :cond_4

    .line 277
    instance-of v0, v14, Lretrofit/mime/TypedOutput;

    move/from16 v16, v0

    if-eqz v16, :cond_12

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lretrofit/RequestBuilder;->multipartBody:Lretrofit/mime/MultipartTypedOutput;

    move-object/from16 v16, v0

    check-cast v14, Lretrofit/mime/TypedOutput;

    .end local v14    # "value":Ljava/lang/Object;
    move-object/from16 v0, v16

    invoke-virtual {v0, v11, v14}, Lretrofit/mime/MultipartTypedOutput;->addPart(Ljava/lang/String;Lretrofit/mime/TypedOutput;)V

    goto/16 :goto_1

    .line 279
    .restart local v14    # "value":Ljava/lang/Object;
    :cond_12
    instance-of v0, v14, Ljava/lang/String;

    move/from16 v16, v0

    if-eqz v16, :cond_13

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Lretrofit/RequestBuilder;->multipartBody:Lretrofit/mime/MultipartTypedOutput;

    move-object/from16 v16, v0

    new-instance v17, Lretrofit/mime/TypedString;

    check-cast v14, Ljava/lang/String;

    .end local v14    # "value":Ljava/lang/Object;
    move-object/from16 v0, v17

    invoke-direct {v0, v14}, Lretrofit/mime/TypedString;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v11, v1}, Lretrofit/mime/MultipartTypedOutput;->addPart(Ljava/lang/String;Lretrofit/mime/TypedOutput;)V

    goto/16 :goto_1

    .line 282
    .restart local v14    # "value":Ljava/lang/Object;
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lretrofit/RequestBuilder;->multipartBody:Lretrofit/mime/MultipartTypedOutput;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lretrofit/RequestBuilder;->converter:Lretrofit/converter/Converter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v14}, Lretrofit/converter/Converter;->toBody(Ljava/lang/Object;)Lretrofit/mime/TypedOutput;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v11, v1}, Lretrofit/mime/MultipartTypedOutput;->addPart(Ljava/lang/String;Lretrofit/mime/TypedOutput;)V

    goto/16 :goto_1

    .line 287
    :pswitch_8
    if-eqz v14, :cond_4

    .line 288
    check-cast v14, Ljava/util/Map;

    .end local v14    # "value":Ljava/lang/Object;
    invoke-interface {v14}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_14
    :goto_a
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_4

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 289
    .restart local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 290
    .local v7, "entryName":Ljava/lang/String;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    .line 291
    .restart local v8    # "entryValue":Ljava/lang/Object;
    if-eqz v8, :cond_14

    .line 292
    instance-of v0, v8, Lretrofit/mime/TypedOutput;

    move/from16 v17, v0

    if-eqz v17, :cond_15

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lretrofit/RequestBuilder;->multipartBody:Lretrofit/mime/MultipartTypedOutput;

    move-object/from16 v17, v0

    check-cast v8, Lretrofit/mime/TypedOutput;

    .end local v8    # "entryValue":Ljava/lang/Object;
    move-object/from16 v0, v17

    invoke-virtual {v0, v7, v8}, Lretrofit/mime/MultipartTypedOutput;->addPart(Ljava/lang/String;Lretrofit/mime/TypedOutput;)V

    goto :goto_a

    .line 294
    .restart local v8    # "entryValue":Ljava/lang/Object;
    :cond_15
    instance-of v0, v8, Ljava/lang/String;

    move/from16 v17, v0

    if-eqz v17, :cond_16

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lretrofit/RequestBuilder;->multipartBody:Lretrofit/mime/MultipartTypedOutput;

    move-object/from16 v17, v0

    new-instance v18, Lretrofit/mime/TypedString;

    check-cast v8, Ljava/lang/String;

    .end local v8    # "entryValue":Ljava/lang/Object;
    move-object/from16 v0, v18

    invoke-direct {v0, v8}, Lretrofit/mime/TypedString;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v7, v1}, Lretrofit/mime/MultipartTypedOutput;->addPart(Ljava/lang/String;Lretrofit/mime/TypedOutput;)V

    goto :goto_a

    .line 297
    .restart local v8    # "entryValue":Ljava/lang/Object;
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lretrofit/RequestBuilder;->multipartBody:Lretrofit/mime/MultipartTypedOutput;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lretrofit/RequestBuilder;->converter:Lretrofit/converter/Converter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v8}, Lretrofit/converter/Converter;->toBody(Ljava/lang/Object;)Lretrofit/mime/TypedOutput;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v7, v1}, Lretrofit/mime/MultipartTypedOutput;->addPart(Ljava/lang/String;Lretrofit/mime/TypedOutput;)V

    goto :goto_a

    .line 304
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v7    # "entryName":Ljava/lang/String;
    .end local v8    # "entryValue":Ljava/lang/Object;
    .restart local v14    # "value":Ljava/lang/Object;
    :pswitch_9
    if-nez v14, :cond_17

    .line 305
    new-instance v16, Ljava/lang/IllegalArgumentException;

    const-string v17, "Body parameter value must not be null."

    invoke-direct/range {v16 .. v17}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 307
    :cond_17
    instance-of v0, v14, Lretrofit/mime/TypedOutput;

    move/from16 v16, v0

    if-eqz v16, :cond_18

    .line 308
    check-cast v14, Lretrofit/mime/TypedOutput;

    .end local v14    # "value":Ljava/lang/Object;
    move-object/from16 v0, p0

    iput-object v14, v0, Lretrofit/RequestBuilder;->body:Lretrofit/mime/TypedOutput;

    goto/16 :goto_1

    .line 310
    .restart local v14    # "value":Ljava/lang/Object;
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lretrofit/RequestBuilder;->converter:Lretrofit/converter/Converter;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v14}, Lretrofit/converter/Converter;->toBody(Ljava/lang/Object;)Lretrofit/mime/TypedOutput;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lretrofit/RequestBuilder;->body:Lretrofit/mime/TypedOutput;

    goto/16 :goto_1

    .line 191
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
