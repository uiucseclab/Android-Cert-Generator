.class Lcom/samsung/milk/milkvideo/fragments/WelcomeFollowFriendsFragment$1;
.super Ljava/lang/Object;
.source "WelcomeFollowFriendsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/milk/milkvideo/fragments/WelcomeFollowFriendsFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/milk/milkvideo/fragments/WelcomeFollowFriendsFragment;

.field final synthetic val$doneButton:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/samsung/milk/milkvideo/fragments/WelcomeFollowFriendsFragment;Landroid/widget/Button;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/fragments/WelcomeFollowFriendsFragment$1;->this$0:Lcom/samsung/milk/milkvideo/fragments/WelcomeFollowFriendsFragment;

    iput-object p2, p0, Lcom/samsung/milk/milkvideo/fragments/WelcomeFollowFriendsFragment$1;->val$doneButton:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 59
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/WelcomeFollowFriendsFragment$1;->val$doneButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 60
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/WelcomeFollowFriendsFragment$1;->this$0:Lcom/samsung/milk/milkvideo/fragments/WelcomeFollowFriendsFragment;

    iget-object v1, v1, Lcom/samsung/milk/milkvideo/fragments/WelcomeFollowFriendsFragment;->friendsListAdapter:Lcom/samsung/milk/milkvideo/adapters/BrandGridAdapter;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/adapters/BrandGridAdapter;->getSelectedList()Ljava/util/Collection;

    move-result-object v1

    new-instance v2, Lcom/samsung/milk/milkvideo/fragments/WelcomeFollowFriendsFragment$1$1;

    invoke-direct {v2, p0}, Lcom/samsung/milk/milkvideo/fragments/WelcomeFollowFriendsFragment$1$1;-><init>(Lcom/samsung/milk/milkvideo/fragments/WelcomeFollowFriendsFragment$1;)V

    invoke-static {v1, v2}, Lcom/google/common/collect/Collections2;->transform(Ljava/util/Collection;Lcom/google/common/base/Function;)Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 67
    .local v0, "uuids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/WelcomeFollowFriendsFragment$1;->this$0:Lcom/samsung/milk/milkvideo/fragments/WelcomeFollowFriendsFragment;

    iget-object v1, v1, Lcom/samsung/milk/milkvideo/fragments/WelcomeFollowFriendsFragment;->nachosRestService:Lcom/samsung/milk/milkvideo/api/NachosRestService;

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/fragments/WelcomeFollowFriendsFragment$1;->this$0:Lcom/samsung/milk/milkvideo/fragments/WelcomeFollowFriendsFragment;

    iget-object v2, v2, Lcom/samsung/milk/milkvideo/fragments/WelcomeFollowFriendsFragment;->loginState:Lcom/samsung/milk/milkvideo/services/LoginState;

    invoke-virtual {v2}, Lcom/samsung/milk/milkvideo/services/LoginState;->getCurrentUserUuid()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/samsung/milk/milkvideo/api/MultipleUserFollowRequest;

    invoke-direct {v3, v0}, Lcom/samsung/milk/milkvideo/api/MultipleUserFollowRequest;-><init>(Ljava/util/List;)V

    new-instance v4, Lcom/samsung/milk/milkvideo/fragments/WelcomeFollowFriendsFragment$1$2;

    invoke-direct {v4, p0}, Lcom/samsung/milk/milkvideo/fragments/WelcomeFollowFriendsFragment$1$2;-><init>(Lcom/samsung/milk/milkvideo/fragments/WelcomeFollowFriendsFragment$1;)V

    invoke-interface {v1, v2, v3, v4}, Lcom/samsung/milk/milkvideo/api/NachosRestService;->followUsers(Ljava/lang/String;Lcom/samsung/milk/milkvideo/api/MultipleUserFollowRequest;Lretrofit/ResponseCallback;)V

    .line 83
    return-void
.end method
