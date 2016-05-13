.class public Lcom/facebook/tools/dextr/bridge/DextrModule;
.super Lcom/facebook/inject/AbstractLibraryModule;
.source "sourceURL"


# annotations
.annotation build Lcom/facebook/inject/InjectorModule;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/facebook/inject/AbstractLibraryModule;-><init>()V

    .line 45
    return-void
.end method

.method public static a(Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadServiceImplProvider;)Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadServiceImpl;
    .locals 1
    .annotation build Lcom/facebook/inject/ProviderMethod;
    .end annotation

    .prologue
    .line 55
    new-instance v0, Lcom/facebook/tools/dextr/bridge/DextrModule$1;

    invoke-direct {v0}, Lcom/facebook/tools/dextr/bridge/DextrModule$1;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 65
    invoke-virtual {p0, v0}, Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadServiceImplProvider;->a(Ljava/util/concurrent/ExecutorService;)Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadServiceImpl;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected configure()V
    .locals 0

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/facebook/inject/AbstractModule;->getBinder()Lcom/facebook/inject/BinderImpl;

    .line 71
    return-void
.end method
