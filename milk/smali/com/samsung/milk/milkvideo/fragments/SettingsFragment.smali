.class public Lcom/samsung/milk/milkvideo/fragments/SettingsFragment;
.super Lcom/samsung/milk/milkvideo/fragments/BaseNachosFragment;
.source "SettingsFragment.java"


# static fields
.field public static final SIGNOUT_CONFIRMATION_REQUEST_CODE:I = 0x1


# instance fields
.field private autoplayEnabled:Z

.field private autoplayView:Landroid/widget/TextView;

.field currentBlurBackground:Lcom/samsung/milk/milkvideo/utils/CurrentBlurBackground;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field featureFlags:Lcom/samsung/milk/milkvideo/FeatureFlags;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private notificationsEnabled:Z

.field private notificationsView:Landroid/widget/TextView;

.field settings:Lcom/samsung/milk/milkvideo/services/NachosSettings;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private signingOut:Z

.field private signoutButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 23
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/fragments/BaseNachosFragment;-><init>()V

    .line 32
    iput-boolean v0, p0, Lcom/samsung/milk/milkvideo/fragments/SettingsFragment;->autoplayEnabled:Z

    .line 33
    iput-boolean v0, p0, Lcom/samsung/milk/milkvideo/fragments/SettingsFragment;->notificationsEnabled:Z

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/milk/milkvideo/fragments/SettingsFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/fragments/SettingsFragment;

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/samsung/milk/milkvideo/fragments/SettingsFragment;->autoplayEnabled:Z

    return v0
.end method

