.class public final Lcom/facebook/tools/dextr/bridge/BackgroundUploadServiceMethodAutoProvider;
.super Lcom/facebook/inject/AbstractProvider;
.source "souvenir"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/inject/AbstractProvider",
        "<",
        "Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadService;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/facebook/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method public static final b(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadServiceImpl;
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadServiceImplProvider;

    invoke-interface {p0, v0}, Lcom/facebook/inject/InjectorLike;->getOnDemandAssistedProviderForStaticDi(Ljava/lang/Class;)Lcom/facebook/inject/AbstractAssistedProvider;

    move-result-object v0

    check-cast v0, Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadServiceImplProvider;

    invoke-static {v0}, Lcom/facebook/tools/dextr/bridge/DextrModule;->a(Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadServiceImplProvider;)Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadServiceImpl;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 11
    .line 16
    const-class v0, Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadServiceImplProvider;

    invoke-interface {p0, v0}, Lcom/facebook/inject/InjectorLike;->getOnDemandAssistedProviderForStaticDi(Ljava/lang/Class;)Lcom/facebook/inject/AbstractAssistedProvider;

    move-result-object v0

    check-cast v0, Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadServiceImplProvider;

    invoke-static {v0}, Lcom/facebook/tools/dextr/bridge/DextrModule;->a(Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadServiceImplProvider;)Lcom/facebook/tools/dextr/bridge/upload/BackgroundUploadServiceImpl;

    move-result-object v0

    return-object v0
.end method
