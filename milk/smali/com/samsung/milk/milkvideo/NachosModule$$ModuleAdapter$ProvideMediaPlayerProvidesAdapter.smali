.class public final Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideMediaPlayerProvidesAdapter;
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
    name = "ProvideMediaPlayerProvidesAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/ProvidesBinding",
        "<",
        "Landroid/media/MediaPlayer;",
        ">;",
        "Ljavax/inject/Provider",
        "<",
        "Landroid/media/MediaPlayer;",
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

    .line 187
    const-string v0, "android.media.MediaPlayer"

    const-string v1, "com.samsung.milk.milkvideo.NachosModule"

    const-string v2, "provideMediaPlayer"

    invoke-direct {p0, v0, v3, v1, v2}, Ldagger/internal/ProvidesBinding;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 188
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideMediaPlayerProvidesAdapter;->module:Lcom/samsung/milk/milkvideo/NachosModule;

    .line 189
    invoke-virtual {p0, v3}, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideMediaPlayerProvidesAdapter;->setLibrary(Z)V

    .line 190
    return-void
.end method


# virtual methods
.method public get()Landroid/media/MediaPlayer;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideMediaPlayerProvidesAdapter;->module:Lcom/samsung/milk/milkvideo/NachosModule;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/NachosModule;->provideMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideMediaPlayerProvidesAdapter;->get()Landroid/media/MediaPlayer;

    move-result-object v0

    return-object v0
.end method
