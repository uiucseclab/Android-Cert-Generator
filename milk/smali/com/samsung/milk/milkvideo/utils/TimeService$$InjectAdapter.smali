.class public final Lcom/samsung/milk/milkvideo/utils/TimeService$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "TimeService$$InjectAdapter.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding",
        "<",
        "Lcom/samsung/milk/milkvideo/utils/TimeService;",
        ">;",
        "Ljavax/inject/Provider",
        "<",
        "Lcom/samsung/milk/milkvideo/utils/TimeService;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 18
    const-string v0, "com.samsung.milk.milkvideo.utils.TimeService"

    const-string v1, "members/com.samsung.milk.milkvideo.utils.TimeService"

    const/4 v2, 0x1

    const-class v3, Lcom/samsung/milk/milkvideo/utils/TimeService;

    invoke-direct {p0, v0, v1, v2, v3}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    .line 19
    return-void
.end method


# virtual methods
.method public get()Lcom/samsung/milk/milkvideo/utils/TimeService;
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/samsung/milk/milkvideo/utils/TimeService;

    invoke-direct {v0}, Lcom/samsung/milk/milkvideo/utils/TimeService;-><init>()V

    .line 28
    .local v0, "result":Lcom/samsung/milk/milkvideo/utils/TimeService;
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/utils/TimeService$$InjectAdapter;->get()Lcom/samsung/milk/milkvideo/utils/TimeService;

    move-result-object v0

    return-object v0
.end method
