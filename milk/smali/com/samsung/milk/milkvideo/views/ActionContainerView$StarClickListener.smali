.class Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener;
.super Ljava/lang/Object;
.source "ActionContainerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/milk/milkvideo/views/ActionContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StarClickListener"
.end annotation


# instance fields
.field private currentlyStarringVideo:Z

.field final synthetic this$0:Lcom/samsung/milk/milkvideo/views/ActionContainerView;


# direct methods
.method private constructor <init>(Lcom/samsung/milk/milkvideo/views/ActionContainerView;)V
    .locals 0

    .prologue
    .line 367
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener;->this$0:Lcom/samsung/milk/milkvideo/views/ActionContainerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/milk/milkvideo/views/ActionContainerView;Lcom/samsung/milk/milkvideo/views/ActionContainerView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/milk/milkvideo/views/ActionContainerView;
    .param p2, "x1"    # Lcom/samsung/milk/milkvideo/views/ActionContainerView$1;

    .prologue
    .line 367
    invoke-direct {p0, p1}, Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener;-><init>(Lcom/samsung/milk/milkvideo/views/ActionContainerView;)V

    return-void
.end method

.method static synthetic access$902(Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener;
    .param p1, "x1"    # Z

    .prologue
    .line 367
    iput-boolean p1, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener;->currentlyStarringVideo:Z

    return p1
.end method

.method private starVideo()V
    .locals 4

    .prologue
    .line 411
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener;->this$0:Lcom/samsung/milk/milkvideo/views/ActionContainerView;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->nachosRestService:Lcom/samsung/milk/milkvideo/api/NachosRestService;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener;->this$0:Lcom/samsung/milk/milkvideo/views/ActionContainerView;

    iget-object v1, v1, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->loginState:Lcom/samsung/milk/milkvideo/services/LoginState;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/services/LoginState;->getCurrentUserUuid()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener;->this$0:Lcom/samsung/milk/milkvideo/views/ActionContainerView;

    invoke-virtual {v2}, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->getVideo()Lcom/samsung/milk/milkvideo/models/Video;

    move-result-object v2

    new-instance v3, Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener$2;

    invoke-direct {v3, p0}, Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener$2;-><init>(Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/milk/milkvideo/api/NachosRestService;->starVideo(Ljava/lang/String;Lcom/samsung/milk/milkvideo/models/Video;Lretrofit/ResponseCallback;)V

    .line 436
    return-void
.end method

.method private unstarVideo()V
    .locals 4

    .prologue
    .line 389
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener;->this$0:Lcom/samsung/milk/milkvideo/views/ActionContainerView;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->nachosRestService:Lcom/samsung/milk/milkvideo/api/NachosRestService;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener;->this$0:Lcom/samsung/milk/milkvideo/views/ActionContainerView;

    iget-object v1, v1, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->loginState:Lcom/samsung/milk/milkvideo/services/LoginState;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/services/LoginState;->getCurrentUserUuid()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener;->this$0:Lcom/samsung/milk/milkvideo/views/ActionContainerView;

    invoke-virtual {v2}, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->getVideo()Lcom/samsung/milk/milkvideo/models/Video;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/milk/milkvideo/models/Video;->getEmbedCode()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener$1;

    invoke-direct {v3, p0}, Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener$1;-><init>(Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/milk/milkvideo/api/NachosRestService;->unstarVideo(Ljava/lang/String;Ljava/lang/String;Lretrofit/ResponseCallback;)V

    .line 408
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 372
    iget-boolean v0, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener;->currentlyStarringVideo:Z

    if-eqz v0, :cond_0

    .line 386
    :goto_0
    return-void

    .line 375
    :cond_0
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener;->this$0:Lcom/samsung/milk/milkvideo/views/ActionContainerView;

    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener;->this$0:Lcom/samsung/milk/milkvideo/views/ActionContainerView;

    # invokes: Lcom/samsung/milk/milkvideo/views/ActionContainerView;->isStarLit()Z
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->access$700(Lcom/samsung/milk/milkvideo/views/ActionContainerView;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v2, v0}, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->updateStarViewImmediately(Z)V

    .line 376
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener;->this$0:Lcom/samsung/milk/milkvideo/views/ActionContainerView;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->loginState:Lcom/samsung/milk/milkvideo/services/LoginState;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/services/LoginState;->isSoftLoggedIn()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener;->this$0:Lcom/samsung/milk/milkvideo/views/ActionContainerView;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->loginState:Lcom/samsung/milk/milkvideo/services/LoginState;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/services/LoginState;->getCurrentUser()Lcom/samsung/milk/milkvideo/models/User;

    move-result-object v0

    if-nez v0, :cond_3

    .line 377
    :cond_1
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener;->this$0:Lcom/samsung/milk/milkvideo/views/ActionContainerView;

    # invokes: Lcom/samsung/milk/milkvideo/views/ActionContainerView;->startSignupActivity(Landroid/view/View;)V
    invoke-static {v0, p1}, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->access$600(Lcom/samsung/milk/milkvideo/views/ActionContainerView;Landroid/view/View;)V

    goto :goto_0

    .line 375
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 379
    :cond_3
    iput-boolean v1, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener;->currentlyStarringVideo:Z

    .line 380
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener;->this$0:Lcom/samsung/milk/milkvideo/views/ActionContainerView;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->getVideo()Lcom/samsung/milk/milkvideo/models/Video;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/models/Video;->isStarredByMe()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 381
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener;->unstarVideo()V

    goto :goto_0

    .line 383
    :cond_4
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/views/ActionContainerView$StarClickListener;->starVideo()V

    goto :goto_0
.end method
