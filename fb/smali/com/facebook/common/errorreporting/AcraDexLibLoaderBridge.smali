.class public Lcom/facebook/common/errorreporting/AcraDexLibLoaderBridge;
.super Ljava/lang/Object;
.source "x"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 2

    .prologue
    .line 24
    invoke-static {}, Lcom/facebook/acra/ErrorReporter;->getInstance()Lcom/facebook/acra/ErrorReporter;

    move-result-object v0

    new-instance v1, Lcom/facebook/common/errorreporting/AcraDexLibLoaderBridge;

    invoke-direct {v1}, Lcom/facebook/common/errorreporting/AcraDexLibLoaderBridge;-><init>()V

    invoke-virtual {v0, v1}, Lcom/facebook/acra/ErrorReporter;->setDexVerifyBridge(Lcom/facebook/common/errorreporting/AcraDexLibLoaderBridge;)V

    .line 25
    return-void
.end method


# virtual methods
.method public verifyDexes()Ljava/lang/RuntimeException;
    .locals 1

    .prologue
    .line 17
    invoke-static {}, Lcom/facebook/common/dextricks/DexLibLoader;->verifyCanaryClasses()Ljava/lang/RuntimeException;

    move-result-object v0

    return-object v0
.end method
