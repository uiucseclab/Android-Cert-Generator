.class Lcom/samsung/milk/milkvideo/views/ActionContainerView$ShareClickListener;
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
    name = "ShareClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/milk/milkvideo/views/ActionContainerView;


# direct methods
.method private constructor <init>(Lcom/samsung/milk/milkvideo/views/ActionContainerView;)V
    .locals 0

    .prologue
    .line 318
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView$ShareClickListener;->this$0:Lcom/samsung/milk/milkvideo/views/ActionContainerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/milk/milkvideo/views/ActionContainerView;Lcom/samsung/milk/milkvideo/views/ActionContainerView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/milk/milkvideo/views/ActionContainerView;
    .param p2, "x1"    # Lcom/samsung/milk/milkvideo/views/ActionContainerView$1;

    .prologue
    .line 318
    invoke-direct {p0, p1}, Lcom/samsung/milk/milkvideo/views/ActionContainerView$ShareClickListener;-><init>(Lcom/samsung/milk/milkvideo/views/ActionContainerView;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 321
    iget-object v3, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView$ShareClickListener;->this$0:Lcom/samsung/milk/milkvideo/views/ActionContainerView;

    invoke-virtual {v3}, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->removeDismissTimerAndHideNow()V

    .line 322
    iget-object v3, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView$ShareClickListener;->this$0:Lcom/samsung/milk/milkvideo/views/ActionContainerView;

    iget-object v3, v3, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->loginState:Lcom/samsung/milk/milkvideo/services/LoginState;

    invoke-virtual {v3}, Lcom/samsung/milk/milkvideo/services/LoginState;->isSoftLoggedIn()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView$ShareClickListener;->this$0:Lcom/samsung/milk/milkvideo/views/ActionContainerView;

    iget-object v3, v3, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->loginState:Lcom/samsung/milk/milkvideo/services/LoginState;

    invoke-virtual {v3}, Lcom/samsung/milk/milkvideo/services/LoginState;->getCurrentUser()Lcom/samsung/milk/milkvideo/models/User;

    move-result-object v3

    if-nez v3, :cond_1

    .line 323
    :cond_0
    iget-object v3, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView$ShareClickListener;->this$0:Lcom/samsung/milk/milkvideo/views/ActionContainerView;

    # invokes: Lcom/samsung/milk/milkvideo/views/ActionContainerView;->startSignupActivity(Landroid/view/View;)V
    invoke-static {v3, p1}, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->access$600(Lcom/samsung/milk/milkvideo/views/ActionContainerView;Landroid/view/View;)V

    .line 338
    :goto_0
    invoke-virtual {p1, v9}, Landroid/view/View;->setEnabled(Z)V

    .line 339
    new-instance v3, Lcom/samsung/milk/milkvideo/views/ActionContainerView$ShareClickListener$1;

    invoke-direct {v3, p0, p1}, Lcom/samsung/milk/milkvideo/views/ActionContainerView$ShareClickListener$1;-><init>(Lcom/samsung/milk/milkvideo/views/ActionContainerView$ShareClickListener;Landroid/view/View;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {p1, v3, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 345
    return-void

    .line 325
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 326
    .local v1, "shareIntent":Landroid/content/Intent;
    const-string v3, "plain/text"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 327
    iget-object v3, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView$ShareClickListener;->this$0:Lcom/samsung/milk/milkvideo/views/ActionContainerView;

    iget-object v3, v3, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->loginState:Lcom/samsung/milk/milkvideo/services/LoginState;

    invoke-virtual {v3}, Lcom/samsung/milk/milkvideo/services/LoginState;->getCurrentUser()Lcom/samsung/milk/milkvideo/models/User;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/milk/milkvideo/models/User;->getUsername()Ljava/lang/String;

    move-result-object v0

    .line 328
    .local v0, "currentUserName":Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView$ShareClickListener;->this$0:Lcom/samsung/milk/milkvideo/views/ActionContainerView;

    iget-object v3, v3, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->loginState:Lcom/samsung/milk/milkvideo/services/LoginState;

    invoke-virtual {v3}, Lcom/samsung/milk/milkvideo/services/LoginState;->getCurrentUserUuid()Ljava/lang/String;

    move-result-object v2

    .line 329
    .local v2, "uuid":Ljava/lang/String;
    const-string v3, "android.intent.extra.TEXT"

    const-string v4, "%s %s"

    new-array v5, v11, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView$ShareClickListener;->this$0:Lcom/samsung/milk/milkvideo/views/ActionContainerView;

    # getter for: Lcom/samsung/milk/milkvideo/views/ActionContainerView;->video:Lcom/samsung/milk/milkvideo/models/Video;
    invoke-static {v6}, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->access$400(Lcom/samsung/milk/milkvideo/views/ActionContainerView;)Lcom/samsung/milk/milkvideo/models/Video;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/milk/milkvideo/models/Video;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView$ShareClickListener;->this$0:Lcom/samsung/milk/milkvideo/views/ActionContainerView;

    # getter for: Lcom/samsung/milk/milkvideo/views/ActionContainerView;->video:Lcom/samsung/milk/milkvideo/models/Video;
    invoke-static {v7}, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->access$400(Lcom/samsung/milk/milkvideo/views/ActionContainerView;)Lcom/samsung/milk/milkvideo/models/Video;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/milk/milkvideo/models/Video;->getShareableUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "?uuid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    const/16 v8, 0x8

    invoke-static {v7, v8}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 331
    const-string v3, "android.intent.extra.SUBJECT"

    const-string v4, "%s shared a video with you via %s"

    new-array v5, v11, [Ljava/lang/Object;

    aput-object v0, v5, v9

    const-string v6, "Milk Video"

    aput-object v6, v5, v10

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 332
    const-string v3, "text/plain"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 333
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "Share Video"

    invoke-static {v1, v4}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 334
    iget-object v3, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView$ShareClickListener;->this$0:Lcom/samsung/milk/milkvideo/views/ActionContainerView;

    iget-object v3, v3, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->tracker:Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;

    iget-object v4, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView$ShareClickListener;->this$0:Lcom/samsung/milk/milkvideo/views/ActionContainerView;

    # getter for: Lcom/samsung/milk/milkvideo/views/ActionContainerView;->video:Lcom/samsung/milk/milkvideo/models/Video;
    invoke-static {v4}, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->access$400(Lcom/samsung/milk/milkvideo/views/ActionContainerView;)Lcom/samsung/milk/milkvideo/models/Video;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/milk/milkvideo/models/Video;->getEmbedCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;->sendShareEvent(Ljava/lang/String;)V

    .line 335
    iget-object v3, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView$ShareClickListener;->this$0:Lcom/samsung/milk/milkvideo/views/ActionContainerView;

    iget-object v3, v3, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->googleTracker:Lcom/samsung/milk/milkvideo/analytics/GoogleAnalyticsTracker;

    invoke-virtual {v3}, Lcom/samsung/milk/milkvideo/analytics/GoogleAnalyticsTracker;->sendUserEngagedEvent()V

    .line 336
    iget-object v3, p0, Lcom/samsung/milk/milkvideo/views/ActionContainerView$ShareClickListener;->this$0:Lcom/samsung/milk/milkvideo/views/ActionContainerView;

    iget-object v3, v3, Lcom/samsung/milk/milkvideo/views/ActionContainerView;->appsFlyerTracker:Lcom/samsung/milk/milkvideo/analytics/AppsFlyerTracker;

    invoke-virtual {v3}, Lcom/samsung/milk/milkvideo/analytics/AppsFlyerTracker;->sendVideoShareEvent()V

    goto/16 :goto_0
.end method
