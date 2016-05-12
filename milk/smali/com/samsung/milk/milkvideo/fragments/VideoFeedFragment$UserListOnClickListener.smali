.class Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment$UserListOnClickListener;
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
    name = "UserListOnClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;


# direct methods
.method private constructor <init>(Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;)V
    .locals 0

    .prologue
    .line 463
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment$UserListOnClickListener;->this$0:Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;
    .param p2, "x1"    # Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment$1;

    .prologue
    .line 463
    invoke-direct {p0, p1}, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment$UserListOnClickListener;-><init>(Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 466
    if-nez p1, :cond_0

    .line 473
    :goto_0
    return-void

    .line 470
    :cond_0
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment$UserListOnClickListener;->this$0:Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;

    iget-object v1, v1, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->currentBlurBackground:Lcom/samsung/milk/milkvideo/utils/CurrentBlurBackground;

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment$UserListOnClickListener;->this$0:Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;

    invoke-virtual {v2}, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/milk/milkvideo/utils/CurrentBlurBackground;->setBlurredBackground(Landroid/app/Activity;)V

    .line 471
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/samsung/milk/milkvideo/activity/UserListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 472
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment$UserListOnClickListener;->this$0:Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;

    invoke-virtual {v1, v0}, Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
