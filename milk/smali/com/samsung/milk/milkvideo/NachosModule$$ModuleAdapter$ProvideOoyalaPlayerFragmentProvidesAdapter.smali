.class public final Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideOoyalaPlayerFragmentProvidesAdapter;
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
    name = "ProvideOoyalaPlayerFragmentProvidesAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/ProvidesBinding",
        "<",
        "Lcom/samsung/milk/milkvideo/fragments/VideoPlayerFragment;",
        ">;",
        "Ljavax/inject/Provider",
        "<",
        "Lcom/samsung/milk/milkvideo/fragments/VideoPlayerFragment;",
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
    const/4 v3, 0x0

    .line 559
    const-string v0, "@javax.inject.Named(value=ooyala)/com.samsung.milk.milkvideo.fragments.VideoPlayerFragment"

    const-string v1, "com.samsung.milk.milkvideo.NachosModule"

    const-string v2, "provideOoyalaPlayerFragment"

    invoke-direct {p0, v0, v3, v1, v2}, Ldagger/internal/ProvidesBinding;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 560
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideOoyalaPlayerFragmentProvidesAdapter;->module:Lcom/samsung/milk/milkvideo/NachosModule;

    .line 561
    invoke-virtual {p0, v3}, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideOoyalaPlayerFragmentProvidesAdapter;->setLibrary(Z)V

    .line 562
    return-void
.end method


# virtual methods
.method public get()Lcom/samsung/milk/milkvideo/fragments/VideoPlayerFragment;
    .locals 1

    .prologue
    .line 570
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideOoyalaPlayerFragmentProvidesAdapter;->module:Lcom/samsung/milk/milkvideo/NachosModule;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/NachosModule;->provideOoyalaPlayerFragment()Lcom/samsung/milk/milkvideo/fragments/VideoPlayerFragment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 554
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideOoyalaPlayerFragmentProvidesAdapter;->get()Lcom/samsung/milk/milkvideo/fragments/VideoPlayerFragment;

    move-result-object v0

    return-object v0
.end method
