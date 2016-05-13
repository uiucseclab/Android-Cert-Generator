.class public Lcom/facebook/tools/dextr/bridge/upload/LoomUploadMethod;
.super Ljava/lang/Object;
.source "soloader_init"

# interfaces
.implements Lcom/facebook/http/protocol/ApiMethod;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/http/protocol/ApiMethod",
        "<",
        "Ljava/io/File;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field private static volatile b:Lcom/facebook/tools/dextr/bridge/upload/LoomUploadMethod;


# instance fields
.field private final a:Lcom/facebook/device_id/UniqueIdForDeviceHolder;


# direct methods
.method constructor <init>(Lcom/facebook/device_id/UniqueIdForDeviceHolder;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/facebook/tools/dextr/bridge/upload/LoomUploadMethod;->a:Lcom/facebook/device_id/UniqueIdForDeviceHolder;

    .line 41
    return-void
.end method

.method public static a(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/tools/dextr/bridge/upload/LoomUploadMethod;
    .locals 5
    .param p0    # Lcom/facebook/inject/InjectorLike;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 42
    sget-object v0, Lcom/facebook/tools/dextr/bridge/upload/LoomUploadMethod;->b:Lcom/facebook/tools/dextr/bridge/upload/LoomUploadMethod;

    if-nez v0, :cond_1

    .line 43
    const-class v1, Lcom/facebook/tools/dextr/bridge/upload/LoomUploadMethod;

    monitor-enter v1

    .line 44
    :try_start_0
    sget-object v0, Lcom/facebook/tools/dextr/bridge/upload/LoomUploadMethod;->b:Lcom/facebook/tools/dextr/bridge/upload/LoomUploadMethod;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 45
    invoke-static {}, Lcom/facebook/inject/ScopeSet;->a()Lcom/facebook/inject/ScopeSet;

    move-result-object v2

    .line 46
    invoke-virtual {v2}, Lcom/facebook/inject/ScopeSet;->b()B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result v3

    .line 48
    :try_start_1
    const-class v0, Lcom/facebook/inject/SingletonScope;

    invoke-interface {p0, v0}, Lcom/facebook/inject/Injector;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/inject/SingletonScope;

    .line 49
    invoke-virtual {v0}, Lcom/facebook/inject/SingletonScope;->enterScope()Lcom/facebook/inject/InjectorThreadStack;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v4

    .line 51
    :try_start_2
    invoke-interface {p0}, Lcom/facebook/inject/InjectorLike;->getApplicationInjector()Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/tools/dextr/bridge/upload/LoomUploadMethod;->b(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/tools/dextr/bridge/upload/LoomUploadMethod;

    move-result-object v0

    sput-object v0, Lcom/facebook/tools/dextr/bridge/upload/LoomUploadMethod;->b:Lcom/facebook/tools/dextr/bridge/upload/LoomUploadMethod;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 53
    :try_start_3
    invoke-static {v4}, Lcom/facebook/inject/SingletonScope;->a(Lcom/facebook/inject/InjectorThreadStack;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 56
    :try_start_4
    invoke-virtual {v2, v3}, Lcom/facebook/inject/ScopeSet;->c(B)V

    .line 59
    :cond_0
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 61
    :cond_1
    sget-object v0, Lcom/facebook/tools/dextr/bridge/upload/LoomUploadMethod;->b:Lcom/facebook/tools/dextr/bridge/upload/LoomUploadMethod;

    return-object v0

    .line 53
    :catchall_0
    move-exception v0

    :try_start_5
    invoke-static {v4}, Lcom/facebook/inject/SingletonScope;->a(Lcom/facebook/inject/InjectorThreadStack;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 56
    :catchall_1
    move-exception v0

    :try_start_6
    invoke-virtual {v2, v3}, Lcom/facebook/inject/ScopeSet;->c(B)V

    throw v0

    .line 59
    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0
.end method

.method private static b(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/tools/dextr/bridge/upload/LoomUploadMethod;
    .locals 2

    .prologue
    .line 16
    new-instance v1, Lcom/facebook/tools/dextr/bridge/upload/LoomUploadMethod;

    invoke-static {p0}, Lcom/facebook/device_id/UniqueIdForDeviceHolder;->a(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/device_id/UniqueIdForDeviceHolder;

    move-result-object v0

    check-cast v0, Lcom/facebook/device_id/UniqueIdForDeviceHolder;

    invoke-direct {v1, v0}, Lcom/facebook/tools/dextr/bridge/upload/LoomUploadMethod;-><init>(Lcom/facebook/device_id/UniqueIdForDeviceHolder;)V

    .line 18
    return-object v1
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/facebook/http/protocol/ApiRequest;
    .locals 7

    .prologue
    .line 31
    check-cast p1, Ljava/io/File;

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 45
    new-instance v0, Lcom/facebook/http/protocol/ProgressDataStreamBody;

    const-string v1, "application/x-gzip"

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/facebook/tools/dextr/bridge/upload/LoomUploadMethod$1;

    invoke-direct {v3, p0}, Lcom/facebook/tools/dextr/bridge/upload/LoomUploadMethod$1;-><init>(Lcom/facebook/tools/dextr/bridge/upload/LoomUploadMethod;)V

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/facebook/http/protocol/ProgressDataStreamBody;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/http/protocol/CountingOutputStreamWithProgress$ProgressListener;)V

    .line 54
    const/4 v1, 0x2

    new-array v1, v1, [Lorg/apache/http/NameValuePair;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "type"

    const-string v4, "loom"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v5

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "device_id"

    iget-object v4, p0, Lcom/facebook/tools/dextr/bridge/upload/LoomUploadMethod;->a:Lcom/facebook/device_id/UniqueIdForDeviceHolder;

    invoke-virtual {v4}, Lcom/facebook/device_id/UniqueIdForDeviceHolder;->a()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v6

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 58
    new-instance v2, Lcom/facebook/http/entity/mime/apache/FormBodyPart;

    const-string v3, "file"

    invoke-direct {v2, v3, v0}, Lcom/facebook/http/entity/mime/apache/FormBodyPart;-><init>(Ljava/lang/String;Lcom/facebook/http/entity/mime/apache/content/AbstractContentBody;)V

    .line 59
    new-instance v0, Lcom/facebook/http/protocol/ApiRequestBuilder;

    invoke-direct {v0}, Lcom/facebook/http/protocol/ApiRequestBuilder;-><init>()V

    const-string v3, "loomUpload"

    invoke-virtual {v0, v3}, Lcom/facebook/http/protocol/ApiRequestBuilder;->a(Ljava/lang/String;)Lcom/facebook/http/protocol/ApiRequestBuilder;

    move-result-object v0

    const-string v3, "me/traces"

    invoke-virtual {v0, v3}, Lcom/facebook/http/protocol/ApiRequestBuilder;->d(Ljava/lang/String;)Lcom/facebook/http/protocol/ApiRequestBuilder;

    move-result-object v0

    const-string v3, "POST"

    invoke-virtual {v0, v3}, Lcom/facebook/http/protocol/ApiRequestBuilder;->c(Ljava/lang/String;)Lcom/facebook/http/protocol/ApiRequestBuilder;

    move-result-object v0

    sget-object v3, Lcom/facebook/http/protocol/ApiResponseType;->JSON:Lcom/facebook/http/protocol/ApiResponseType;

    invoke-virtual {v0, v3}, Lcom/facebook/http/protocol/ApiRequestBuilder;->a(Lcom/facebook/http/protocol/ApiResponseType;)Lcom/facebook/http/protocol/ApiRequestBuilder;

    move-result-object v0

    new-array v3, v6, [Lcom/facebook/http/entity/mime/apache/FormBodyPart;

    aput-object v2, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/facebook/http/protocol/ApiRequestBuilder;->b(Ljava/util/List;)Lcom/facebook/http/protocol/ApiRequestBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/facebook/http/protocol/ApiRequestBuilder;->a(Ljava/util/List;)Lcom/facebook/http/protocol/ApiRequestBuilder;

    move-result-object v0

    sget-object v1, Lcom/facebook/http/protocol/ApiRequest$PostEntityType;->MULTI_PART_ENTITY:Lcom/facebook/http/protocol/ApiRequest$PostEntityType;

    invoke-virtual {v0, v1}, Lcom/facebook/http/protocol/ApiRequestBuilder;->a(Lcom/facebook/http/protocol/ApiRequest$PostEntityType;)Lcom/facebook/http/protocol/ApiRequestBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/http/protocol/ApiRequestBuilder;->A()Lcom/facebook/http/protocol/ApiRequest;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/Object;Lcom/facebook/http/protocol/ApiResponse;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 31
    const/4 v0, 0x0

    .line 72
    invoke-virtual {p2}, Lcom/facebook/http/protocol/ApiResponse;->i()V

    .line 73
    invoke-virtual {p2}, Lcom/facebook/http/protocol/ApiResponse;->c()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    .line 74
    invoke-virtual {p2}, Lcom/facebook/http/protocol/ApiResponse;->a()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_0

    const-string v2, "success"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "success"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->b(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->a(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
