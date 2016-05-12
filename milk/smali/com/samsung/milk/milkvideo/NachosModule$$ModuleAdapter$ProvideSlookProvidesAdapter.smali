.class public final Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideSlookProvidesAdapter;
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
    name = "ProvideSlookProvidesAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/ProvidesBinding",
        "<",
        "Lcom/samsung/android/sdk/SsdkInterface;",
        ">;",
        "Ljavax/inject/Provider",
        "<",
        "Lcom/samsung/android/sdk/SsdkInterface;",
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

    .line 432
    const-string v0, "com.samsung.android.sdk.SsdkInterface"

    const-string v1, "com.samsung.milk.milkvideo.NachosModule"

    const-string v2, "provideSlook"

    invoke-direct {p0, v0, v3, v1, v2}, Ldagger/internal/ProvidesBinding;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 433
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideSlookProvidesAdapter;->module:Lcom/samsung/milk/milkvideo/NachosModule;

    .line 434
    invoke-virtual {p0, v3}, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideSlookProvidesAdapter;->setLibrary(Z)V

    .line 435
    return-void
.end method


# virtual methods
.method public get()Lcom/samsung/android/sdk/SsdkInterface;
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideSlookProvidesAdapter;->module:Lcom/samsung/milk/milkvideo/NachosModule;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/NachosModule;->provideSlook()Lcom/samsung/android/sdk/SsdkInterface;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 427
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideSlookProvidesAdapter;->get()Lcom/samsung/android/sdk/SsdkInterface;

    move-result-object v0

    return-object v0
.end method
