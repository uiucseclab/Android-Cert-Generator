.class public Lcom/samsung/milk/milkvideo/fragments/WelcomeFragment;
.super Lcom/samsung/milk/milkvideo/fragments/BaseNachosFragment;
.source "WelcomeFragment.java"


# instance fields
.field adapter:Lcom/samsung/milk/milkvideo/adapters/BrandGridAdapter;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field loginState:Lcom/samsung/milk/milkvideo/services/LoginState;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field restService:Lcom/samsung/milk/milkvideo/api/NachosRestService;
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
    .line 31
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/fragments/BaseNachosFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/milk/milkvideo/fragments/WelcomeFragment;Lcom/samsung/milk/milkvideo/models/User;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/fragments/WelcomeFragment;
    .param p1, "x1"    # Lcom/samsung/milk/milkvideo/models/User;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/samsung/milk/milkvideo/fragments/WelcomeFragment;->isVolt(Lcom/samsung/milk/milkvideo/models/User;)Z

    move-result v0

    return v0
.end method

.method private isVolt(Lcom/samsung/milk/milkvideo/models/User;)Z
    .locals 2
    .param p1, "user"    # Lcom/samsung/milk/milkvideo/models/User;

    .prologue
    .line 44
    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/models/User;->getUuid()Ljava/lang/String;

    move-result-object v0

    const-string v1, "224259b7-496a-4342-a865-9439ef89a1be"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static newInstance()Lcom/samsung/milk/milkvideo/fragments/WelcomeFragment;
    .locals 1

    .prologue
    .line 127
    new-instance v0, Lcom/samsung/milk/milkvideo/fragments/WelcomeFragment;

    invoke-direct {v0}, Lcom/samsung/milk/milkvideo/fragments/WelcomeFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected nextButtonId()I
    .locals 1

    .prologue
    .line 115
    const v0, 0x7f0600d7

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 40
    const v0, 0x7f030044

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onDone(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 119
    .local p1, "uuids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/WelcomeFragment;->tracker:Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;

    invoke-virtual {v0, p1}, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;->sendChannelFollowedOnboardingEvent(Ljava/util/List;)V

    .line 120
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 49
    invoke-super {p0, p1, p2}, Lcom/samsung/milk/milkvideo/fragments/BaseNachosFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/WelcomeFragment;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f06008f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 52
    .local v2, "spinner":Landroid/view/View;
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/WelcomeFragment;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0600d4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    .line 54
    .local v0, "brands":Landroid/widget/GridView;
    iget-object v3, p0, Lcom/samsung/milk/milkvideo/fragments/WelcomeFragment;->adapter:Lcom/samsung/milk/milkvideo/adapters/BrandGridAdapter;

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 55
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 57
    iget-object v3, p0, Lcom/samsung/milk/milkvideo/fragments/WelcomeFragment;->restService:Lcom/samsung/milk/milkvideo/api/NachosRestService;

    new-instance v4, Lcom/samsung/milk/milkvideo/fragments/WelcomeFragment$1;

    invoke-direct {v4, p0, v2}, Lcom/samsung/milk/milkvideo/fragments/WelcomeFragment$1;-><init>(Lcom/samsung/milk/milkvideo/fragments/WelcomeFragment;Landroid/view/View;)V

    invoke-interface {v3, v4}, Lcom/samsung/milk/milkvideo/api/NachosRestService;->getBrands(Lretrofit/Callback;)V

    .line 85
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/WelcomeFragment;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/WelcomeFragment;->nextButtonId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 86
    .local v1, "nextButton":Landroid/widget/Button;
    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 88
    new-instance v3, Lcom/samsung/milk/milkvideo/fragments/WelcomeFragment$2;

    invoke-direct {v3, p0}, Lcom/samsung/milk/milkvideo/fragments/WelcomeFragment$2;-><init>(Lcom/samsung/milk/milkvideo/fragments/WelcomeFragment;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    return-void
.end method

.method protected startNextActivity()V
    .locals 2

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/WelcomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v1, Lcom/samsung/milk/milkvideo/models/Category;->FOLLOWING:Lcom/samsung/milk/milkvideo/models/Category;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/models/Category;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;->start(Landroid/content/Context;Ljava/lang/String;)V

    .line 124
    return-void
.end method
