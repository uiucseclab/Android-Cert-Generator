.class public final Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideTelephonyManagerProvidesAdapter;
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
    name = "ProvideTelephonyManagerProvidesAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/ProvidesBinding",
        "<",
        "Landroid/telephony/TelephonyManager;",
        ">;",
        "Ljavax/inject/Provider",
        "<",
        "Landroid/telephony/TelephonyManager;",
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
    .line 1279
    const-string v0, "android.telephony.TelephonyManager"

    const/4 v1, 0x1

    const-string v2, "com.samsung.milk.milkvideo.NachosModule"

    const-string v3, "provideTelephonyManager"

    invoke-direct {p0, v0, v1, v2, v3}, Ldagger/internal/ProvidesBinding;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1280
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideTelephonyManagerProvidesAdapter;->module:Lcom/samsung/milk/milkvideo/NachosModule;

    .line 1281
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideTelephonyManagerProvidesAdapter;->setLibrary(Z)V

    .line 1282
    return-void
.end method


# virtual methods
.method public get()Landroid/telephony/TelephonyManager;
    .locals 1

    .prologue
    .line 1290
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideTelephonyManagerProvidesAdapter;->module:Lcom/samsung/milk/milkvideo/NachosModule;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/NachosModule;->provideTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1274
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideTelephonyManagerProvidesAdapter;->get()Landroid/telephony/TelephonyManager;

    move-result-object v0

    return-object v0
.end method