.method static synthetic access$002(Lcom/samsung/milk/milkvideo/fragments/SettingsFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/fragments/SettingsFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/samsung/milk/milkvideo/fragments/SettingsFragment;->autoplayEnabled:Z

    return p1
.end method

.method static synthetic access$100(Lcom/samsung/milk/milkvideo/fragments/SettingsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/fragments/SettingsFragment;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/fragments/SettingsFragment;->applySettingsToUI()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/milk/milkvideo/fragments/SettingsFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/fragments/SettingsFragment;

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/samsung/milk/milkvideo/fragments/SettingsFragment;->notificationsEnabled:Z

    return v0
.end method

.method static synthetic access$202(Lcom/samsung/milk/milkvideo/fragments/SettingsFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/fragments/SettingsFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/samsung/milk/milkvideo/fragments/SettingsFragment;->notificationsEnabled:Z

    return p1
.end method

.method static synthetic access$300(Lcom/samsung/milk/milkvideo/fragments/SettingsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/fragments/SettingsFragment;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/fragments/SettingsFragment;->launchSignoutConfirmationActivity()V

    return-void
.end method

.method private applySettingsToUI()V
    .locals 5

    .prologue
    const v2, 0x7f0200f8

    const v1, 0x7f020012

    const/4 v4, 0x0

    .line 79
    iget-object v3, p0, Lcom/samsung/milk/milkvideo/fragments/SettingsFragment;->autoplayView:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/samsung/milk/milkvideo/fragments/SettingsFragment;->autoplayEnabled:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v4, v4, v0, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 80
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/SettingsFragment;->notificationsView:Landroid/widget/TextView;

    iget-boolean v3, p0, Lcom/samsung/milk/milkvideo/fragments/SettingsFragment;->notificationsEnabled:Z

    if-eqz v3, :cond_1

    :goto_1
    invoke-virtual {v0, v4, v4, v1, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 81
    return-void

    :cond_0
    move v0, v2

    .line 79
    goto :goto_0

    :cond_1
    move v1, v2

    .line 80
    goto :goto_1
.end method

.method private getVersionName()Ljava/lang/String;
    .locals 5

    .prologue
    .line 199
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 200
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 202
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v2

    .line 200
    .restart local v1    # "info":Landroid/content/pm/PackageInfo;
    :cond_0
    const-string v2, "dev build"
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 201
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 202
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "N/A"

    goto :goto_0
.end method

.method private launchSignoutConfirmationActivity()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 171
    iget-boolean v1, p0, Lcom/samsung/milk/milkvideo/fragments/SettingsFragment;->signingOut:Z

    if-nez v1, :cond_0

    .line 172
    iput-boolean v3, p0, Lcom/samsung/milk/milkvideo/fragments/SettingsFragment;->signingOut:Z

    .line 173
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/SettingsFragment;->signoutButton:Landroid/widget/Button;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 174
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/samsung/milk/milkvideo/activity/SignoutConfirmationActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 175
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0, v3}, Lcom/samsung/milk/milkvideo/fragments/SettingsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 177
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public static newInstance()Lcom/samsung/milk/milkvideo/fragments/SettingsFragment;
    .locals 1

    .prologue
    .line 194
    new-instance v0, Lcom/samsung/milk/milkvideo/fragments/SettingsFragment;

    invoke-direct {v0}, Lcom/samsung/milk/milkvideo/fragments/SettingsFragment;-><init>()V

    return-object v0
.end method

.method private readSettingsFromSharedPreferences()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/SettingsFragment;->settings:Lcom/samsung/milk/milkvideo/services/NachosSettings;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/services/NachosSettings;->isAutoplayEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/milk/milkvideo/fragments/SettingsFragment;->autoplayEnabled:Z

    .line 75
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/SettingsFragment;->settings:Lcom/samsung/milk/milkvideo/services/NachosSettings;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/services/NachosSettings;->areNotificationsEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/milk/milkvideo/fragments/SettingsFragment;->notificationsEnabled:Z

    .line 76
    return-void
.end method

.method private setUpListeners()V
    .locals 9

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/SettingsFragment;->getView()Landroid/view/View;

    move-result-object v7

    const v8, 0x7f06007b

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 90
    .local v6, "title":Landroid/widget/TextView;
    new-instance v7, Lcom/samsung/milk/milkvideo/fragments/SettingsFragment$1;

    invoke-direct {v7, p0}, Lcom/samsung/milk/milkvideo/fragments/SettingsFragment$1;-><init>(Lcom/samsung/milk/milkvideo/fragments/SettingsFragment;)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/SettingsFragment;->getView()Landroid/view/View;

    move-result-object v7

    const v8, 0x7f0600a4

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 98
    .local v1, "editProfileView":Landroid/view/View;
    new-instance v7, Lcom/samsung/milk/milkvideo/fragments/SettingsFragment$2;

    invoke-direct {v7, p0}, Lcom/samsung/milk/milkvideo/fragments/SettingsFragment$2;-><init>(Lcom/samsung/milk/milkvideo/fragments/SettingsFragment;)V

    invoke-virtual {v1, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object v7, p0, Lcom/samsung/milk/milkvideo/fragments/SettingsFragment;->autoplayView:Landroid/widget/TextView;

    new-instance v8, Lcom/samsung/milk/milkvideo/fragments/SettingsFragment$3;

    invoke-direct {v8, p0}, Lcom/samsung/milk/milkvideo/fragments/SettingsFragment$3;-><init>(Lcom/samsung/milk/milkvideo/fragments/SettingsFragment;)V

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object v7, p0, Lcom/samsung/milk/milkvideo/fragments/SettingsFragment;->notificationsView:Landroid/widget/TextView;

    new-instance v8, Lcom/samsung/milk/milkvideo/fragments/SettingsFragment$4;

    invoke-direct {v8, p0}, Lcom/samsung/milk/milkvideo/fragments/SettingsFragment$4;-><init>(Lcom/samsung/milk/milkvideo/fragments/SettingsFragment;)V

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/SettingsFragment;->getView()Landroid/view/View;

    move-result-object v7

    const v8, 0x7f0600ac

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 122
    .local v4, "privacyPolicyView":Landroid/view/View;
    new-instance v7, Lcom/samsung/milk/milkvideo/fragments/SettingsFragment$5;

    invoke-direct {v7, p0}, Lcom/samsung/milk/milkvideo/fragments/SettingsFragment$5;-><init>(Lcom/samsung/milk/milkvideo/fragments/SettingsFragment;)V

    invoke-virtual {v4, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/SettingsFragment;->getView()Landroid/view/View;

    move-result-object v7

    const v8, 0x7f0600ad

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 130
    .local v5, "termsAndConditionsView":Landroid/view/View;
    new-instance v7, Lcom/samsung/milk/milkvideo/fragments/SettingsFragment$6;

    invoke-direct {v7, p0}, Lcom/samsung/milk/milkvideo/fragments/SettingsFragment$6;-><init>(Lcom/samsung/milk/milkvideo/fragments/SettingsFragment;)V

    invoke-virtual {v5, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/SettingsFragment;->getView()Landroid/view/View;

    move-result-object v7

    const v8, 0x7f0600ae

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 138
    .local v0, "copyrightAndLicensesView":Landroid/view/View;
    new-instance v7, Lcom/samsung/milk/milkvideo/fragments/SettingsFragment$7;

    invoke-direct {v7, p0}, Lcom/samsung/milk/milkvideo/fragments/SettingsFragment$7;-><init>(Lcom/samsung/milk/milkvideo/fragments/SettingsFragment;)V

    invoke-virtual {v0, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/SettingsFragment;->getView()Landroid/view/View;

    move-result-object v7

    const v8, 0x7f0600af

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 146
    .local v3, "helpView":Landroid/view/View;
    new-instance v7, Lcom/samsung/milk/milkvideo/fragments/SettingsFragment$8;

    invoke-direct {v7, p0}, Lcom/samsung/milk/milkvideo/fragments/SettingsFragment$8;-><init>(Lcom/samsung/milk/milkvideo/fragments/SettingsFragment;)V

    invoke-virtual {v3, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/SettingsFragment;->getView()Landroid/view/View;

    move-result-object v7

    const v8, 0x7f0600a3

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/samsung/milk/milkvideo/fragments/SettingsFragment;->signoutButton:Landroid/widget/Button;

    .line 154
    iget-object v7, p0, Lcom/samsung/milk/milkvideo/fragments/SettingsFragment;->signoutButton:Landroid/widget/Button;

    new-instance v8, Lcom/samsung/milk/milkvideo/fragments/SettingsFragment$9;

    invoke-direct {v8, p0}, Lcom/samsung/milk/milkvideo/fragments/SettingsFragment$9;-><init>(Lcom/samsung/milk/milkvideo/fragments/SettingsFragment;)V

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/SettingsFragment;->getView()Landroid/view/View;

    move-result-object v7

    const v8, 0x7f0600a5

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 162
    .local v2, "followFriendsView":Landroid/view/View;
    new-instance v7, Lcom/samsung/milk/milkvideo/fragments/SettingsFragment$10;

    invoke-direct {v7, p0}, Lcom/samsung/milk/milkvideo/fragments/SettingsFragment$10;-><init>(Lcom/samsung/milk/milkvideo/fragments/SettingsFragment;)V

    invoke-virtual {v2, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    return-void
.end method

.method private writeSettingsToSharedPreferences()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/SettingsFragment;->settings:Lcom/samsung/milk/milkvideo/services/NachosSettings;

    iget-boolean v1, p0, Lcom/samsung/milk/milkvideo/fragments/SettingsFragment;->autoplayEnabled:Z

    invoke-virtual {v0, v1}, Lcom/samsung/milk/milkvideo/services/NachosSettings;->setAutoplayEnabled(Z)V

    .line 85
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/SettingsFragment;->settings:Lcom/samsung/milk/milkvideo/services/NachosSettings;

    iget-boolean v1, p0, Lcom/samsung/milk/milkvideo/fragments/SettingsFragment;->notificationsEnabled:Z

    invoke-virtual {v0, v1}, Lcom/samsung/milk/milkvideo/services/NachosSettings;->setNotificationsEnabled(Z)V

    .line 86
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 181
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/milk/milkvideo/fragments/BaseNachosFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 183
    iput-boolean v1, p0, Lcom/samsung/milk/milkvideo/fragments/SettingsFragment;->signingOut:Z

    .line 185
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    .line 186
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 187
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v1, Lcom/samsung/milk/milkvideo/models/Category;->FOLLOWING:Lcom/samsung/milk/milkvideo/models/Category;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/models/Category;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;->start(Landroid/content/Context;Ljava/lang/String;)V

    .line 191
    :goto_0
    return-void

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/SettingsFragment;->signoutButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/fragments/SettingsFragment;->readSettingsFromSharedPreferences()V

    .line 40
    const v0, 0x7f03003a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 69
    invoke-super {p0}, Lcom/samsung/milk/milkvideo/fragments/BaseNachosFragment;->onPause()V

    .line 70
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/fragments/SettingsFragment;->writeSettingsToSharedPreferences()V

    .line 71
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 45
    invoke-super {p0, p1, p2}, Lcom/samsung/milk/milkvideo/fragments/BaseNachosFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/SettingsFragment;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0600a8

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/samsung/milk/milkvideo/fragments/SettingsFragment;->autoplayView:Landroid/widget/TextView;

    .line 48
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/SettingsFragment;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0600a7

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/samsung/milk/milkvideo/fragments/SettingsFragment;->notificationsView:Landroid/widget/TextView;

    .line 50
    iget-object v3, p0, Lcom/samsung/milk/milkvideo/fragments/SettingsFragment;->featureFlags:Lcom/samsung/milk/milkvideo/FeatureFlags;

    invoke-virtual {v3}, Lcom/samsung/milk/milkvideo/FeatureFlags;->shouldNotify()Z

    move-result v3

    if-nez v3, :cond_0

    .line 51
    iget-object v3, p0, Lcom/samsung/milk/milkvideo/fragments/SettingsFragment;->notificationsView:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 54
    :cond_0
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/fragments/SettingsFragment;->applySettingsToUI()V

    .line 55
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/fragments/SettingsFragment;->setUpListeners()V

    .line 57
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/SettingsFragment;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0600ab

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 58
    .local v2, "versionValue":Landroid/widget/TextView;
    const-string v3, "com.samsung.milk.milkvideo.service.serverName"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, "serverName":Ljava/lang/String;
    const-string v0, ""

    .line 60
    .local v0, "postfix":Ljava/lang/String;
    const-string v3, "prod-"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 61
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 63
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/fragments/SettingsFragment;->getVersionName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/samsung/milk/milkvideo/fragments/SettingsFragment;->signingOut:Z

    .line 65
    return-void
.end method
