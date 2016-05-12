.class public Lcom/samsung/milk/milkvideo/services/RepostService;
.super Ljava/lang/Object;
.source "RepostService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/milk/milkvideo/services/RepostService$RepostClickCallback;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private final appsFlyerTracker:Lcom/samsung/milk/milkvideo/analytics/AppsFlyerTracker;

.field private final currentBlurBackground:Lcom/samsung/milk/milkvideo/utils/CurrentBlurBackground;

.field private final eventBus:Lcom/squareup/otto/Bus;

.field private final googleTracker:Lcom/samsung/milk/milkvideo/analytics/GoogleAnalyticsTracker;

.field private final loginState:Lcom/samsung/milk/milkvideo/services/LoginState;

.field private final nachosRestService:Lcom/samsung/milk/milkvideo/api/NachosRestService;

.field private final nachosToast:Lcom/samsung/milk/milkvideo/widgets/NachosToast;

.field private final tracker:Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;


# direct methods
.method public constructor <init>(Lcom/samsung/milk/milkvideo/services/LoginState;Lcom/samsung/milk/milkvideo/api/NachosRestService;Lcom/squareup/otto/Bus;Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;Lcom/samsung/milk/milkvideo/utils/CurrentBlurBackground;Lcom/samsung/milk/milkvideo/analytics/AppsFlyerTracker;Lcom/samsung/milk/milkvideo/widgets/NachosToast;Lcom/samsung/milk/milkvideo/analytics/GoogleAnalyticsTracker;)V
    .locals 0
    .param p1, "loginState"    # Lcom/samsung/milk/milkvideo/services/LoginState;
    .param p2, "nachosRestService"    # Lcom/samsung/milk/milkvideo/api/NachosRestService;
    .param p3, "bus"    # Lcom/squareup/otto/Bus;
    .param p4, "tracker"    # Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;
    .param p5, "currentBlurBackground"    # Lcom/samsung/milk/milkvideo/utils/CurrentBlurBackground;
    .param p6, "appsFlyerTracker"    # Lcom/samsung/milk/milkvideo/analytics/AppsFlyerTracker;
    .param p7, "nachosToast"    # Lcom/samsung/milk/milkvideo/widgets/NachosToast;
    .param p8, "googleAnalytics"    # Lcom/samsung/milk/milkvideo/analytics/GoogleAnalyticsTracker;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/services/RepostService;->loginState:Lcom/samsung/milk/milkvideo/services/LoginState;

    .line 41
    iput-object p2, p0, Lcom/samsung/milk/milkvideo/services/RepostService;->nachosRestService:Lcom/samsung/milk/milkvideo/api/NachosRestService;

    .line 42
    iput-object p3, p0, Lcom/samsung/milk/milkvideo/services/RepostService;->eventBus:Lcom/squareup/otto/Bus;

    .line 43
    iput-object p4, p0, Lcom/samsung/milk/milkvideo/services/RepostService;->tracker:Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;

    .line 44
    iput-object p5, p0, Lcom/samsung/milk/milkvideo/services/RepostService;->currentBlurBackground:Lcom/samsung/milk/milkvideo/utils/CurrentBlurBackground;

    .line 45
    iput-object p6, p0, Lcom/samsung/milk/milkvideo/services/RepostService;->appsFlyerTracker:Lcom/samsung/milk/milkvideo/analytics/AppsFlyerTracker;

    .line 46
    iput-object p7, p0, Lcom/samsung/milk/milkvideo/services/RepostService;->nachosToast:Lcom/samsung/milk/milkvideo/widgets/NachosToast;

    .line 47
    iput-object p8, p0, Lcom/samsung/milk/milkvideo/services/RepostService;->googleTracker:Lcom/samsung/milk/milkvideo/analytics/GoogleAnalyticsTracker;

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/milk/milkvideo/services/RepostService;)Lcom/squareup/otto/Bus;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/services/RepostService;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/services/RepostService;->eventBus:Lcom/squareup/otto/Bus;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/milk/milkvideo/services/RepostService;)Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/services/RepostService;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/services/RepostService;->tracker:Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/milk/milkvideo/services/RepostService;)Lcom/samsung/milk/milkvideo/analytics/GoogleAnalyticsTracker;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/services/RepostService;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/services/RepostService;->googleTracker:Lcom/samsung/milk/milkvideo/analytics/GoogleAnalyticsTracker;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/milk/milkvideo/services/RepostService;)Lcom/samsung/milk/milkvideo/analytics/AppsFlyerTracker;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/services/RepostService;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/services/RepostService;->appsFlyerTracker:Lcom/samsung/milk/milkvideo/analytics/AppsFlyerTracker;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/milk/milkvideo/services/RepostService;)Lcom/samsung/milk/milkvideo/widgets/NachosToast;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/services/RepostService;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/services/RepostService;->nachosToast:Lcom/samsung/milk/milkvideo/widgets/NachosToast;

    return-object v0
.end method

