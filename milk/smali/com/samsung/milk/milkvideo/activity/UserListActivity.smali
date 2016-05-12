.class public Lcom/samsung/milk/milkvideo/activity/UserListActivity;
.super Lcom/samsung/milk/milkvideo/activity/BaseNachosActivity;
.source "UserListActivity.java"


# instance fields
.field currentBlurBackground:Lcom/samsung/milk/milkvideo/utils/CurrentBlurBackground;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/activity/BaseNachosActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 15
    invoke-super {p0, p1}, Lcom/samsung/milk/milkvideo/activity/BaseNachosActivity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    const v0, 0x7f03000f

    invoke-virtual {p0, v0}, Lcom/samsung/milk/milkvideo/activity/UserListActivity;->setContentView(I)V

    .line 18
    if-nez p1, :cond_0

    .line 19
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/activity/UserListActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f06003d

    invoke-static {}, Lcom/samsung/milk/milkvideo/fragments/UserListFragment;->newInstance()Lcom/samsung/milk/milkvideo/fragments/UserListFragment;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 25
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/activity/UserListActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/activity/UserListActivity;->currentBlurBackground:Lcom/samsung/milk/milkvideo/utils/CurrentBlurBackground;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/utils/CurrentBlurBackground;->getBlurredBackground()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 26
    return-void
.end method
