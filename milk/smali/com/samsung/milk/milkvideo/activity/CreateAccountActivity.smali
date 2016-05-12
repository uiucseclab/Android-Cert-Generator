.class public Lcom/samsung/milk/milkvideo/activity/CreateAccountActivity;
.super Lcom/samsung/milk/milkvideo/activity/BaseNachosActivity;
.source "CreateAccountActivity.java"


# static fields
.field public static LOGIN_METHOD_KEY:Ljava/lang/String;

.field public static SOCIAL_NETWORK_TOKEN_KEY:Ljava/lang/String;


# instance fields
.field currentBlurBackground:Lcom/samsung/milk/milkvideo/utils/CurrentBlurBackground;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "socialNetworkTokenKey"

    sput-object v0, Lcom/samsung/milk/milkvideo/activity/CreateAccountActivity;->SOCIAL_NETWORK_TOKEN_KEY:Ljava/lang/String;

    .line 20
    const-string v0, "loginMethodKey"

    sput-object v0, Lcom/samsung/milk/milkvideo/activity/CreateAccountActivity;->LOGIN_METHOD_KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/activity/BaseNachosActivity;-><init>()V

    return-void
.end method

.method public static start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "loginMethod"    # Ljava/lang/String;
    .param p3, "apiUrl"    # Ljava/lang/String;

    .prologue
    .line 58
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/milk/milkvideo/activity/CreateAccountActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 59
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/samsung/milk/milkvideo/activity/CreateAccountActivity;->SOCIAL_NETWORK_TOKEN_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    sget-object v1, Lcom/samsung/milk/milkvideo/activity/CreateAccountActivity;->LOGIN_METHOD_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    const-string v1, "api_server_url"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 63
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 53
    invoke-super {p0}, Lcom/samsung/milk/milkvideo/activity/BaseNachosActivity;->onBackPressed()V

    .line 54
    const/high16 v0, 0x10a0000

    const v1, 0x7f04000b

    invoke-virtual {p0, v0, v1}, Lcom/samsung/milk/milkvideo/activity/CreateAccountActivity;->overridePendingTransition(II)V

    .line 55
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/samsung/milk/milkvideo/activity/BaseNachosActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    const/high16 v2, 0x7f030000

    invoke-virtual {p0, v2}, Lcom/samsung/milk/milkvideo/activity/CreateAccountActivity;->setContentView(I)V

    .line 29
    if-nez p1, :cond_1

    .line 30
    const/4 v0, 0x0

    .line 31
    .local v0, "fragment":Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/activity/CreateAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    sget-object v3, Lcom/samsung/milk/milkvideo/activity/CreateAccountActivity;->LOGIN_METHOD_KEY:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 32
    .local v1, "loginMethod":Ljava/lang/String;
    const-string v2, "facebook"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 33
    invoke-static {}, Lcom/samsung/milk/milkvideo/fragments/userinfo/FacebookUserInfoFragment;->newInstance()Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;

    move-result-object v0

    .line 39
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/activity/CreateAccountActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    const v3, 0x7f06002d

    invoke-virtual {v2, v3, v0}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 45
    .end local v0    # "fragment":Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;
    .end local v1    # "loginMethod":Ljava/lang/String;
    :cond_1
    invoke-static {p0}, Lcom/samsung/milk/milkvideo/utils/ScreenResizeHelper;->setFullscreenResizable(Landroid/app/Activity;)V

    .line 47
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/activity/CreateAccountActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/milk/milkvideo/activity/CreateAccountActivity;->currentBlurBackground:Lcom/samsung/milk/milkvideo/utils/CurrentBlurBackground;

    invoke-virtual {v3}, Lcom/samsung/milk/milkvideo/utils/CurrentBlurBackground;->getBlurredBackground()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 48
    const v2, 0x7f04000a

    const v3, 0x10a0001

    invoke-virtual {p0, v2, v3}, Lcom/samsung/milk/milkvideo/activity/CreateAccountActivity;->overridePendingTransition(II)V

    .line 49
    return-void

    .line 34
    .restart local v0    # "fragment":Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;
    .restart local v1    # "loginMethod":Ljava/lang/String;
    :cond_2
    const-string v2, "google"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 35
    invoke-static {}, Lcom/samsung/milk/milkvideo/fragments/userinfo/GooglePlusUserInfoFragment;->newInstance()Lcom/samsung/milk/milkvideo/fragments/userinfo/GooglePlusUserInfoFragment;

    move-result-object v0

    goto :goto_0

    .line 36
    :cond_3
    const-string v2, "samsung"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 37
    invoke-static {}, Lcom/samsung/milk/milkvideo/fragments/userinfo/SamsungAccountUserInfoFragment;->newInstance()Lcom/samsung/milk/milkvideo/fragments/userinfo/SamsungAccountUserInfoFragment;

    move-result-object v0

    goto :goto_0
.end method
