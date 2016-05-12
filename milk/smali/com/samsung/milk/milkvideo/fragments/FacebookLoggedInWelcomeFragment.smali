.class public Lcom/samsung/milk/milkvideo/fragments/FacebookLoggedInWelcomeFragment;
.super Lcom/samsung/milk/milkvideo/fragments/WelcomeFragment;
.source "FacebookLoggedInWelcomeFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/fragments/WelcomeFragment;-><init>()V

    return-void
.end method

.method public static newInstance()Lcom/samsung/milk/milkvideo/fragments/FacebookLoggedInWelcomeFragment;
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/samsung/milk/milkvideo/fragments/FacebookLoggedInWelcomeFragment;

    invoke-direct {v0}, Lcom/samsung/milk/milkvideo/fragments/FacebookLoggedInWelcomeFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected nextButtonId()I
    .locals 1

    .prologue
    .line 12
    const v0, 0x7f0600d6

    return v0
.end method

.method protected onDone(Ljava/util/List;)V
    .locals 0
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
    .line 16
    .local p1, "uuids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method protected startNextActivity()V
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/FacebookLoggedInWelcomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/milk/milkvideo/activity/WelcomeFollowFacebookFriendsActivity;->start(Landroid/content/Context;)V

    .line 21
    return-void
.end method
