.class Lcom/samsung/milk/milkvideo/fragments/ProfileFragment$6;
.super Ljava/lang/Object;
.source "ProfileFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 369
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment$6;->this$0:Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 372
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment$6;->this$0:Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->currentBlurBackground:Lcom/samsung/milk/milkvideo/utils/CurrentBlurBackground;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment$6;->this$0:Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/milk/milkvideo/utils/CurrentBlurBackground;->setBlurredBackground(Landroid/app/Activity;)V

    .line 373
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment$6;->this$0:Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/milk/milkvideo/activity/SettingsActivity;->start(Landroid/content/Context;)V

    .line 374
    return-void
.end method
