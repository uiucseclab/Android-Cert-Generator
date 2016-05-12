.class public Lcom/facebook/tools/dextr/bridge/DextrXConfigManager;
.super Ljava/lang/Object;
.source "socket connect call succeeded but socket is not connected."


# instance fields
.field private final a:Lcom/facebook/xconfig/core/XConfigReader;


# direct methods
.method public constructor <init>(Lcom/facebook/xconfig/core/XConfigReader;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/facebook/tools/dextr/bridge/DextrXConfigManager;->a:Lcom/facebook/xconfig/core/XConfigReader;

    .line 19
    return-void
.end method

.method public static final b(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/tools/dextr/bridge/DextrXConfigManager;
    .locals 2

    .prologue
    .line 16
    new-instance v1, Lcom/facebook/tools/dextr/bridge/DextrXConfigManager;

    invoke-static {p0}, Lcom/facebook/xconfig/core/XConfigReader;->a(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/xconfig/core/XConfigReader;

    move-result-object v0

    check-cast v0, Lcom/facebook/xconfig/core/XConfigReader;

    invoke-direct {v1, v0}, Lcom/facebook/tools/dextr/bridge/DextrXConfigManager;-><init>(Lcom/facebook/xconfig/core/XConfigReader;)V

    .line 18
    return-object v1
.end method


# virtual methods
.method public final a()Lcom/facebook/tools/dextr/bridge/upload/UploadConfiguration;
    .locals 2

    .prologue
    .line 22
    new-instance v0, Lcom/facebook/tools/dextr/bridge/upload/UploadConfiguration;

    iget-object v1, p0, Lcom/facebook/tools/dextr/bridge/DextrXConfigManager;->a:Lcom/facebook/xconfig/core/XConfigReader;

    invoke-direct {v0, v1}, Lcom/facebook/tools/dextr/bridge/upload/UploadConfiguration;-><init>(Lcom/facebook/xconfig/core/XConfigReader;)V

    return-object v0
.end method
