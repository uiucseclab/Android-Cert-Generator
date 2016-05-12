.class Lcom/samsung/milk/milkvideo/fragments/ProfileFragment$10;
.super Ljava/lang/Object;
.source "ProfileFragment.java"

# interfaces
.implements Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$OnTabClickedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->setupCondensableHeader(Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$Tab;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;


# direct methods
.method constructor <init>(Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;)V
    .locals 0

    .prologue
    .line 402
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment$10;->this$0:Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRepostsButtonClicked()V
    .locals 2

    .prologue
    .line 405
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment$10;->this$0:Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment$10;->this$0:Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;

    iget-object v1, v1, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->loginState:Lcom/samsung/milk/milkvideo/services/LoginState;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/services/LoginState;->getCurrentUserUuid()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->populateRepostsFeed(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->access$600(Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;Ljava/lang/String;)V

    .line 406
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment$10;->this$0:Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;

    # getter for: Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->header:Lcom/samsung/milk/milkvideo/views/ProfileListHeader;
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->access$700(Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;)Lcom/samsung/milk/milkvideo/views/ProfileListHeader;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/views/MyProfileListHeader;

    sget-object v1, Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$Tab;->REPOSTS:Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$Tab;

    invoke-virtual {v0, v1}, Lcom/samsung/milk/milkvideo/views/MyProfileListHeader;->setCurrentTab(Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$Tab;)V

    .line 407
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment$10;->this$0:Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->condensableHeader:Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;->reset()V

    .line 408
    return-void
.end method

.method public onStarredButtonClicked()V
    .locals 2

    .prologue
    .line 412
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment$10;->this$0:Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment$10;->this$0:Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;

    iget-object v1, v1, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->loginState:Lcom/samsung/milk/milkvideo/services/LoginState;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/services/LoginState;->getCurrentUserUuid()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->populateStarredFeed(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->access$800(Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;Ljava/lang/String;)V

    .line 413
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment$10;->this$0:Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;

    # getter for: Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->header:Lcom/samsung/milk/milkvideo/views/ProfileListHeader;
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->access$700(Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;)Lcom/samsung/milk/milkvideo/views/ProfileListHeader;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/views/MyProfileListHeader;

    sget-object v1, Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$Tab;->STARRED:Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$Tab;

    invoke-virtual {v0, v1}, Lcom/samsung/milk/milkvideo/views/MyProfileListHeader;->setCurrentTab(Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$Tab;)V

    .line 414
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment$10;->this$0:Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->condensableHeader:Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;->reset()V

    .line 415
    return-void
.end method
