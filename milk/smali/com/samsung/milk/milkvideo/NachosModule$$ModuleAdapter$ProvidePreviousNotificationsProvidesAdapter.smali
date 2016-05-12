.class public final Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvidePreviousNotificationsProvidesAdapter;
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
    name = "ProvidePreviousNotificationsProvidesAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/ProvidesBinding",
        "<",
        "Lcom/samsung/milk/milkvideo/notifications/PreviousNotifications;",
        ">;",
        "Ljavax/inject/Provider",
        "<",
        "Lcom/samsung/milk/milkvideo/notifications/PreviousNotifications;",
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
    .line 1460
    const-string v0, "com.samsung.milk.milkvideo.notifications.PreviousNotifications"

    const/4 v1, 0x1

    const-string v2, "com.samsung.milk.milkvideo.NachosModule"

    const-string v3, "providePreviousNotifications"

    invoke-direct {p0, v0, v1, v2, v3}, Ldagger/internal/ProvidesBinding;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1461
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvidePreviousNotificationsProvidesAdapter;->module:Lcom/samsung/milk/milkvideo/NachosModule;

    .line 1462
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvidePreviousNotificationsProvidesAdapter;->setLibrary(Z)V

    .line 1463
    return-void
.end method


# virtual methods
.method public get()Lcom/samsung/milk/milkvideo/notifications/PreviousNotifications;
    .locals 1

    .prologue
    .line 1471
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvidePreviousNotificationsProvidesAdapter;->module:Lcom/samsung/milk/milkvideo/NachosModule;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/NachosModule;->providePreviousNotifications()Lcom/samsung/milk/milkvideo/notifications/PreviousNotifications;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1455
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvidePreviousNotificationsProvidesAdapter;->get()Lcom/samsung/milk/milkvideo/notifications/PreviousNotifications;

    move-result-object v0

    return-object v0
.end method
