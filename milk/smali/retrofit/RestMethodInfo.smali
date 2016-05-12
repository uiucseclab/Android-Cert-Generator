.class final Lretrofit/RestMethodInfo;
.super Ljava/lang/Object;
.source "RestMethodInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lretrofit/RestMethodInfo$RxSupport;,
        Lretrofit/RestMethodInfo$RequestType;,
        Lretrofit/RestMethodInfo$ParamUsage;,
        Lretrofit/RestMethodInfo$ResponseType;
    }
.end annotation


# static fields
.field private static final PARAM:Ljava/lang/String; = "[a-zA-Z][a-zA-Z0-9_-]*"

.field private static final PARAM_NAME_REGEX:Ljava/util/regex/Pattern;

.field private static final PARAM_URL_REGEX:Ljava/util/regex/Pattern;


# instance fields
.field contentTypeHeader:Ljava/lang/String;

.field headers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lretrofit/client/Header;",
            ">;"
        }
    .end annotation
.end field

.field final isObservable:Z

.field isStreaming:Z

.field final isSynchronous:Z

.field loaded:Z

.field final method:Ljava/lang/reflect/Method;

.field requestHasBody:Z

.field requestMethod:Ljava/lang/String;

.field requestParamNames:[Ljava/lang/String;

.field requestParamUsage:[Lretrofit/RestMethodInfo$ParamUsage;

.field requestQuery:Ljava/lang/String;

.field requestType:Lretrofit/RestMethodInfo$RequestType;

.field requestUrl:Ljava/lang/String;

.field requestUrlParamNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field responseObjectType:Ljava/lang/reflect/Type;

.field final responseType:Lretrofit/RestMethodInfo$ResponseType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-string v0, "[a-zA-Z][a-zA-Z0-9_-]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lretrofit/RestMethodInfo;->PARAM_NAME_REGEX:Ljava/util/regex/Pattern;

    .line 62
    const-string v0, "\\{([a-zA-Z][a-zA-Z0-9_-]*)\\}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lretrofit/RestMethodInfo;->PARAM_URL_REGEX:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Ljava/lang/reflect/Method;)V
    .locals 4
    .param p1, "method"    # Ljava/lang/reflect/Method;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-boolean v2, p0, Lretrofit/RestMethodInfo;->loaded:Z

    .line 97
    sget-object v0, Lretrofit/RestMethodInfo$RequestType;->SIMPLE:Lretrofit/RestMethodInfo$RequestType;

    iput-object v0, p0, Lretrofit/RestMethodInfo;->requestType:Lretrofit/RestMethodInfo$RequestType;

    .line 112
    iput-object p1, p0, Lretrofit/RestMethodInfo;->method:Ljava/lang/reflect/Method;

    .line 113
    invoke-direct {p0}, Lretrofit/RestMethodInfo;->parseResponseType()Lretrofit/RestMethodInfo$ResponseType;

    move-result-object v0

    iput-object v0, p0, Lretrofit/RestMethodInfo;->responseType:Lretrofit/RestMethodInfo$ResponseType;

    .line 114
    iget-object v0, p0, Lretrofit/RestMethodInfo;->responseType:Lretrofit/RestMethodInfo$ResponseType;

    sget-object v3, Lretrofit/RestMethodInfo$ResponseType;->OBJECT:Lretrofit/RestMethodInfo$ResponseType;

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lretrofit/RestMethodInfo;->isSynchronous:Z

    .line 115
    iget-object v0, p0, Lretrofit/RestMethodInfo;->responseType:Lretrofit/RestMethodInfo$ResponseType;

    sget-object v3, Lretrofit/RestMethodInfo$ResponseType;->OBSERVABLE:Lretrofit/RestMethodInfo$ResponseType;

    if-ne v0, v3, :cond_1

    :goto_1
    iput-boolean v1, p0, Lretrofit/RestMethodInfo;->isObservable:Z

    .line 116
    return-void

    :cond_0
    move v0, v2

    .line 114
    goto :goto_0

    :cond_1
    move v1, v2

    .line 115
    goto :goto_1
.end method

.method private static getParameterUpperBound(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;
    .locals 5
    .param p0, "type"    # Ljava/lang/reflect/ParameterizedType;

    .prologue
    const/4 v4, 0x0

    .line 311
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v2

    .line 312
    .local v2, "types":[Ljava/lang/reflect/Type;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 313
    aget-object v1, v2, v0

    .line 314
    .local v1, "paramType":Ljava/lang/reflect/Type;
    instance-of v3, v1, Ljava/lang/reflect/WildcardType;

    if-eqz v3, :cond_0

    .line 315
    check-cast v1, Ljava/lang/reflect/WildcardType;

    .end local v1    # "paramType":Ljava/lang/reflect/Type;
    invoke-interface {v1}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v3

    aget-object v3, v3, v4

    aput-object v3, v2, v0

    .line 312
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 318
    :cond_1
    aget-object v3, v2, v4

    return-object v3
.end method

.method private varargs methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 119
    array-length v0, p2

    if-lez v0, :cond_0

    .line 120
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 122
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lretrofit/RestMethodInfo;->method:Ljava/lang/reflect/Method;

    .line 123
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lretrofit/RestMethodInfo;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private varargs parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;
    .locals 2
    .param p1, "index"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (parameter #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lretrofit/RestMethodInfo;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    return-object v0
.end method

.method private parseMethodAnnotations()V
    .locals 15

    .prologue
    .line 141
    iget-object v7, p0, Lretrofit/RestMethodInfo;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v9

    array-length v10, v9

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    if-ge v8, v10, :cond_c

    aget-object v4, v9, v8

    .line 142
    .local v4, "methodAnnotation":Ljava/lang/annotation/Annotation;
    invoke-interface {v4}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v0

    .line 143
    .local v0, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    const/4 v5, 0x0

    .line 146
    .local v5, "methodInfo":Lretrofit/http/RestMethod;
    invoke-virtual {v0}, Ljava/lang/Class;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v11

    array-length v12, v11

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v12, :cond_0

    aget-object v3, v11, v7

    .line 147
    .local v3, "innerAnnotation":Ljava/lang/annotation/Annotation;
    const-class v13, Lretrofit/http/RestMethod;

    invoke-interface {v3}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v14

    if-ne v13, v14, :cond_1

    move-object v5, v3

    .line 148
    check-cast v5, Lretrofit/http/RestMethod;

    .line 153
    .end local v3    # "innerAnnotation":Ljava/lang/annotation/Annotation;
    :cond_0
    if-eqz v5, :cond_4

    .line 154
    iget-object v7, p0, Lretrofit/RestMethodInfo;->requestMethod:Ljava/lang/String;

    if-eqz v7, :cond_2

    .line 155
    const-string v7, "Only one HTTP method is allowed. Found: %s and %s."

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lretrofit/RestMethodInfo;->requestMethod:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    .line 156
    invoke-interface {v5}, Lretrofit/http/RestMethod;->value()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 155
    invoke-direct {p0, v7, v8}, Lretrofit/RestMethodInfo;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v7

    throw v7

    .line 146
    .restart local v3    # "innerAnnotation":Ljava/lang/annotation/Annotation;
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 160
    .end local v3    # "innerAnnotation":Ljava/lang/annotation/Annotation;
    :cond_2
    :try_start_0
    const-string v7, "value"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Class;

    invoke-virtual {v0, v7, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-virtual {v7, v4, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    .local v6, "path":Ljava/lang/String;
    invoke-direct {p0, v6}, Lretrofit/RestMethodInfo;->parsePath(Ljava/lang/String;)V

    .line 166
    invoke-interface {v5}, Lretrofit/http/RestMethod;->value()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lretrofit/RestMethodInfo;->requestMethod:Ljava/lang/String;

    .line 167
    invoke-interface {v5}, Lretrofit/http/RestMethod;->hasBody()Z

    move-result v7

    iput-boolean v7, p0, Lretrofit/RestMethodInfo;->requestHasBody:Z

    .line 141
    .end local v4    # "methodAnnotation":Ljava/lang/annotation/Annotation;
    .end local v6    # "path":Ljava/lang/String;
    :cond_3
    :goto_2
    add-int/lit8 v7, v8, 0x1

    move v8, v7

    goto :goto_0

    .line 161
    .restart local v4    # "methodAnnotation":Ljava/lang/annotation/Annotation;
    :catch_0
    move-exception v1

    .line 162
    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "Failed to extract String \'value\' from @%s annotation."

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    .line 163
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 162
    invoke-direct {p0, v7, v8}, Lretrofit/RestMethodInfo;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v7

    throw v7

    .line 168
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    const-class v7, Lretrofit/http/Headers;

    if-ne v0, v7, :cond_6

    .line 169
    check-cast v4, Lretrofit/http/Headers;

    .end local v4    # "methodAnnotation":Ljava/lang/annotation/Annotation;
    invoke-interface {v4}, Lretrofit/http/Headers;->value()[Ljava/lang/String;

    move-result-object v2

    .line 170
    .local v2, "headersToParse":[Ljava/lang/String;
    array-length v7, v2

    if-nez v7, :cond_5

    .line 171
    const-string v7, "@Headers annotation is empty."

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-direct {p0, v7, v8}, Lretrofit/RestMethodInfo;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v7

    throw v7

    .line 173
    :cond_5
    invoke-virtual {p0, v2}, Lretrofit/RestMethodInfo;->parseHeaders([Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    iput-object v7, p0, Lretrofit/RestMethodInfo;->headers:Ljava/util/List;

    goto :goto_2

    .line 174
    .end local v2    # "headersToParse":[Ljava/lang/String;
    .restart local v4    # "methodAnnotation":Ljava/lang/annotation/Annotation;
    :cond_6
    const-class v7, Lretrofit/http/Multipart;

    if-ne v0, v7, :cond_8

    .line 175
    iget-object v7, p0, Lretrofit/RestMethodInfo;->requestType:Lretrofit/RestMethodInfo$RequestType;

    sget-object v11, Lretrofit/RestMethodInfo$RequestType;->SIMPLE:Lretrofit/RestMethodInfo$RequestType;

    if-eq v7, v11, :cond_7

    .line 176
    const-string v7, "Only one encoding annotation is allowed."

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-direct {p0, v7, v8}, Lretrofit/RestMethodInfo;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v7

    throw v7

    .line 178
    :cond_7
    sget-object v7, Lretrofit/RestMethodInfo$RequestType;->MULTIPART:Lretrofit/RestMethodInfo$RequestType;

    iput-object v7, p0, Lretrofit/RestMethodInfo;->requestType:Lretrofit/RestMethodInfo$RequestType;

    goto :goto_2

    .line 179
    :cond_8
    const-class v7, Lretrofit/http/FormUrlEncoded;

    if-ne v0, v7, :cond_a

    .line 180
    iget-object v7, p0, Lretrofit/RestMethodInfo;->requestType:Lretrofit/RestMethodInfo$RequestType;

    sget-object v11, Lretrofit/RestMethodInfo$RequestType;->SIMPLE:Lretrofit/RestMethodInfo$RequestType;

    if-eq v7, v11, :cond_9

    .line 181
    const-string v7, "Only one encoding annotation is allowed."

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-direct {p0, v7, v8}, Lretrofit/RestMethodInfo;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v7

    throw v7

    .line 183
    :cond_9
    sget-object v7, Lretrofit/RestMethodInfo$RequestType;->FORM_URL_ENCODED:Lretrofit/RestMethodInfo$RequestType;

    iput-object v7, p0, Lretrofit/RestMethodInfo;->requestType:Lretrofit/RestMethodInfo$RequestType;

    goto :goto_2

    .line 184
    :cond_a
    const-class v7, Lretrofit/http/Streaming;

    if-ne v0, v7, :cond_3

    .line 185
    iget-object v7, p0, Lretrofit/RestMethodInfo;->responseObjectType:Ljava/lang/reflect/Type;

    const-class v11, Lretrofit/client/Response;

    if-eq v7, v11, :cond_b

    .line 186
    const-string v7, "Only methods having %s as data type are allowed to have @%s annotation."

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-class v10, Lretrofit/client/Response;

    .line 188
    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-class v10, Lretrofit/http/Streaming;

    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 186
    invoke-direct {p0, v7, v8}, Lretrofit/RestMethodInfo;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v7

    throw v7

    .line 190
    :cond_b
    const/4 v7, 0x1

    iput-boolean v7, p0, Lretrofit/RestMethodInfo;->isStreaming:Z

    goto/16 :goto_2

    .line 194
    .end local v0    # "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    .end local v4    # "methodAnnotation":Ljava/lang/annotation/Annotation;
    .end local v5    # "methodInfo":Lretrofit/http/RestMethod;
    :cond_c
    iget-object v7, p0, Lretrofit/RestMethodInfo;->requestMethod:Ljava/lang/String;

    if-nez v7, :cond_d

    .line 195
    const-string v7, "HTTP method annotation is required (e.g., @GET, @POST, etc.)."

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-direct {p0, v7, v8}, Lretrofit/RestMethodInfo;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v7

    throw v7

    .line 197
    :cond_d
    iget-boolean v7, p0, Lretrofit/RestMethodInfo;->requestHasBody:Z

    if-nez v7, :cond_f

    .line 198
    iget-object v7, p0, Lretrofit/RestMethodInfo;->requestType:Lretrofit/RestMethodInfo$RequestType;

    sget-object v8, Lretrofit/RestMethodInfo$RequestType;->MULTIPART:Lretrofit/RestMethodInfo$RequestType;

    if-ne v7, v8, :cond_e

    .line 199
    const-string v7, "Multipart can only be specified on HTTP methods with request body (e.g., @POST)."

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-direct {p0, v7, v8}, Lretrofit/RestMethodInfo;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v7

    throw v7

    .line 202
    :cond_e
    iget-object v7, p0, Lretrofit/RestMethodInfo;->requestType:Lretrofit/RestMethodInfo$RequestType;

    sget-object v8, Lretrofit/RestMethodInfo$RequestType;->FORM_URL_ENCODED:Lretrofit/RestMethodInfo$RequestType;

    if-ne v7, v8, :cond_f

    .line 203
    const-string v7, "FormUrlEncoded can only be specified on HTTP methods with request body (e.g., @POST)."

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-direct {p0, v7, v8}, Lretrofit/RestMethodInfo;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v7

    throw v7

    .line 207
    :cond_f
    return-void
.end method

.method private parseParameters()V
    .locals 21

    .prologue
    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Lretrofit/RestMethodInfo;->method:Ljava/lang/reflect/Method;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v16

    .line 328
    .local v16, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lretrofit/RestMethodInfo;->method:Ljava/lang/reflect/Method;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v13

    .line 329
    .local v13, "parameterAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    array-length v4, v13

    .line 330
    .local v4, "count":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lretrofit/RestMethodInfo;->isSynchronous:Z

    move/from16 v17, v0

    if-nez v17, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lretrofit/RestMethodInfo;->isObservable:Z

    move/from16 v17, v0

    if-nez v17, :cond_0

    .line 331
    add-int/lit8 v4, v4, -0x1

    .line 334
    :cond_0
    new-array v10, v4, [Ljava/lang/String;

    .line 335
    .local v10, "paramNames":[Ljava/lang/String;
    move-object/from16 v0, p0

    iput-object v10, v0, Lretrofit/RestMethodInfo;->requestParamNames:[Ljava/lang/String;

    .line 336
    new-array v11, v4, [Lretrofit/RestMethodInfo$ParamUsage;

    .line 337
    .local v11, "paramUsage":[Lretrofit/RestMethodInfo$ParamUsage;
    move-object/from16 v0, p0

    iput-object v11, v0, Lretrofit/RestMethodInfo;->requestParamUsage:[Lretrofit/RestMethodInfo$ParamUsage;

    .line 339
    const/4 v6, 0x0

    .line 340
    .local v6, "gotField":Z
    const/4 v7, 0x0

    .line 341
    .local v7, "gotPart":Z
    const/4 v5, 0x0

    .line 343
    .local v5, "gotBody":Z
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v4, :cond_1a

    .line 344
    aget-object v15, v16, v8

    .line 345
    .local v15, "parameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    aget-object v14, v13, v8

    .line 346
    .local v14, "parameterAnnotations":[Ljava/lang/annotation/Annotation;
    if-eqz v14, :cond_18

    .line 347
    array-length v0, v14

    move/from16 v18, v0

    const/16 v17, 0x0

    :goto_1
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_18

    aget-object v12, v14, v17

    .line 348
    .local v12, "parameterAnnotation":Ljava/lang/annotation/Annotation;
    invoke-interface {v12}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v3

    .line 350
    .local v3, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    const-class v19, Lretrofit/http/Path;

    move-object/from16 v0, v19

    if-ne v3, v0, :cond_2

    .line 351
    check-cast v12, Lretrofit/http/Path;

    .end local v12    # "parameterAnnotation":Ljava/lang/annotation/Annotation;
    invoke-interface {v12}, Lretrofit/http/Path;->value()Ljava/lang/String;

    move-result-object v9

    .line 352
    .local v9, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lretrofit/RestMethodInfo;->validatePathName(ILjava/lang/String;)V

    .line 354
    aput-object v9, v10, v8

    .line 355
    sget-object v19, Lretrofit/RestMethodInfo$ParamUsage;->PATH:Lretrofit/RestMethodInfo$ParamUsage;

    aput-object v19, v11, v8

    .line 347
    .end local v9    # "name":Ljava/lang/String;
    :cond_1
    :goto_2
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 356
    .restart local v12    # "parameterAnnotation":Ljava/lang/annotation/Annotation;
    :cond_2
    const-class v19, Lretrofit/http/EncodedPath;

    move-object/from16 v0, v19

    if-ne v3, v0, :cond_3

    .line 357
    check-cast v12, Lretrofit/http/EncodedPath;

    .end local v12    # "parameterAnnotation":Ljava/lang/annotation/Annotation;
    invoke-interface {v12}, Lretrofit/http/EncodedPath;->value()Ljava/lang/String;

    move-result-object v9

    .line 358
    .restart local v9    # "name":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lretrofit/RestMethodInfo;->validatePathName(ILjava/lang/String;)V

    .line 360
    aput-object v9, v10, v8

    .line 361
    sget-object v19, Lretrofit/RestMethodInfo$ParamUsage;->ENCODED_PATH:Lretrofit/RestMethodInfo$ParamUsage;

    aput-object v19, v11, v8

    goto :goto_2

    .line 362
    .end local v9    # "name":Ljava/lang/String;
    .restart local v12    # "parameterAnnotation":Ljava/lang/annotation/Annotation;
    :cond_3
    const-class v19, Lretrofit/http/Query;

    move-object/from16 v0, v19

    if-ne v3, v0, :cond_4

    .line 363
    check-cast v12, Lretrofit/http/Query;

    .end local v12    # "parameterAnnotation":Ljava/lang/annotation/Annotation;
    invoke-interface {v12}, Lretrofit/http/Query;->value()Ljava/lang/String;

    move-result-object v9

    .line 365
    .restart local v9    # "name":Ljava/lang/String;
    aput-object v9, v10, v8

    .line 366
    sget-object v19, Lretrofit/RestMethodInfo$ParamUsage;->QUERY:Lretrofit/RestMethodInfo$ParamUsage;

    aput-object v19, v11, v8

    goto :goto_2

    .line 367
    .end local v9    # "name":Ljava/lang/String;
    .restart local v12    # "parameterAnnotation":Ljava/lang/annotation/Annotation;
    :cond_4
    const-class v19, Lretrofit/http/EncodedQuery;

    move-object/from16 v0, v19

    if-ne v3, v0, :cond_5

    .line 368
    check-cast v12, Lretrofit/http/EncodedQuery;

    .end local v12    # "parameterAnnotation":Ljava/lang/annotation/Annotation;
    invoke-interface {v12}, Lretrofit/http/EncodedQuery;->value()Ljava/lang/String;

    move-result-object v9

    .line 370
    .restart local v9    # "name":Ljava/lang/String;
    aput-object v9, v10, v8

    .line 371
    sget-object v19, Lretrofit/RestMethodInfo$ParamUsage;->ENCODED_QUERY:Lretrofit/RestMethodInfo$ParamUsage;

    aput-object v19, v11, v8

    goto :goto_2

    .line 372
    .end local v9    # "name":Ljava/lang/String;
    .restart local v12    # "parameterAnnotation":Ljava/lang/annotation/Annotation;
    :cond_5
    const-class v19, Lretrofit/http/QueryMap;

    move-object/from16 v0, v19

    if-ne v3, v0, :cond_7

    .line 373
    const-class v19, Ljava/util/Map;

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v19

    if-nez v19, :cond_6

    .line 374
    const-string v17, "@QueryMap parameter type must be Map."

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v8, v1, v2}, Lretrofit/RestMethodInfo;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v17

    throw v17

    .line 377
    :cond_6
    sget-object v19, Lretrofit/RestMethodInfo$ParamUsage;->QUERY_MAP:Lretrofit/RestMethodInfo$ParamUsage;

    aput-object v19, v11, v8

    goto :goto_2

    .line 378
    :cond_7
    const-class v19, Lretrofit/http/EncodedQueryMap;

    move-object/from16 v0, v19

    if-ne v3, v0, :cond_9

    .line 379
    const-class v19, Ljava/util/Map;

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v19

    if-nez v19, :cond_8

    .line 380
    const-string v17, "@EncodedQueryMap parameter type must be Map."

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v8, v1, v2}, Lretrofit/RestMethodInfo;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v17

    throw v17

    .line 383
    :cond_8
    sget-object v19, Lretrofit/RestMethodInfo$ParamUsage;->ENCODED_QUERY_MAP:Lretrofit/RestMethodInfo$ParamUsage;

    aput-object v19, v11, v8

    goto/16 :goto_2

    .line 384
    :cond_9
    const-class v19, Lretrofit/http/Header;

    move-object/from16 v0, v19

    if-ne v3, v0, :cond_b

    .line 385
    check-cast v12, Lretrofit/http/Header;

    .end local v12    # "parameterAnnotation":Ljava/lang/annotation/Annotation;
    invoke-interface {v12}, Lretrofit/http/Header;->value()Ljava/lang/String;

    move-result-object v9

    .line 386
    .restart local v9    # "name":Ljava/lang/String;
    const-class v19, Ljava/lang/String;

    move-object/from16 v0, v19

    if-eq v15, v0, :cond_a

    .line 387
    const-string v17, "@Header parameter type must be String. Found: %s."

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    .line 388
    invoke-virtual {v15}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    .line 387
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v8, v1, v2}, Lretrofit/RestMethodInfo;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v17

    throw v17

    .line 391
    :cond_a
    aput-object v9, v10, v8

    .line 392
    sget-object v19, Lretrofit/RestMethodInfo$ParamUsage;->HEADER:Lretrofit/RestMethodInfo$ParamUsage;

    aput-object v19, v11, v8

    goto/16 :goto_2

    .line 393
    .end local v9    # "name":Ljava/lang/String;
    .restart local v12    # "parameterAnnotation":Ljava/lang/annotation/Annotation;
    :cond_b
    const-class v19, Lretrofit/http/Field;

    move-object/from16 v0, v19

    if-ne v3, v0, :cond_d

    .line 394
    move-object/from16 v0, p0

    iget-object v0, v0, Lretrofit/RestMethodInfo;->requestType:Lretrofit/RestMethodInfo$RequestType;

    move-object/from16 v19, v0

    sget-object v20, Lretrofit/RestMethodInfo$RequestType;->FORM_URL_ENCODED:Lretrofit/RestMethodInfo$RequestType;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_c

    .line 395
    const-string v17, "@Field parameters can only be used with form encoding."

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v8, v1, v2}, Lretrofit/RestMethodInfo;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v17

    throw v17

    .line 398
    :cond_c
    check-cast v12, Lretrofit/http/Field;

    .end local v12    # "parameterAnnotation":Ljava/lang/annotation/Annotation;
    invoke-interface {v12}, Lretrofit/http/Field;->value()Ljava/lang/String;

    move-result-object v9

    .line 400
    .restart local v9    # "name":Ljava/lang/String;
    const/4 v6, 0x1

    .line 401
    aput-object v9, v10, v8

    .line 402
    sget-object v19, Lretrofit/RestMethodInfo$ParamUsage;->FIELD:Lretrofit/RestMethodInfo$ParamUsage;

    aput-object v19, v11, v8

    goto/16 :goto_2

    .line 403
    .end local v9    # "name":Ljava/lang/String;
    .restart local v12    # "parameterAnnotation":Ljava/lang/annotation/Annotation;
    :cond_d
    const-class v19, Lretrofit/http/FieldMap;

    move-object/from16 v0, v19

    if-ne v3, v0, :cond_10

    .line 404
    move-object/from16 v0, p0

    iget-object v0, v0, Lretrofit/RestMethodInfo;->requestType:Lretrofit/RestMethodInfo$RequestType;

    move-object/from16 v19, v0

    sget-object v20, Lretrofit/RestMethodInfo$RequestType;->FORM_URL_ENCODED:Lretrofit/RestMethodInfo$RequestType;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_e

    .line 405
    const-string v17, "@FieldMap parameters can only be used with form encoding."

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v8, v1, v2}, Lretrofit/RestMethodInfo;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v17

    throw v17

    .line 407
    :cond_e
    const-class v19, Ljava/util/Map;

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v19

    if-nez v19, :cond_f

    .line 408
    const-string v17, "@FieldMap parameter type must be Map."

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v8, v1, v2}, Lretrofit/RestMethodInfo;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v17

    throw v17

    .line 411
    :cond_f
    const/4 v6, 0x1

    .line 412
    sget-object v19, Lretrofit/RestMethodInfo$ParamUsage;->FIELD_MAP:Lretrofit/RestMethodInfo$ParamUsage;

    aput-object v19, v11, v8

    goto/16 :goto_2

    .line 413
    :cond_10
    const-class v19, Lretrofit/http/Part;

    move-object/from16 v0, v19

    if-ne v3, v0, :cond_12

    .line 414
    move-object/from16 v0, p0

    iget-object v0, v0, Lretrofit/RestMethodInfo;->requestType:Lretrofit/RestMethodInfo$RequestType;

    move-object/from16 v19, v0

    sget-object v20, Lretrofit/RestMethodInfo$RequestType;->MULTIPART:Lretrofit/RestMethodInfo$RequestType;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_11

    .line 415
    const-string v17, "@Part parameters can only be used with multipart encoding."

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v8, v1, v2}, Lretrofit/RestMethodInfo;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v17

    throw v17

    .line 418
    :cond_11
    check-cast v12, Lretrofit/http/Part;

    .end local v12    # "parameterAnnotation":Ljava/lang/annotation/Annotation;
    invoke-interface {v12}, Lretrofit/http/Part;->value()Ljava/lang/String;

    move-result-object v9

    .line 420
    .restart local v9    # "name":Ljava/lang/String;
    const/4 v7, 0x1

    .line 421
    aput-object v9, v10, v8

    .line 422
    sget-object v19, Lretrofit/RestMethodInfo$ParamUsage;->PART:Lretrofit/RestMethodInfo$ParamUsage;

    aput-object v19, v11, v8

    goto/16 :goto_2

    .line 423
    .end local v9    # "name":Ljava/lang/String;
    .restart local v12    # "parameterAnnotation":Ljava/lang/annotation/Annotation;
    :cond_12
    const-class v19, Lretrofit/http/PartMap;

    move-object/from16 v0, v19

    if-ne v3, v0, :cond_15

    .line 424
    move-object/from16 v0, p0

    iget-object v0, v0, Lretrofit/RestMethodInfo;->requestType:Lretrofit/RestMethodInfo$RequestType;

    move-object/from16 v19, v0

    sget-object v20, Lretrofit/RestMethodInfo$RequestType;->MULTIPART:Lretrofit/RestMethodInfo$RequestType;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_13

    .line 425
    const-string v17, "@PartMap parameters can only be used with multipart encoding."

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v8, v1, v2}, Lretrofit/RestMethodInfo;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v17

    throw v17

    .line 428
    :cond_13
    const-class v19, Ljava/util/Map;

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v19

    if-nez v19, :cond_14

    .line 429
    const-string v17, "@PartMap parameter type must be Map."

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v8, v1, v2}, Lretrofit/RestMethodInfo;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v17

    throw v17

    .line 432
    :cond_14
    const/4 v7, 0x1

    .line 433
    sget-object v19, Lretrofit/RestMethodInfo$ParamUsage;->PART_MAP:Lretrofit/RestMethodInfo$ParamUsage;

    aput-object v19, v11, v8

    goto/16 :goto_2

    .line 434
    :cond_15
    const-class v19, Lretrofit/http/Body;

    move-object/from16 v0, v19

    if-ne v3, v0, :cond_1

    .line 435
    move-object/from16 v0, p0

    iget-object v0, v0, Lretrofit/RestMethodInfo;->requestType:Lretrofit/RestMethodInfo$RequestType;

    move-object/from16 v19, v0

    sget-object v20, Lretrofit/RestMethodInfo$RequestType;->SIMPLE:Lretrofit/RestMethodInfo$RequestType;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_16

    .line 436
    const-string v17, "@Body parameters cannot be used with form or multi-part encoding."

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v8, v1, v2}, Lretrofit/RestMethodInfo;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v17

    throw v17

    .line 439
    :cond_16
    if-eqz v5, :cond_17

    .line 440
    const-string v17, "Multiple @Body method annotations found."

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lretrofit/RestMethodInfo;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v17

    throw v17

    .line 443
    :cond_17
    const/4 v5, 0x1

    .line 444
    sget-object v19, Lretrofit/RestMethodInfo$ParamUsage;->BODY:Lretrofit/RestMethodInfo$ParamUsage;

    aput-object v19, v11, v8

    goto/16 :goto_2

    .line 449
    .end local v3    # "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    .end local v12    # "parameterAnnotation":Ljava/lang/annotation/Annotation;
    :cond_18
    aget-object v17, v11, v8

    if-nez v17, :cond_19

    .line 450
    const-string v17, "No Retrofit annotation found."

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v8, v1, v2}, Lretrofit/RestMethodInfo;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v17

    throw v17

    .line 343
    :cond_19
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 454
    .end local v14    # "parameterAnnotations":[Ljava/lang/annotation/Annotation;
    .end local v15    # "parameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lretrofit/RestMethodInfo;->requestType:Lretrofit/RestMethodInfo$RequestType;

    move-object/from16 v17, v0

    sget-object v18, Lretrofit/RestMethodInfo$RequestType;->SIMPLE:Lretrofit/RestMethodInfo$RequestType;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_1b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lretrofit/RestMethodInfo;->requestHasBody:Z

    move/from16 v17, v0

    if-nez v17, :cond_1b

    if-eqz v5, :cond_1b

    .line 455
    const-string v17, "Non-body HTTP method cannot contain @Body or @TypedOutput."

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lretrofit/RestMethodInfo;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v17

    throw v17

    .line 457
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lretrofit/RestMethodInfo;->requestType:Lretrofit/RestMethodInfo$RequestType;

    move-object/from16 v17, v0

    sget-object v18, Lretrofit/RestMethodInfo$RequestType;->FORM_URL_ENCODED:Lretrofit/RestMethodInfo$RequestType;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_1c

    if-nez v6, :cond_1c

    .line 458
    const-string v17, "Form-encoded method must contain at least one @Field."

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lretrofit/RestMethodInfo;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v17

    throw v17

    .line 460
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lretrofit/RestMethodInfo;->requestType:Lretrofit/RestMethodInfo$RequestType;

    move-object/from16 v17, v0

    sget-object v18, Lretrofit/RestMethodInfo$RequestType;->MULTIPART:Lretrofit/RestMethodInfo$RequestType;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_1d

    if-nez v7, :cond_1d

    .line 461
    const-string v17, "Multipart method must contain at least one @Part."

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lretrofit/RestMethodInfo;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v17

    throw v17

    .line 463
    :cond_1d
    return-void
.end method

.method private parsePath(Ljava/lang/String;)V
    .locals 9
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 211
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2f

    if-eq v5, v6, :cond_1

    .line 212
    :cond_0
    const-string v5, "URL path \"%s\" must start with \'/\'."

    new-array v6, v8, [Ljava/lang/Object;

    aput-object p1, v6, v7

    invoke-direct {p0, v5, v6}, Lretrofit/RestMethodInfo;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v5

    throw v5

    .line 216
    :cond_1
    move-object v3, p1

    .line 217
    .local v3, "url":Ljava/lang/String;
    const/4 v0, 0x0

    .line 218
    .local v0, "query":Ljava/lang/String;
    const/16 v5, 0x3f

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 219
    .local v2, "question":I
    const/4 v5, -0x1

    if-eq v2, v5, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v2, v5, :cond_2

    .line 220
    invoke-virtual {p1, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 221
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 224
    sget-object v5, Lretrofit/RestMethodInfo;->PARAM_URL_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 225
    .local v1, "queryParamMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 226
    const-string v5, "URL query string \"%s\" must not have replace block."

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v0, v6, v7

    invoke-direct {p0, v5, v6}, Lretrofit/RestMethodInfo;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v5

    throw v5

    .line 230
    .end local v1    # "queryParamMatcher":Ljava/util/regex/Matcher;
    :cond_2
    invoke-static {p1}, Lretrofit/RestMethodInfo;->parsePathParameters(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v4

    .line 232
    .local v4, "urlParams":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iput-object v3, p0, Lretrofit/RestMethodInfo;->requestUrl:Ljava/lang/String;

    .line 233
    iput-object v4, p0, Lretrofit/RestMethodInfo;->requestUrlParamNames:Ljava/util/Set;

    .line 234
    iput-object v0, p0, Lretrofit/RestMethodInfo;->requestQuery:Ljava/lang/String;

    .line 235
    return-void
.end method

.method static parsePathParameters(Ljava/lang/String;)Ljava/util/Set;
    .locals 3
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 481
    sget-object v2, Lretrofit/RestMethodInfo;->PARAM_URL_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 482
    .local v0, "m":Ljava/util/regex/Matcher;
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 483
    .local v1, "patterns":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 484
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 486
    :cond_0
    return-object v1
.end method

.method private parseResponseType()Lretrofit/RestMethodInfo$ResponseType;
    .locals 11

    .prologue
    const/4 v0, 0x1

    const/4 v8, 0x0

    .line 260
    iget-object v9, p0, Lretrofit/RestMethodInfo;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v6

    .line 263
    .local v6, "returnType":Ljava/lang/reflect/Type;
    const/4 v3, 0x0

    .line 264
    .local v3, "lastArgType":Ljava/lang/reflect/Type;
    const/4 v2, 0x0

    .line 265
    .local v2, "lastArgClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v9, p0, Lretrofit/RestMethodInfo;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v4

    .line 266
    .local v4, "parameterTypes":[Ljava/lang/reflect/Type;
    array-length v9, v4

    if-lez v9, :cond_1

    .line 267
    array-length v9, v4

    add-int/lit8 v9, v9, -0x1

    aget-object v7, v4, v9

    .line 268
    .local v7, "typeToCheck":Ljava/lang/reflect/Type;
    move-object v3, v7

    .line 269
    instance-of v9, v7, Ljava/lang/reflect/ParameterizedType;

    if-eqz v9, :cond_0

    .line 270
    check-cast v7, Ljava/lang/reflect/ParameterizedType;

    .end local v7    # "typeToCheck":Ljava/lang/reflect/Type;
    invoke-interface {v7}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v7

    .line 272
    .restart local v7    # "typeToCheck":Ljava/lang/reflect/Type;
    :cond_0
    instance-of v9, v7, Ljava/lang/Class;

    if-eqz v9, :cond_1

    move-object v2, v7

    .line 273
    check-cast v2, Ljava/lang/Class;

    .line 277
    .end local v7    # "typeToCheck":Ljava/lang/reflect/Type;
    :cond_1
    sget-object v9, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v6, v9, :cond_2

    move v1, v0

    .line 278
    .local v1, "hasReturnType":Z
    :goto_0
    if-eqz v2, :cond_3

    const-class v9, Lretrofit/Callback;

    invoke-virtual {v9, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 281
    .local v0, "hasCallback":Z
    :goto_1
    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    .line 282
    const-string v9, "Must have return type or Callback as last argument, not both."

    new-array v8, v8, [Ljava/lang/Object;

    invoke-direct {p0, v9, v8}, Lretrofit/RestMethodInfo;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v8

    throw v8

    .end local v0    # "hasCallback":Z
    .end local v1    # "hasReturnType":Z
    :cond_2
    move v1, v8

    .line 277
    goto :goto_0

    .restart local v1    # "hasReturnType":Z
    :cond_3
    move v0, v8

    .line 278
    goto :goto_1

    .line 284
    .restart local v0    # "hasCallback":Z
    :cond_4
    if-nez v1, :cond_5

    if-nez v0, :cond_5

    .line 285
    const-string v9, "Must have either a return type or Callback as last argument."

    new-array v8, v8, [Ljava/lang/Object;

    invoke-direct {p0, v9, v8}, Lretrofit/RestMethodInfo;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v8

    throw v8

    .line 288
    :cond_5
    if-eqz v1, :cond_7

    .line 289
    sget-boolean v8, Lretrofit/Platform;->HAS_RX_JAVA:Z

    if-eqz v8, :cond_6

    .line 290
    invoke-static {v6}, Lretrofit/Types;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v5

    .line 291
    .local v5, "rawReturnType":Ljava/lang/Class;
    invoke-static {v5}, Lretrofit/RestMethodInfo$RxSupport;->isObservable(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 292
    invoke-static {v6, v5}, Lretrofit/RestMethodInfo$RxSupport;->getObservableType(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v6

    move-object v8, v6

    .line 293
    check-cast v8, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v8}, Lretrofit/RestMethodInfo;->getParameterUpperBound(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v8

    iput-object v8, p0, Lretrofit/RestMethodInfo;->responseObjectType:Ljava/lang/reflect/Type;

    .line 294
    sget-object v8, Lretrofit/RestMethodInfo$ResponseType;->OBSERVABLE:Lretrofit/RestMethodInfo$ResponseType;

    .line 304
    .end local v5    # "rawReturnType":Ljava/lang/Class;
    :goto_2
    return-object v8

    .line 297
    :cond_6
    iput-object v6, p0, Lretrofit/RestMethodInfo;->responseObjectType:Ljava/lang/reflect/Type;

    .line 298
    sget-object v8, Lretrofit/RestMethodInfo$ResponseType;->OBJECT:Lretrofit/RestMethodInfo$ResponseType;

    goto :goto_2

    .line 301
    :cond_7
    invoke-static {v3}, Lretrofit/Types;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v9

    const-class v10, Lretrofit/Callback;

    invoke-static {v3, v9, v10}, Lretrofit/Types;->getSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v3

    .line 302
    instance-of v9, v3, Ljava/lang/reflect/ParameterizedType;

    if-eqz v9, :cond_8

    move-object v8, v3

    .line 303
    check-cast v8, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v8}, Lretrofit/RestMethodInfo;->getParameterUpperBound(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v8

    iput-object v8, p0, Lretrofit/RestMethodInfo;->responseObjectType:Ljava/lang/reflect/Type;

    .line 304
    sget-object v8, Lretrofit/RestMethodInfo$ResponseType;->VOID:Lretrofit/RestMethodInfo$ResponseType;

    goto :goto_2

    .line 307
    :cond_8
    const-string v9, "Last parameter must be of type Callback<X> or Callback<? super X>."

    new-array v8, v8, [Ljava/lang/Object;

    invoke-direct {p0, v9, v8}, Lretrofit/RestMethodInfo;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v8

    throw v8
.end method

.method private validatePathName(ILjava/lang/String;)V
    .locals 5
    .param p1, "index"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 466
    sget-object v0, Lretrofit/RestMethodInfo;->PARAM_NAME_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_0

    .line 467
    const-string v0, "@Path parameter name must match %s. Found: %s"

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lretrofit/RestMethodInfo;->PARAM_URL_REGEX:Ljava/util/regex/Pattern;

    .line 468
    invoke-virtual {v2}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    aput-object p2, v1, v4

    .line 467
    invoke-direct {p0, p1, v0, v1}, Lretrofit/RestMethodInfo;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 471
    :cond_0
    iget-object v0, p0, Lretrofit/RestMethodInfo;->requestUrlParamNames:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 472
    const-string v0, "URL \"%s\" does not contain \"{%s}\"."

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lretrofit/RestMethodInfo;->requestUrl:Ljava/lang/String;

    aput-object v2, v1, v3

    aput-object p2, v1, v4

    invoke-direct {p0, p1, v0, v1}, Lretrofit/RestMethodInfo;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 474
    :cond_1
    return-void
.end method


# virtual methods
.method declared-synchronized init()V
    .locals 1

    .prologue
    .line 131
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lretrofit/RestMethodInfo;->loaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 137
    :goto_0
    monitor-exit p0

    return-void

    .line 133
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lretrofit/RestMethodInfo;->parseMethodAnnotations()V

    .line 134
    invoke-direct {p0}, Lretrofit/RestMethodInfo;->parseParameters()V

    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, Lretrofit/RestMethodInfo;->loaded:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 131
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method parseHeaders([Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p1, "headers"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lretrofit/client/Header;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 238
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 239
    .local v2, "headerList":Ljava/util/List;, "Ljava/util/List<Lretrofit/client/Header;>;"
    array-length v7, p1

    move v5, v6

    :goto_0
    if-ge v5, v7, :cond_3

    aget-object v1, p1, v5

    .line 240
    .local v1, "header":Ljava/lang/String;
    const/16 v8, 0x3a

    invoke-virtual {v1, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 241
    .local v0, "colon":I
    const/4 v8, -0x1

    if-eq v0, v8, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ne v0, v8, :cond_1

    .line 242
    :cond_0
    const-string v5, "@Headers value must be in the form \"Name: Value\". Found: \"%s\""

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v1, v7, v6

    invoke-direct {p0, v5, v7}, Lretrofit/RestMethodInfo;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v5

    throw v5

    .line 245
    :cond_1
    invoke-virtual {v1, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 246
    .local v3, "headerName":Ljava/lang/String;
    add-int/lit8 v8, v0, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 247
    .local v4, "headerValue":Ljava/lang/String;
    const-string v8, "Content-Type"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 248
    iput-object v4, p0, Lretrofit/RestMethodInfo;->contentTypeHeader:Ljava/lang/String;

    .line 239
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 250
    :cond_2
    new-instance v8, Lretrofit/client/Header;

    invoke-direct {v8, v3, v4}, Lretrofit/client/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 253
    .end local v0    # "colon":I
    .end local v1    # "header":Ljava/lang/String;
    .end local v3    # "headerName":Ljava/lang/String;
    .end local v4    # "headerValue":Ljava/lang/String;
    :cond_3
    return-object v2
.end method
