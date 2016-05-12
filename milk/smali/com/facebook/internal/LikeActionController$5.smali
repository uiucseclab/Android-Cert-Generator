.class Lcom/facebook/internal/LikeActionController$5;
.super Ljava/lang/Object;
.source "LikeActionController.java"

# interfaces
.implements Lcom/facebook/widget/FacebookDialog$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/internal/LikeActionController;->getFacebookDialogCallback(Landroid/os/Bundle;)Lcom/facebook/widget/FacebookDialog$Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/internal/LikeActionController;

.field final synthetic val$analyticsParameters:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/facebook/internal/LikeActionController;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "this$0"    # Lcom/facebook/internal/LikeActionController;

    .prologue
    .line 683
    iput-object p1, p0, Lcom/facebook/internal/LikeActionController$5;->this$0:Lcom/facebook/internal/LikeActionController;

    iput-object p2, p0, Lcom/facebook/internal/LikeActionController$5;->val$analyticsParameters:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/facebook/widget/FacebookDialog$PendingCall;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "pendingCall"    # Lcom/facebook/widget/FacebookDialog$PendingCall;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 686
    const-string v0, "object_is_liked"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 707
    :goto_0
    return-void

    .line 691
    :cond_0
    const-string v0, "object_is_liked"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 692
    .local v1, "isObjectLiked":Z
    const-string v0, "like_count_string"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 693
    .local v2, "likeCountString":Ljava/lang/String;
    const-string v0, "social_sentence"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 694
    .local v4, "socialSentence":Ljava/lang/String;
    const-string v0, "unlike_token"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 696
    .local v6, "unlikeToken":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/internal/LikeActionController$5;->val$analyticsParameters:Landroid/os/Bundle;

    if-nez v0, :cond_1

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 697
    .local v7, "logParams":Landroid/os/Bundle;
    :goto_1
    const-string v0, "call_id"

    invoke-virtual {p1}, Lcom/facebook/widget/FacebookDialog$PendingCall;->getCallId()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    iget-object v0, p0, Lcom/facebook/internal/LikeActionController$5;->this$0:Lcom/facebook/internal/LikeActionController;

    # getter for: Lcom/facebook/internal/LikeActionController;->appEventsLogger:Lcom/facebook/AppEventsLogger;
    invoke-static {v0}, Lcom/facebook/internal/LikeActionController;->access$800(Lcom/facebook/internal/LikeActionController;)Lcom/facebook/AppEventsLogger;

    move-result-object v0

    const-string v3, "fb_like_control_dialog_did_succeed"

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v5, v7}, Lcom/facebook/AppEventsLogger;->logSdkEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    .line 700
    iget-object v0, p0, Lcom/facebook/internal/LikeActionController$5;->this$0:Lcom/facebook/internal/LikeActionController;

    move-object v3, v2

    move-object v5, v4

    # invokes: Lcom/facebook/internal/LikeActionController;->updateState(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v0 .. v6}, Lcom/facebook/internal/LikeActionController;->access$900(Lcom/facebook/internal/LikeActionController;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 696
    .end local v7    # "logParams":Landroid/os/Bundle;
    :cond_1
    iget-object v7, p0, Lcom/facebook/internal/LikeActionController$5;->val$analyticsParameters:Landroid/os/Bundle;

    goto :goto_1
.end method

.method public onError(Lcom/facebook/widget/FacebookDialog$PendingCall;Ljava/lang/Exception;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "pendingCall"    # Lcom/facebook/widget/FacebookDialog$PendingCall;
    .param p2, "error"    # Ljava/lang/Exception;
    .param p3, "data"    # Landroid/os/Bundle;

    .prologue
    .line 711
    sget-object v1, Lcom/facebook/LoggingBehavior;->REQUESTS:Lcom/facebook/LoggingBehavior;

    # getter for: Lcom/facebook/internal/LikeActionController;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/facebook/internal/LikeActionController;->access$1000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Like Dialog failed with error : %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 713
    iget-object v1, p0, Lcom/facebook/internal/LikeActionController$5;->val$analyticsParameters:Landroid/os/Bundle;

    if-nez v1, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 714
    .local v0, "logParams":Landroid/os/Bundle;
    :goto_0
    const-string v1, "call_id"

    invoke-virtual {p1}, Lcom/facebook/widget/FacebookDialog$PendingCall;->getCallId()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    iget-object v1, p0, Lcom/facebook/internal/LikeActionController$5;->this$0:Lcom/facebook/internal/LikeActionController;

    const-string v2, "present_dialog"

    # invokes: Lcom/facebook/internal/LikeActionController;->logAppEventForError(Ljava/lang/String;Landroid/os/Bundle;)V
    invoke-static {v1, v2, v0}, Lcom/facebook/internal/LikeActionController;->access$1100(Lcom/facebook/internal/LikeActionController;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 719
    iget-object v1, p0, Lcom/facebook/internal/LikeActionController$5;->this$0:Lcom/facebook/internal/LikeActionController;

    # getter for: Lcom/facebook/internal/LikeActionController;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/facebook/internal/LikeActionController;->access$1200(Lcom/facebook/internal/LikeActionController;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/internal/LikeActionController$5;->this$0:Lcom/facebook/internal/LikeActionController;

    const-string v3, "com.facebook.sdk.LikeActionController.DID_ERROR"

    # invokes: Lcom/facebook/internal/LikeActionController;->broadcastAction(Landroid/content/Context;Lcom/facebook/internal/LikeActionController;Ljava/lang/String;Landroid/os/Bundle;)V
    invoke-static {v1, v2, v3, p3}, Lcom/facebook/internal/LikeActionController;->access$1300(Landroid/content/Context;Lcom/facebook/internal/LikeActionController;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 720
    return-void

    .line 713
    .end local v0    # "logParams":Landroid/os/Bundle;
    :cond_0
    iget-object v0, p0, Lcom/facebook/internal/LikeActionController$5;->val$analyticsParameters:Landroid/os/Bundle;

    goto :goto_0
.end method
