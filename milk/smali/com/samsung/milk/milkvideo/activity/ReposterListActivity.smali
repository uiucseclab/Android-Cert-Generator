.class public Lcom/samsung/milk/milkvideo/activity/ReposterListActivity;
.super Lcom/samsung/milk/milkvideo/activity/BaseNachosActivity;
.source "ReposterListActivity.java"


# static fields
.field public static REPOSTER_LIST_VIDEO_ID:Ljava/lang/String;


# instance fields
.field currentBlurBackground:Lcom/samsung/milk/milkvideo/utils/CurrentBlurBackground;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-string v0, "REPOSTER_LIST_VIDEO_ID"

    sput-object v0, Lcom/samsung/milk/milkvideo/activity/ReposterListActivity;->REPOSTER_LIST_VIDEO_ID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/activity/BaseNachosActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 17
    invoke-super {p0, p1}, Lcom/samsung/milk/milkvideo/activity/BaseNachosActivity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    const v2, 0x7f03000f

    invoke-virtual {p0, v2}, Lcom/samsung/milk/milkvideo/activity/ReposterListActivity;->setContentView(I)V

    .line 20
    if-nez p1, :cond_0

    .line 21
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/activity/ReposterListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    sget-object v3, Lcom/samsung/milk/milkvideo/activity/ReposterListActivity;->REPOSTER_LIST_VIDEO_ID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 22
    .local v1, "videoId":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/activity/ReposterListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "FOLLOW_FRAGMENT_TYPE"

    sget-object v4, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$FragmentType;->REPOSTERS:Lcom/samsung/milk/milkvideo/fragments/FollowsFragment$FragmentType;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 23
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/activity/ReposterListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "FOLLOW_FRAGMENT_UUID"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 25
    invoke-static {}, Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;->newInstance()Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;

    move-result-object v0

    .line 27
    .local v0, "followsFragment":Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/activity/ReposterListActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    const v3, 0x7f06003d

    invoke-virtual {v2, v3, v0}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 33
    .end local v0    # "followsFragment":Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;
    .end local v1    # "videoId":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/activity/ReposterListActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/milk/milkvideo/activity/ReposterListActivity;->currentBlurBackground:Lcom/samsung/milk/milkvideo/utils/CurrentBlurBackground;

    invoke-virtual {v3}, Lcom/samsung/milk/milkvideo/utils/CurrentBlurBackground;->getBlurredBackground()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 34
    return-void
.end method
