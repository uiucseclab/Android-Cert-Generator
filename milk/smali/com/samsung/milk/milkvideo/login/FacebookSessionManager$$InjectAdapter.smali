.class public final Lcom/samsung/milk/milkvideo/login/FacebookSessionManager$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "FacebookSessionManager$$InjectAdapter.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding",
        "<",
        "Lcom/samsung/milk/milkvideo/login/FacebookSessionManager;",
        ">;",
        "Ljavax/inject/Provider",
        "<",
        "Lcom/samsung/milk/milkvideo/login/FacebookSessionManager;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 18
    const-string v0, "com.samsung.milk.milkvideo.login.FacebookSessionManager"

    const-string v1, "members/com.samsung.milk.milkvideo.login.FacebookSessionManager"

    const/4 v2, 0x0

    const-class v3, Lcom/samsung/milk/milkvideo/login/FacebookSessionManager;

    invoke-direct {p0, v0, v1, v2, v3}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    .line 19
    return-void
.end method


# virtual methods
.method public get()Lcom/samsung/milk/milkvideo/login/FacebookSessionManager;
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/samsung/milk/milkvideo/login/FacebookSessionManager;

    invoke-direct {v0}, Lcom/samsung/milk/milkvideo/login/FacebookSessionManager;-><init>()V

    .line 28
    .local v0, "result":Lcom/samsung/milk/milkvideo/login/FacebookSessionManager;
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/login/FacebookSessionManager$$InjectAdapter;->get()Lcom/samsung/milk/milkvideo/login/FacebookSessionManager;

    move-result-object v0

    return-object v0
.end method
