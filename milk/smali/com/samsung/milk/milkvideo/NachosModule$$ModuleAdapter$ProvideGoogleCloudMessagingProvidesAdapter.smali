.class public final Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideGoogleCloudMessagingProvidesAdapter;
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
    name = "ProvideGoogleCloudMessagingProvidesAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/ProvidesBinding",
        "<",
        "Lcom/samsung/milk/milkvideo/notifications/GcmProvider;",
        ">;",
        "Ljavax/inject/Provider",
        "<",
        "Lcom/samsung/milk/milkvideo/notifications/GcmProvider;",
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
    .line 351
    const-string v0, "com.samsung.milk.milkvideo.notifications.GcmProvider"

    const/4 v1, 0x1

    const-string v2, "com.samsung.milk.milkvideo.NachosModule"

    const-string v3, "provideGoogleCloudMessaging"

    invoke-direct {p0, v0, v1, v2, v3}, Ldagger/internal/ProvidesBinding;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 352
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideGoogleCloudMessagingProvidesAdapter;->module:Lcom/samsung/milk/milkvideo/NachosModule;

    .line 353
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideGoogleCloudMessagingProvidesAdapter;->setLibrary(Z)V

    .line 354
    return-void
.end method


# virtual methods
.method public get()Lcom/samsung/milk/milkvideo/notifications/GcmProvider;
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideGoogleCloudMessagingProvidesAdapter;->module:Lcom/samsung/milk/milkvideo/NachosModule;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/NachosModule;->provideGoogleCloudMessaging()Lcom/samsung/milk/milkvideo/notifications/GcmProvider;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 346
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideGoogleCloudMessagingProvidesAdapter;->get()Lcom/samsung/milk/milkvideo/notifications/GcmProvider;

    move-result-object v0

    return-object v0
.end method