.method private requestRepost(Landroid/app/Activity;Lcom/samsung/milk/milkvideo/models/Video;Lcom/samsung/milk/milkvideo/services/RepostService$RepostClickCallback;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "video"    # Lcom/samsung/milk/milkvideo/models/Video;
    .param p3, "callback"    # Lcom/samsung/milk/milkvideo/services/RepostService$RepostClickCallback;

    .prologue
    .line 66
    invoke-static {p2}, Lcom/samsung/milk/milkvideo/models/Repost;->fromVideo(Lcom/samsung/milk/milkvideo/models/Video;)Lcom/samsung/milk/milkvideo/models/Repost;

    move-result-object v0

    .line 67
    .local v0, "repost":Lcom/samsung/milk/milkvideo/models/Repost;
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/services/RepostService;->nachosRestService:Lcom/samsung/milk/milkvideo/api/NachosRestService;

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/services/RepostService;->loginState:Lcom/samsung/milk/milkvideo/services/LoginState;

    invoke-virtual {v2}, Lcom/samsung/milk/milkvideo/services/LoginState;->getCurrentUserUuid()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/samsung/milk/milkvideo/services/RepostService$1;

    invoke-direct {v3, p0, p2, p3, p1}, Lcom/samsung/milk/milkvideo/services/RepostService$1;-><init>(Lcom/samsung/milk/milkvideo/services/RepostService;Lcom/samsung/milk/milkvideo/models/Video;Lcom/samsung/milk/milkvideo/services/RepostService$RepostClickCallback;Landroid/app/Activity;)V

    invoke-interface {v1, v2, v0, v3}, Lcom/samsung/milk/milkvideo/api/NachosRestService;->repostVideo(Ljava/lang/String;Lcom/samsung/milk/milkvideo/models/Repost;Lretrofit/ResponseCallback;)V

    .line 90
    return-void
.end method

.method private requestUnrepost(Lcom/samsung/milk/milkvideo/models/Video;Lcom/samsung/milk/milkvideo/services/RepostService$RepostClickCallback;)V
    .locals 4
    .param p1, "video"    # Lcom/samsung/milk/milkvideo/models/Video;
    .param p2, "callback"    # Lcom/samsung/milk/milkvideo/services/RepostService$RepostClickCallback;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/services/RepostService;->nachosRestService:Lcom/samsung/milk/milkvideo/api/NachosRestService;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/services/RepostService;->loginState:Lcom/samsung/milk/milkvideo/services/LoginState;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/services/LoginState;->getCurrentUserUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/models/Video;->getEmbedCode()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/samsung/milk/milkvideo/services/RepostService$2;

    invoke-direct {v3, p0, p1, p2}, Lcom/samsung/milk/milkvideo/services/RepostService$2;-><init>(Lcom/samsung/milk/milkvideo/services/RepostService;Lcom/samsung/milk/milkvideo/models/Video;Lcom/samsung/milk/milkvideo/services/RepostService$RepostClickCallback;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/milk/milkvideo/api/NachosRestService;->unrepostVideo(Ljava/lang/String;Ljava/lang/String;Lretrofit/ResponseCallback;)V

    .line 112
    return-void
.end method

.method private startSignupActivity(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/services/RepostService;->currentBlurBackground:Lcom/samsung/milk/milkvideo/utils/CurrentBlurBackground;

    invoke-virtual {v0, p1}, Lcom/samsung/milk/milkvideo/utils/CurrentBlurBackground;->setBlurredBackground(Landroid/app/Activity;)V

    .line 116
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/samsung/milk/milkvideo/activity/SignupUserActivity;->start(Landroid/content/Context;Z)V

    .line 117
    return-void
.end method


# virtual methods
.method public dispatchRepostRequest(Landroid/app/Activity;Lcom/samsung/milk/milkvideo/models/Video;Lcom/samsung/milk/milkvideo/services/RepostService$RepostClickCallback;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "video"    # Lcom/samsung/milk/milkvideo/models/Video;
    .param p3, "callback"    # Lcom/samsung/milk/milkvideo/services/RepostService$RepostClickCallback;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/services/RepostService;->loginState:Lcom/samsung/milk/milkvideo/services/LoginState;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/services/LoginState;->isSoftLoggedIn()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/milk/milkvideo/services/RepostService;->loginState:Lcom/samsung/milk/milkvideo/services/LoginState;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/services/LoginState;->getCurrentUser()Lcom/samsung/milk/milkvideo/models/User;

    move-result-object v0

    if-nez v0, :cond_2

    .line 52
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/milk/milkvideo/services/RepostService;->startSignupActivity(Landroid/app/Activity;)V

    .line 53
    if-eqz p3, :cond_1

    .line 54
    invoke-interface {p3}, Lcom/samsung/milk/milkvideo/services/RepostService$RepostClickCallback;->failure()V

    .line 63
    :cond_1
    :goto_0
    return-void

    .line 57
    :cond_2
    invoke-virtual {p2}, Lcom/samsung/milk/milkvideo/models/Video;->isRepostedByMe()Z

    move-result v0

    if-nez v0, :cond_3

    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/milk/milkvideo/services/RepostService;->requestRepost(Landroid/app/Activity;Lcom/samsung/milk/milkvideo/models/Video;Lcom/samsung/milk/milkvideo/services/RepostService$RepostClickCallback;)V

    goto :goto_0

    .line 60
    :cond_3
    invoke-direct {p0, p2, p3}, Lcom/samsung/milk/milkvideo/services/RepostService;->requestUnrepost(Lcom/samsung/milk/milkvideo/models/Video;Lcom/samsung/milk/milkvideo/services/RepostService$RepostClickCallback;)V

    goto :goto_0
.end method
