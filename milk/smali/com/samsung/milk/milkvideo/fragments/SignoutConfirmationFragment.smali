.class public Lcom/samsung/milk/milkvideo/fragments/SignoutConfirmationFragment;
.super Lcom/samsung/milk/milkvideo/fragments/BaseNachosFragment;
.source "SignoutConfirmationFragment.java"


# instance fields
.field loginState:Lcom/samsung/milk/milkvideo/services/LoginState;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field nachosRestService:Lcom/samsung/milk/milkvideo/api/NachosRestService;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field tracker:Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/fragments/BaseNachosFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/milk/milkvideo/fragments/SignoutConfirmationFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/fragments/SignoutConfirmationFragment;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/fragments/SignoutConfirmationFragment;->signout()V

    return-void
.end method

.method public static newInstance()Lcom/samsung/milk/milkvideo/fragments/SignoutConfirmationFragment;
    .locals 1

    .prologue
    .line 74
    new-instance v0, Lcom/samsung/milk/milkvideo/fragments/SignoutConfirmationFragment;

    invoke-direct {v0}, Lcom/samsung/milk/milkvideo/fragments/SignoutConfirmationFragment;-><init>()V

    return-object v0
.end method

.method private signout()V
    .locals 3

    .prologue
    .line 53
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/SignoutConfirmationFragment;->nachosRestService:Lcom/samsung/milk/milkvideo/api/NachosRestService;

    new-instance v2, Lcom/samsung/milk/milkvideo/fragments/SignoutConfirmationFragment$3;

    invoke-direct {v2, p0}, Lcom/samsung/milk/milkvideo/fragments/SignoutConfirmationFragment$3;-><init>(Lcom/samsung/milk/milkvideo/fragments/SignoutConfirmationFragment;)V

    invoke-interface {v1, v2}, Lcom/samsung/milk/milkvideo/api/NachosRestService;->signOut(Lretrofit/ResponseCallback;)V

    .line 64
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/SignoutConfirmationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V

    .line 65
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/SignoutConfirmationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 67
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/SignoutConfirmationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/Session;->openActiveSessionFromCache(Landroid/content/Context;)Lcom/facebook/Session;

    move-result-object v0

    .line 68
    .local v0, "session":Lcom/facebook/Session;
    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {v0}, Lcom/facebook/Session;->closeAndClearTokenInformation()V

    .line 71
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 27
    const v0, 0x7f03003b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 32
    invoke-super {p0, p1, p2}, Lcom/samsung/milk/milkvideo/fragments/BaseNachosFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 34
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/SignoutConfirmationFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0600b2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 35
    .local v0, "cancelButton":Landroid/widget/Button;
    new-instance v2, Lcom/samsung/milk/milkvideo/fragments/SignoutConfirmationFragment$1;

    invoke-direct {v2, p0}, Lcom/samsung/milk/milkvideo/fragments/SignoutConfirmationFragment$1;-><init>(Lcom/samsung/milk/milkvideo/fragments/SignoutConfirmationFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/SignoutConfirmationFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0600a3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 44
    .local v1, "signoutButton":Landroid/widget/Button;
    new-instance v2, Lcom/samsung/milk/milkvideo/fragments/SignoutConfirmationFragment$2;

    invoke-direct {v2, p0}, Lcom/samsung/milk/milkvideo/fragments/SignoutConfirmationFragment$2;-><init>(Lcom/samsung/milk/milkvideo/fragments/SignoutConfirmationFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    return-void
.end method
