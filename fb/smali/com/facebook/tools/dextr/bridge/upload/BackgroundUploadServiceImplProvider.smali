.class public Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadServiceImplProvider;
.super Lcom/facebook/inject/AbstractAssistedProvider;
.source "source_index"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/inject/AbstractAssistedProvider",
        "<",
        "Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadServiceImpl;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/facebook/inject/AbstractAssistedProvider;-><init>()V

    .line 17
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/concurrent/ExecutorService;)Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadServiceImpl;
    .locals 6

    .prologue
    .line 22
    new-instance v0, Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadServiceImpl;

    invoke-static {p0}, Lcom/facebook/tools/dextr/bridge/upload/UploadConstraints;->b(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/tools/dextr/bridge/upload/UploadConstraints;

    move-result-object v1

    check-cast v1, Lcom/facebook/tools/dextr/bridge/upload/UploadConstraints;

    invoke-static {p0}, Lcom/facebook/common/executors/ListeningExecutorService_DefaultExecutorServiceMethodAutoProvider;->a(Lcom/facebook/inject/InjectorLike;)Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/ExecutorService;

    invoke-static {p0}, Lcom/facebook/http/protocol/SingleMethodRunnerImpl;->a(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/http/protocol/SingleMethodRunnerImpl;

    move-result-object v4

    check-cast v4, Lcom/facebook/http/protocol/AbstractSingleMethodRunner;

    invoke-static {p0}, Lcom/facebook/tools/dextr/bridge/upload/LoomUploadMethod;->a(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/tools/dextr/bridge/upload/LoomUploadMethod;

    move-result-object v5

    check-cast v5, Lcom/facebook/tools/dextr/bridge/upload/LoomUploadMethod;

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadServiceImpl;-><init>(Lcom/facebook/tools/dextr/bridge/upload/UploadConstraints;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Lcom/facebook/http/protocol/AbstractSingleMethodRunner;Lcom/facebook/tools/dextr/bridge/upload/LoomUploadMethod;)V

    .line 28
    return-object v0
.end method
