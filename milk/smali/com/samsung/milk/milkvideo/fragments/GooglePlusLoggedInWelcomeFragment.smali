.class public Lcom/samsung/milk/milkvideo/fragments/GooglePlusLoggedInWelcomeFragment;
.super Lcom/samsung/milk/milkvideo/fragments/WelcomeFragment;
.source "GooglePlusLoggedInWelcomeFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/fragments/WelcomeFragment;-><init>()V

    return-void
.end method

.method public static newInstance()Lcom/samsung/milk/milkvideo/fragments/GooglePlusLoggedInWelcomeFragment;
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/samsung/milk/milkvideo/fragments/GooglePlusLoggedInWelcomeFragment;

    invoke-direct {v0}, Lcom/samsung/milk/milkvideo/fragments/GooglePlusLoggedInWelcomeFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected nextButtonId()I
    .locals 1

    .prologue
    .line 13
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
    .line 17
    .local p1, "uuids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method protected startNextActivity()V
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/fragments/GooglePlusLoggedInWelcomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/milk/milkvideo/activity/WelcomeFollowGooglePlusFriendsActivity;->start(Landroid/content/Context;)V

    .line 22
    return-void
.end method
