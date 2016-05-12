.class Lcom/samsung/milk/milkvideo/views/MyProfileListHeader$2;
.super Ljava/lang/Object;
.source "MyProfileListHeader.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/milk/milkvideo/views/MyProfileListHeader;->setupListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/milk/milkvideo/views/MyProfileListHeader;


# direct methods
.method constructor <init>(Lcom/samsung/milk/milkvideo/views/MyProfileListHeader;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/views/MyProfileListHeader$2;->this$0:Lcom/samsung/milk/milkvideo/views/MyProfileListHeader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/MyProfileListHeader$2;->this$0:Lcom/samsung/milk/milkvideo/views/MyProfileListHeader;

    iget-object v1, v0, Lcom/samsung/milk/milkvideo/views/MyProfileListHeader;->currentBlurBackground:Lcom/samsung/milk/milkvideo/utils/CurrentBlurBackground;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v1, v0}, Lcom/samsung/milk/milkvideo/utils/CurrentBlurBackground;->setBlurredBackground(Landroid/app/Activity;)V

    .line 73
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$FragmentType;->FOLLOWING:Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$FragmentType;

    invoke-static {v0, v1}, Lcom/samsung/milk/milkvideo/activity/FollowsActivity;->start(Landroid/content/Context;Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$FragmentType;)V

    .line 74
    return-void
.end method
