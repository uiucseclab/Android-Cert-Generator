.class public Lcom/samsung/milk/milkvideo/activity/SignoutConfirmationActivity;
.super Lcom/samsung/milk/milkvideo/activity/BaseNachosActivity;
.source "SignoutConfirmationActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/activity/BaseNachosActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 24
    invoke-super {p0}, Lcom/samsung/milk/milkvideo/activity/BaseNachosActivity;->onBackPressed()V

    .line 25
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/activity/SignoutConfirmationActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 26
    const/high16 v0, 0x10a0000

    const v1, 0x7f04000c

    invoke-virtual {p0, v0, v1}, Lcom/samsung/milk/milkvideo/activity/SignoutConfirmationActivity;->overridePendingTransition(II)V

    .line 27
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 10
    invoke-super {p0, p1}, Lcom/samsung/milk/milkvideo/activity/BaseNachosActivity;->onCreate(Landroid/os/Bundle;)V

    .line 11
    const v0, 0x7f03000c

    invoke-virtual {p0, v0}, Lcom/samsung/milk/milkvideo/activity/SignoutConfirmationActivity;->setContentView(I)V

    .line 13
    if-nez p1, :cond_0

    .line 14
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/activity/SignoutConfirmationActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f06003a

    invoke-static {}, Lcom/samsung/milk/milkvideo/fragments/SignoutConfirmationFragment;->newInstance()Lcom/samsung/milk/milkvideo/fragments/SignoutConfirmationFragment;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 19
    :cond_0
    const v0, 0x7f040007

    const v1, 0x10a0001

    invoke-virtual {p0, v0, v1}, Lcom/samsung/milk/milkvideo/activity/SignoutConfirmationActivity;->overridePendingTransition(II)V

    .line 20
    return-void
.end method
