.class public final Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideEdgeBrighteningGradientBuilderProvidesAdapter;
.super Ldagger/internal/ProvidesBinding;
.source "NachosModule$$ModuleAdapter.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProvideEdgeBrighteningGradientBuilderProvidesAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/ProvidesBinding",
        "<",
        "Lcom/samsung/milk/milkvideo/utils/EdgeBrighteningGradientBuilder;",
        ">;",
        "Ljavax/inject/Provider",
        "<",
        "Lcom/samsung/milk/milkvideo/utils/EdgeBrighteningGradientBuilder;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/samsung/milk/milkvideo/NachosModule;


# direct methods
.method public constructor <init>(Lcom/samsung/milk/milkvideo/NachosModule;)V
    .locals 4
    .param p1, "module"    # Lcom/samsung/milk/milkvideo/NachosModule;

    .prologue
    .line 1333
    const-string v0, "com.samsung.milk.milkvideo.utils.EdgeBrighteningGradientBuilder"

    const/4 v1, 0x1

    const-string v2, "com.samsung.milk.milkvideo.NachosModule"

    const-string v3, "provideEdgeBrighteningGradientBuilder"

    invoke-direct {p0, v0, v1, v2, v3}, Ldagger/internal/ProvidesBinding;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1334
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideEdgeBrighteningGradientBuilderProvidesAdapter;->module:Lcom/samsung/milk/milkvideo/NachosModule;

    .line 1335
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideEdgeBrighteningGradientBuilderProvidesAdapter;->setLibrary(Z)V

    .line 1336
    return-void
.end method


# virtual methods
.method public get()Lcom/samsung/milk/milkvideo/utils/EdgeBrighteningGradientBuilder;
    .locals 1

    .prologue
    .line 1344
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideEdgeBrighteningGradientBuilderProvidesAdapter;->module:Lcom/samsung/milk/milkvideo/NachosModule;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/NachosModule;->provideEdgeBrighteningGradientBuilder()Lcom/samsung/milk/milkvideo/utils/EdgeBrighteningGradientBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1328
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideEdgeBrighteningGradientBuilderProvidesAdapter;->get()Lcom/samsung/milk/milkvideo/utils/EdgeBrighteningGradientBuilder;

    move-result-object v0

    return-object v0
.end method
