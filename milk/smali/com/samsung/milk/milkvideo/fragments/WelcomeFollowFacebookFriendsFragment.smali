.class public Lcom/samsung/milk/milkvideo/fragments/WelcomeFollowFacebookFriendsFragment;
.super Lcom/samsung/milk/milkvideo/fragments/WelcomeFollowFriendsFragment;
.source "WelcomeFollowFacebookFriendsFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/fragments/WelcomeFollowFriendsFragment;-><init>()V

    return-void
.end method

.method public static newInstance()Lcom/samsung/milk/milkvideo/fragments/WelcomeFollowFacebookFriendsFragment;
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/samsung/milk/milkvideo/fragments/WelcomeFollowFacebookFriendsFragment;

    invoke-direct {v0}, Lcom/samsung/milk/milkvideo/fragments/WelcomeFollowFacebookFriendsFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected retrieveFriends()V
    .locals 3

    .prologue
    .line 16
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/fragments/WelcomeFollowFacebookFriendsFragment;->nachosRestService:Lcom/samsung/milk/milkvideo/api/NachosRestService;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/fragments/WelcomeFollowFacebookFriendsFragment;->loginState:Lcom/samsung/milk/milkvideo/services/LoginState;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/services/LoginState;->getCurrentUserUuid()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/samsung/milk/milkvideo/fragments/WelcomeFollowFacebookFriendsFragment$1;

    invoke-direct {v2, p0}, Lcom/samsung/milk/milkvideo/fragments/WelcomeFollowFacebookFriendsFragment$1;-><init>(Lcom/samsung/milk/milkvideo/fragments/WelcomeFollowFacebookFriendsFragment;)V

    invoke-interface {v0, v1, v2}, Lcom/samsung/milk/milkvideo/api/NachosRestService;->getFacebookFriends(Ljava/lang/String;Lretrofit/Callback;)V

    .line 27
    return-void
.end method
