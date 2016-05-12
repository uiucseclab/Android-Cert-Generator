.class public Lcom/samsung/milk/milkvideo/login/FacebookSession;
.super Ljava/lang/Object;
.source "FacebookSession.java"


# instance fields
.field private final session:Lcom/facebook/Session;


# direct methods
.method public constructor <init>(Lcom/facebook/Session;)V
    .locals 0
    .param p1, "session"    # Lcom/facebook/Session;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/login/FacebookSession;->session:Lcom/facebook/Session;

    .line 13
    return-void
.end method


# virtual methods
.method public closeAndClearTokenInformation()V
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/login/FacebookSession;->session:Lcom/facebook/Session;

    invoke-virtual {v0}, Lcom/facebook/Session;->closeAndClearTokenInformation()V

    .line 21
    return-void
.end method

.method public getDelegate()Lcom/facebook/Session;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/login/FacebookSession;->session:Lcom/facebook/Session;

    return-object v0
.end method

.method public getState()Lcom/facebook/SessionState;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/login/FacebookSession;->session:Lcom/facebook/Session;

    invoke-virtual {v0}, Lcom/facebook/Session;->getState()Lcom/facebook/SessionState;

    move-result-object v0

    return-object v0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/login/FacebookSession;->session:Lcom/facebook/Session;

    invoke-virtual {v0}, Lcom/facebook/Session;->isClosed()Z

    move-result v0

    return v0
.end method

.method public isOpened()Z
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/login/FacebookSession;->session:Lcom/facebook/Session;

    invoke-virtual {v0}, Lcom/facebook/Session;->isOpened()Z

    move-result v0

    return v0
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I
    .param p3, "resultCode"    # I
    .param p4, "data"    # Landroid/content/Intent;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/login/FacebookSession;->session:Lcom/facebook/Session;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/facebook/Session;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)Z

    .line 25
    return-void
.end method
