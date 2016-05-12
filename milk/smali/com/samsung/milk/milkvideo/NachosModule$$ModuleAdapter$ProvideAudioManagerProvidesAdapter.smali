.class public final Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideAudioManagerProvidesAdapter;
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
    name = "ProvideAudioManagerProvidesAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/ProvidesBinding",
        "<",
        "Landroid/media/AudioManager;",
        ">;",
        "Ljavax/inject/Provider",
        "<",
        "Landroid/media/AudioManager;",
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
    .line 241
    const-string v0, "android.media.AudioManager"

    const/4 v1, 0x1

    const-string v2, "com.samsung.milk.milkvideo.NachosModule"

    const-string v3, "provideAudioManager"

    invoke-direct {p0, v0, v1, v2, v3}, Ldagger/internal/ProvidesBinding;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 242
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideAudioManagerProvidesAdapter;->module:Lcom/samsung/milk/milkvideo/NachosModule;

    .line 243
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideAudioManagerProvidesAdapter;->setLibrary(Z)V

    .line 244
    return-void
.end method


# virtual methods
.method public get()Landroid/media/AudioManager;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideAudioManagerProvidesAdapter;->module:Lcom/samsung/milk/milkvideo/NachosModule;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/NachosModule;->provideAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideAudioManagerProvidesAdapter;->get()Landroid/media/AudioManager;

    move-result-object v0

    return-object v0
.end method
