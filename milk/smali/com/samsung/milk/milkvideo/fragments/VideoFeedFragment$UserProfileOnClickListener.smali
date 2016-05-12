.class Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment$UserProfileOnClickListener;
.super Ljava/lang/Object;
.source "VideoFeedFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UserProfileOnClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;


# direct methods
.method private constructor <init>(Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;)V
    .locals 0

    .prologue
    .line 451
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment$UserProfileOnClickListener;->this$0:Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;
    .param p2, "x1"    # Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment$1;

    .prologue
    .line 451
    invoke-direct {p0, p1}, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment$UserProfileOnClickListener;-><init>(Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 454
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment$UserProfileOnClickListener;->this$0:Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->loginState:Lcom/samsung/milk/milkvideo/services/LoginState;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/services/LoginState;->isHardLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment$UserProfileOnClickListener;->this$0:Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment$UserProfileOnClickListener;->this$0:Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;

    iget-object v1, v1, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->loginState:Lcom/samsung/milk/milkvideo/services/LoginState;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/services/LoginState;->getCurrentUser()Lcom/samsung/milk/milkvideo/models/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/models/User;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/milk/milkvideo/activity/ProfileActivity;->start(Landroid/content/Context;Ljava/lang/String;)V

    .line 460
    :goto_0
    return-void

    .line 457
    :cond_0
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment$UserProfileOnClickListener;->this$0:Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->currentBlurBackground:Lcom/samsung/milk/milkvideo/utils/CurrentBlurBackground;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment$UserProfileOnClickListener;->this$0:Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/milk/milkvideo/utils/CurrentBlurBackground;->setBlurredBackground(Landroid/app/Activity;)V

    .line 458
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment$UserProfileOnClickListener;->this$0:Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/milk/milkvideo/activity/SignupUserActivity;->start(Landroid/content/Context;Z)V

    goto :goto_0
.end method
