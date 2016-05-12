.class public Lcom/samsung/milk/milkvideo/login/FacebookSessionManager;
.super Ljava/lang/Object;
.source "FacebookSessionManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public getActiveSession()Lcom/samsung/milk/milkvideo/login/FacebookSession;
    .locals 2

    .prologue
    .line 13
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    .line 14
    .local v0, "session":Lcom/facebook/Session;
    if-eqz v0, :cond_0

    .line 15
    new-instance v1, Lcom/samsung/milk/milkvideo/login/FacebookSession;

    invoke-direct {v1, v0}, Lcom/samsung/milk/milkvideo/login/FacebookSession;-><init>(Lcom/facebook/Session;)V

    .line 17
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
