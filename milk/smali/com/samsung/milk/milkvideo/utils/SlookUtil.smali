.class public Lcom/samsung/milk/milkvideo/utils/SlookUtil;
.super Ljava/lang/Object;
.source "SlookUtil.java"


# instance fields
.field private final context:Landroid/content/Context;

.field private final slook:Lcom/samsung/android/sdk/SsdkInterface;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/SsdkInterface;Landroid/content/Context;)V
    .locals 0
    .param p1, "slook"    # Lcom/samsung/android/sdk/SsdkInterface;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/utils/SlookUtil;->slook:Lcom/samsung/android/sdk/SsdkInterface;

    .line 15
    iput-object p2, p0, Lcom/samsung/milk/milkvideo/utils/SlookUtil;->context:Landroid/content/Context;

    .line 16
    return-void
.end method


# virtual methods
.method public isCocktailAvailable()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 20
    :try_start_0
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/utils/SlookUtil;->slook:Lcom/samsung/android/sdk/SsdkInterface;

    iget-object v3, p0, Lcom/samsung/milk/milkvideo/utils/SlookUtil;->context:Landroid/content/Context;

    invoke-interface {v2, v3}, Lcom/samsung/android/sdk/SsdkInterface;->initialize(Landroid/content/Context;)V

    .line 21
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/utils/SlookUtil;->slook:Lcom/samsung/android/sdk/SsdkInterface;

    const/4 v3, 0x6

    invoke-interface {v2, v3}, Lcom/samsung/android/sdk/SsdkInterface;->isFeatureEnabled(I)Z
    :try_end_0
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 26
    :goto_0
    return v1

    .line 22
    :catch_0
    move-exception v0

    .line 23
    .local v0, "e":Lcom/samsung/android/sdk/SsdkUnsupportedException;
    invoke-virtual {v0}, Lcom/samsung/android/sdk/SsdkUnsupportedException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
