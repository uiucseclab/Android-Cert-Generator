.class public Lcom/samsung/milk/milkvideo/activity/LegalActivity;
.super Lcom/samsung/milk/milkvideo/activity/BaseNachosActivity;
.source "LegalActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/milk/milkvideo/activity/LegalActivity$LegalType;
    }
.end annotation


# static fields
.field public static final LEGAL_TYPE_EXTRA:Ljava/lang/String; = "legal_type"


# instance fields
.field currentBlurBackground:Lcom/samsung/milk/milkvideo/utils/CurrentBlurBackground;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/activity/BaseNachosActivity;-><init>()V

    .line 17
    return-void
.end method

.method public static start(Landroid/content/Context;Lcom/samsung/milk/milkvideo/activity/LegalActivity$LegalType;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Lcom/samsung/milk/milkvideo/activity/LegalActivity$LegalType;

    .prologue
    .line 44
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/milk/milkvideo/activity/LegalActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 45
    .local v0, "termsAndConditionsActivity":Landroid/content/Intent;
    const-string v1, "legal_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 46
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 47
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 39
    invoke-super {p0}, Lcom/samsung/milk/milkvideo/activity/BaseNachosActivity;->onBackPressed()V

    .line 40
    const/high16 v0, 0x10a0000

    const v1, 0x7f04000b

    invoke-virtual {p0, v0, v1}, Lcom/samsung/milk/milkvideo/activity/LegalActivity;->overridePendingTransition(II)V

    .line 41
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 23
    invoke-super {p0, p1}, Lcom/samsung/milk/milkvideo/activity/BaseNachosActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    const v0, 0x7f03000e

    invoke-virtual {p0, v0}, Lcom/samsung/milk/milkvideo/activity/LegalActivity;->setContentView(I)V

    .line 26
    if-nez p1, :cond_0

    .line 27
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/activity/LegalActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f06003c

    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/activity/LegalActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/milk/milkvideo/fragments/LegalFragment;->newInstance(Landroid/os/Bundle;)Lcom/samsung/milk/milkvideo/fragments/LegalFragment;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 33
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/activity/LegalActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/activity/LegalActivity;->currentBlurBackground:Lcom/samsung/milk/milkvideo/utils/CurrentBlurBackground;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/utils/CurrentBlurBackground;->getBlurredBackground()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 34
    const v0, 0x7f04000a

    const v1, 0x10a0001

    invoke-virtual {p0, v0, v1}, Lcom/samsung/milk/milkvideo/activity/LegalActivity;->overridePendingTransition(II)V

    .line 35
    return-void
.end method
