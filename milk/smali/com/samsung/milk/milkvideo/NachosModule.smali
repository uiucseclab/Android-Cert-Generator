.class public Lcom/samsung/milk/milkvideo/NachosModule;
.super Ljava/lang/Object;
.source "NachosModule.java"


# annotations
.annotation runtime Ldagger/Module;
    injects = {
        Lcom/samsung/milk/milkvideo/NachosApplication;,
        Lcom/samsung/milk/milkvideo/activity/BaseNachosActivity;,
        Lcom/samsung/milk/milkvideo/activity/CreateAccountActivity;,
        Lcom/samsung/milk/milkvideo/activity/EditProfileActivity;,
        Lcom/samsung/milk/milkvideo/activity/FollowFriendsActivity;,
        Lcom/samsung/milk/milkvideo/activity/FollowsActivity;,
        Lcom/samsung/milk/milkvideo/activity/LegalActivity;,
        Lcom/samsung/milk/milkvideo/activity/ProfileActivity;,
        Lcom/samsung/milk/milkvideo/activity/ReposterListActivity;,
        Lcom/samsung/milk/milkvideo/activity/SearchActivity;,
        Lcom/samsung/milk/milkvideo/activity/SettingsActivity;,
        Lcom/samsung/milk/milkvideo/activity/SignoutConfirmationActivity;,
        Lcom/samsung/milk/milkvideo/activity/SignupUserActivity;,
        Lcom/samsung/milk/milkvideo/activity/UserListActivity;,
        Lcom/samsung/milk/milkvideo/activity/UserSearchResultsActivity;,
        Lcom/samsung/milk/milkvideo/activity/VideoFeedActivity;,
        Lcom/samsung/milk/milkvideo/activity/WelcomeActivity;,
        Lcom/samsung/milk/milkvideo/activity/WelcomeFollowFacebookFriendsActivity;,
        Lcom/samsung/milk/milkvideo/activity/WelcomeFollowGooglePlusFriendsActivity;,
        Lcom/samsung/milk/milkvideo/adapters/EdgeVideoPagerAdapter;,
        Lcom/samsung/milk/milkvideo/analytics/BufferingTracker;,
        Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;,
        Lcom/samsung/milk/milkvideo/api/GoogleTokenAsyncTask;,
        Lcom/samsung/milk/milkvideo/events/VideoListEventHandler;,
        Lcom/samsung/milk/milkvideo/fragments/CategoryFragment;,
        Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;,
        Lcom/samsung/milk/milkvideo/fragments/FacebookLoggedInWelcomeFragment;,
        Lcom/samsung/milk/milkvideo/fragments/FollowsFragment;,
        Lcom/samsung/milk/milkvideo/fragments/GooglePlusLoggedInWelcomeFragment;,
        Lcom/samsung/milk/milkvideo/fragments/LegalFragment;,
        Lcom/samsung/milk/milkvideo/fragments/LoginFragment;,
        Lcom/samsung/milk/milkvideo/fragments/ProfileFragment;,
        Lcom/samsung/milk/milkvideo/fragments/SearchFragment;,
        Lcom/samsung/milk/milkvideo/fragments/SettingsFragment;,
        Lcom/samsung/milk/milkvideo/fragments/SignoutConfirmationFragment;,
        Lcom/samsung/milk/milkvideo/fragments/SignupUserFragment;,
        Lcom/samsung/milk/milkvideo/fragments/UserListFragment;,
        Lcom/samsung/milk/milkvideo/fragments/UserSearchResultsFragment;,
        Lcom/samsung/milk/milkvideo/fragments/VideoFeedFragment;,
        Lcom/samsung/milk/milkvideo/fragments/VideoPlayerContainerFragment;,
        Lcom/samsung/milk/milkvideo/fragments/WelcomeFollowFacebookFriendsFragment;,
        Lcom/samsung/milk/milkvideo/fragments/WelcomeFollowGooglePlusFriendsFragment;,
        Lcom/samsung/milk/milkvideo/fragments/WelcomeFragment;,
        Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;,
        Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;,
        Lcom/samsung/milk/milkvideo/fragments/userinfo/EditProfileFragment;,
        Lcom/samsung/milk/milkvideo/fragments/userinfo/FacebookUserInfoFragment;,
        Lcom/samsung/milk/milkvideo/fragments/userinfo/GooglePlusUserInfoFragment;,
        Lcom/samsung/milk/milkvideo/fragments/userinfo/SamsungAccountUserInfoFragment;,
        Lcom/samsung/milk/milkvideo/fragments/userinfo/UserInfoFragment;,
        Lcom/samsung/milk/milkvideo/login/BaseLoginStrategy;,
        Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy;,
        Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;,
        Lcom/samsung/milk/milkvideo/login/SamsungLoginStrategy;,
        Lcom/samsung/milk/milkvideo/notifications/GcmIntentService;,
        Lcom/samsung/milk/milkvideo/notifications/NotificationFactory;,
        Lcom/samsung/milk/milkvideo/receiver/NetworkChangeReceiver;,
        Lcom/samsung/milk/milkvideo/services/RepostService;,
        Lcom/samsung/milk/milkvideo/utils/BandwidthDetector;,
        Lcom/samsung/milk/milkvideo/views/ActionContainerView;,
        Lcom/samsung/milk/milkvideo/views/BrandGridItemView;,
        Lcom/samsung/milk/milkvideo/views/CategoryListView;,
        Lcom/samsung/milk/milkvideo/views/CircularImageView;,
        Lcom/samsung/milk/milkvideo/views/CustomLoadingLayout;,
        Lcom/samsung/milk/milkvideo/views/EdgeVideoListItemView;,
        Lcom/samsung/milk/milkvideo/views/FacepileItemView;,
        Lcom/samsung/milk/milkvideo/views/FacepileLayout;,
        Lcom/samsung/milk/milkvideo/views/FollowButtonView;,
        Lcom/samsung/milk/milkvideo/views/FullScreenDialog;,
        Lcom/samsung/milk/milkvideo/views/LockableScrollView;,
        Lcom/samsung/milk/milkvideo/views/MessageNotifier;,
        Lcom/samsung/milk/milkvideo/views/MyProfileListHeader;,
        Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs;,
        Lcom/samsung/milk/milkvideo/views/NuxPageView;,
        Lcom/samsung/milk/milkvideo/views/NuxView;,
        Lcom/samsung/milk/milkvideo/views/ProfileListHeader;,
        Lcom/samsung/milk/milkvideo/views/PullToRefreshSwipeListView;,
        Lcom/samsung/milk/milkvideo/views/RainbowView;,
        Lcom/samsung/milk/milkvideo/views/SideBarView;,
        Lcom/samsung/milk/milkvideo/views/SuggestedUserListItemView;,
        Lcom/samsung/milk/milkvideo/views/UserListItemView;,
        Lcom/samsung/milk/milkvideo/views/UserProfileListHeader;,
        Lcom/samsung/milk/milkvideo/views/UserSearchResultView;,
        Lcom/samsung/milk/milkvideo/views/ValidationEditText;,
        Lcom/samsung/milk/milkvideo/views/VerticalSeekBar;,
        Lcom/samsung/milk/milkvideo/views/VideoInfoView;,
        Lcom/samsung/milk/milkvideo/views/VideoListItemView;,
        Lcom/samsung/milk/milkvideo/views/VideoPlayerControlView;,
        Lcom/samsung/milk/milkvideo/views/YouTubeContainerView;,
        Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableHeader;,
        Lcom/samsung/milk/milkvideo/views/condensable_header/CondensableMyProfileHeader;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/milk/milkvideo/NachosModule$RealGestureDetectorFactory;
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/milk/milkvideo/NachosModule;->context:Landroid/content/Context;

    .line 156
    :try_start_0
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "/injected.properties"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    return-void

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private buildHttpClient()Lretrofit/client/OkClient;
    .locals 10

    .prologue
    const-wide/16 v8, 0xf

    .line 361
    new-instance v1, Lcom/squareup/okhttp/OkHttpClient;

    invoke-direct {v1}, Lcom/squareup/okhttp/OkHttpClient;-><init>()V

    .line 363
    .local v1, "client":Lcom/squareup/okhttp/OkHttpClient;
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/samsung/milk/milkvideo/NachosModule;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "responses"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 364
    .local v0, "cache":Ljava/io/File;
    new-instance v3, Lcom/squareup/okhttp/Cache;

    const-wide/32 v4, 0x500000

    invoke-direct {v3, v0, v4, v5}, Lcom/squareup/okhttp/Cache;-><init>(Ljava/io/File;J)V

    invoke-virtual {v1, v3}, Lcom/squareup/okhttp/OkHttpClient;->setCache(Lcom/squareup/okhttp/Cache;)Lcom/squareup/okhttp/OkHttpClient;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 368
    .end local v0    # "cache":Ljava/io/File;
    :goto_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v8, v9, v3}, Lcom/squareup/okhttp/OkHttpClient;->setConnectTimeout(JLjava/util/concurrent/TimeUnit;)V

    .line 369
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v8, v9, v3}, Lcom/squareup/okhttp/OkHttpClient;->setReadTimeout(JLjava/util/concurrent/TimeUnit;)V

    .line 370
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v8, v9, v3}, Lcom/squareup/okhttp/OkHttpClient;->setWriteTimeout(JLjava/util/concurrent/TimeUnit;)V

    .line 371
    new-instance v3, Lretrofit/client/OkClient;

    invoke-direct {v3, v1}, Lretrofit/client/OkClient;-><init>(Lcom/squareup/okhttp/OkHttpClient;)V

    return-object v3

    .line 365
    :catch_0
    move-exception v2

    .line 366
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "RestAdapter"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error installing HTTP response cache: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public provideAccountManager()Landroid/accounts/AccountManager;
    .locals 2
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 190
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/NachosModule;->context:Landroid/content/Context;

    const-string v1, "account"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountManager;

    return-object v0
.end method

.method public provideApplicationContext()Landroid/content/Context;
    .locals 1
    .annotation runtime Lcom/samsung/milk/milkvideo/utils/ApplicationContext;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 333
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/NachosModule;->context:Landroid/content/Context;

    return-object v0
.end method

.method public provideAudioFocusChangeListener()Lcom/samsung/milk/milkvideo/fragments/listeners/VideoOnAudioFocusChangeListener;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .prologue
    .line 270
    new-instance v0, Lcom/samsung/milk/milkvideo/fragments/listeners/VideoOnAudioFocusChangeListener;

    invoke-direct {v0}, Lcom/samsung/milk/milkvideo/fragments/listeners/VideoOnAudioFocusChangeListener;-><init>()V

    return-object v0
.end method

.method public provideAudioManager()Landroid/media/AudioManager;
    .locals 2
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 196
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/NachosModule;->context:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    return-object v0
.end method

.method public provideBandwidthDetector(Lcom/samsung/milk/milkvideo/utils/TimeService;)Lcom/samsung/milk/milkvideo/utils/BandwidthDetector;
    .locals 1
    .param p1, "timeService"    # Lcom/samsung/milk/milkvideo/utils/TimeService;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 415
    new-instance v0, Lcom/samsung/milk/milkvideo/utils/BandwidthDetector;

    invoke-direct {v0, p1}, Lcom/samsung/milk/milkvideo/utils/BandwidthDetector;-><init>(Lcom/samsung/milk/milkvideo/utils/TimeService;)V

    return-object v0
.end method

.method public provideBrandVideoRepository(Lcom/samsung/milk/milkvideo/api/NachosRestService;Lcom/squareup/otto/Bus;)Lcom/samsung/milk/milkvideo/repository/BrandVideosRepository;
    .locals 1
    .param p1, "nachosRestService"    # Lcom/samsung/milk/milkvideo/api/NachosRestService;
    .param p2, "eventBus"    # Lcom/squareup/otto/Bus;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .prologue
    .line 275
    new-instance v0, Lcom/samsung/milk/milkvideo/repository/BrandVideosRepository;

    invoke-direct {v0, p1, p2}, Lcom/samsung/milk/milkvideo/repository/BrandVideosRepository;-><init>(Lcom/samsung/milk/milkvideo/api/NachosRestService;Lcom/squareup/otto/Bus;)V

    return-object v0
.end method

.method public provideBus()Lcom/squareup/otto/Bus;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 165
    new-instance v0, Lcom/squareup/otto/Bus;

    invoke-direct {v0}, Lcom/squareup/otto/Bus;-><init>()V

    return-object v0
.end method

.method public provideCrashlyticsTracker()Lcom/samsung/milk/milkvideo/analytics/CrashlyticsTracker;
    .locals 3
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 227
    new-instance v0, Lcom/samsung/milk/milkvideo/analytics/CrashlyticsTracker;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/NachosModule;->context:Landroid/content/Context;

    new-instance v2, Lcom/samsung/milk/milkvideo/analytics/CrashlyticsWrapper;

    invoke-direct {v2}, Lcom/samsung/milk/milkvideo/analytics/CrashlyticsWrapper;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/samsung/milk/milkvideo/analytics/CrashlyticsTracker;-><init>(Landroid/content/Context;Lcom/samsung/milk/milkvideo/analytics/CrashlyticsWrapper;)V

    return-object v0
.end method

.method public provideEdgeBrighteningGradientBuilder()Lcom/samsung/milk/milkvideo/utils/EdgeBrighteningGradientBuilder;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 409
    new-instance v0, Lcom/samsung/milk/milkvideo/utils/EdgeBrighteningGradientBuilder;

    invoke-direct {v0}, Lcom/samsung/milk/milkvideo/utils/EdgeBrighteningGradientBuilder;-><init>()V

    return-object v0
.end method

.method public provideFacebookLoginStrategy(Lcom/samsung/milk/milkvideo/login/FacebookSessionManager;Lcom/samsung/milk/milkvideo/views/MessageNotifier;)Lcom/samsung/milk/milkvideo/fragments/LoginFragment$LoginStrategy;
    .locals 1
    .param p1, "facebookSessionManager"    # Lcom/samsung/milk/milkvideo/login/FacebookSessionManager;
    .param p2, "messageNotifier"    # Lcom/samsung/milk/milkvideo/views/MessageNotifier;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "facebook"
    .end annotation

    .prologue
    .line 339
    new-instance v0, Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy;

    invoke-direct {v0, p1, p2}, Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy;-><init>(Lcom/samsung/milk/milkvideo/login/FacebookSessionManager;Lcom/samsung/milk/milkvideo/views/MessageNotifier;)V

    return-object v0
.end method

.method public provideFeatureFlag()Lcom/samsung/milk/milkvideo/FeatureFlags;
    .locals 3
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 296
    new-instance v0, Lcom/samsung/milk/milkvideo/FeatureFlags;

    invoke-direct {v0}, Lcom/samsung/milk/milkvideo/FeatureFlags;-><init>()V

    .line 297
    .local v0, "featureFlags":Lcom/samsung/milk/milkvideo/FeatureFlags;
    const-string v1, "true"

    const-string v2, "com.samsung.milk.milkvideo.pullToRefreshFlag"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/milk/milkvideo/FeatureFlags;->setPullToRefreshEnabled(Z)V

    .line 298
    const-string v1, "true"

    const-string v2, "com.samsung.milk.milkvideo.youtubeWebPlayerFlag"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/milk/milkvideo/FeatureFlags;->setUseYoutubeWebPlayer(Z)V

    .line 299
    const-string v1, "true"

    const-string v2, "com.samsung.milk.milkvideo.rainbowBarInCocktail"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/milk/milkvideo/FeatureFlags;->setRainbowBarInCocktail(Z)V

    .line 300
    const-string v1, "true"

    const-string v2, "com.samsung.milk.milkvideo.showNextVideoInCocktail"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/milk/milkvideo/FeatureFlags;->setShowNextVideoInCocktail(Z)V

    .line 301
    const-string v1, "true"

    const-string v2, "com.samsung.milk.milkvideo.shouldNotify"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/milk/milkvideo/FeatureFlags;->setShouldNotify(Z)V

    .line 302
    const-string v1, "true"

    const-string v2, "com.samsung.milk.milkvideo.showSamsungLogin"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/milk/milkvideo/FeatureFlags;->setShowSamsungLogin(Z)V

    .line 304
    return-object v0
.end method

.method public provideFeedVideoRepository(Lcom/samsung/milk/milkvideo/api/NachosRestService;Lcom/squareup/otto/Bus;)Lcom/samsung/milk/milkvideo/repository/FeedVideosRepository;
    .locals 1
    .param p1, "nachosRestService"    # Lcom/samsung/milk/milkvideo/api/NachosRestService;
    .param p2, "eventBus"    # Lcom/squareup/otto/Bus;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .prologue
    .line 290
    new-instance v0, Lcom/samsung/milk/milkvideo/repository/FeedVideosRepository;

    invoke-direct {v0, p1, p2}, Lcom/samsung/milk/milkvideo/repository/FeedVideosRepository;-><init>(Lcom/samsung/milk/milkvideo/api/NachosRestService;Lcom/squareup/otto/Bus;)V

    return-object v0
.end method

.method public provideGestureDetectorFactory()Lcom/samsung/milk/milkvideo/utils/GestureDetectorFactory;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 265
    new-instance v0, Lcom/samsung/milk/milkvideo/NachosModule$RealGestureDetectorFactory;

    invoke-direct {v0}, Lcom/samsung/milk/milkvideo/NachosModule$RealGestureDetectorFactory;-><init>()V

    return-object v0
.end method

.method public provideGoogleAnalyticsTracker(Lcom/samsung/milk/milkvideo/utils/TimeService;)Lcom/samsung/milk/milkvideo/analytics/GoogleAnalyticsTracker;
    .locals 3
    .param p1, "timeService"    # Lcom/samsung/milk/milkvideo/utils/TimeService;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 421
    new-instance v0, Lcom/samsung/milk/milkvideo/analytics/GoogleAnalyticsTracker;

    new-instance v1, Lcom/samsung/milk/milkvideo/analytics/GoogleAnalyticsWrapper;

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/NachosModule;->context:Landroid/content/Context;

    invoke-direct {v1, v2, p1}, Lcom/samsung/milk/milkvideo/analytics/GoogleAnalyticsWrapper;-><init>(Landroid/content/Context;Lcom/samsung/milk/milkvideo/utils/TimeService;)V

    invoke-direct {v0, v1}, Lcom/samsung/milk/milkvideo/analytics/GoogleAnalyticsTracker;-><init>(Lcom/samsung/milk/milkvideo/analytics/GoogleAnalyticsWrapper;)V

    return-object v0
.end method

.method public provideGoogleCloudMessaging()Lcom/samsung/milk/milkvideo/notifications/GcmProvider;
    .locals 2
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 215
    new-instance v0, Lcom/samsung/milk/milkvideo/notifications/GcmProviderImpl;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/NachosModule;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/milk/milkvideo/notifications/GcmProviderImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public provideGoogleLoginStrategy(Lcom/samsung/milk/milkvideo/views/MessageNotifier;)Lcom/samsung/milk/milkvideo/fragments/LoginFragment$LoginStrategy;
    .locals 1
    .param p1, "messageNotifier"    # Lcom/samsung/milk/milkvideo/views/MessageNotifier;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "google"
    .end annotation

    .prologue
    .line 357
    new-instance v0, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;

    invoke-direct {v0, p1}, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;-><init>(Lcom/samsung/milk/milkvideo/views/MessageNotifier;)V

    return-object v0
.end method

.method public provideLocalProfilePhotoManager(Lcom/samsung/milk/milkvideo/utils/Blur;)Lcom/samsung/milk/milkvideo/utils/LocalProfilePhotoManager;
    .locals 2
    .param p1, "blur"    # Lcom/samsung/milk/milkvideo/utils/Blur;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 179
    new-instance v0, Lcom/samsung/milk/milkvideo/utils/LocalProfilePhotoManager;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/NachosModule;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/samsung/milk/milkvideo/utils/LocalProfilePhotoManager;-><init>(Landroid/content/Context;Lcom/samsung/milk/milkvideo/utils/Blur;)V

    return-object v0
.end method

.method public provideMediaPlayer()Landroid/media/MediaPlayer;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .prologue
    .line 184
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    return-object v0
.end method

.method public provideMessageNotifier()Lcom/samsung/milk/milkvideo/views/MessageNotifier;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 351
    new-instance v0, Lcom/samsung/milk/milkvideo/views/MessageNotifier;

    invoke-direct {v0}, Lcom/samsung/milk/milkvideo/views/MessageNotifier;-><init>()V

    return-object v0
.end method

.method public provideMixpanelTracker(Lcom/samsung/milk/milkvideo/utils/TimeService;Lcom/samsung/milk/milkvideo/api/NachosRestService;Lcom/samsung/milk/milkvideo/utils/PackageInfoUtil;)Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;
    .locals 3
    .param p1, "timeService"    # Lcom/samsung/milk/milkvideo/utils/TimeService;
    .param p2, "nachosRestService"    # Lcom/samsung/milk/milkvideo/api/NachosRestService;
    .param p3, "packageInfoUtil"    # Lcom/samsung/milk/milkvideo/utils/PackageInfoUtil;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 202
    const-string v1, "com.samsung.milk.milkvideo.mixpanel.token"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 203
    .local v0, "token":Ljava/lang/String;
    new-instance v1, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/NachosModule;->context:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    move-result-object v2

    invoke-direct {v1, p1, v2, p2, p3}, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;-><init>(Lcom/samsung/milk/milkvideo/utils/TimeService;Lcom/mixpanel/android/mpmetrics/MixpanelAPI;Lcom/samsung/milk/milkvideo/api/NachosRestService;Lcom/samsung/milk/milkvideo/utils/PackageInfoUtil;)V

    return-object v1
.end method

.method public provideNachosToast()Lcom/samsung/milk/milkvideo/widgets/NachosToast;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 385
    new-instance v0, Lcom/samsung/milk/milkvideo/widgets/NachosToast;

    invoke-direct {v0}, Lcom/samsung/milk/milkvideo/widgets/NachosToast;-><init>()V

    return-object v0
.end method

.method public provideNotificationFactory()Lcom/samsung/milk/milkvideo/notifications/NotificationFactory;
    .locals 3
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 221
    new-instance v0, Lcom/samsung/milk/milkvideo/notifications/NotificationFactory;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/NachosModule;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/NachosModule;->providePicasso()Lcom/squareup/picasso/Picasso;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/milk/milkvideo/notifications/NotificationFactory;-><init>(Landroid/content/Context;Lcom/squareup/picasso/Picasso;)V

    return-object v0
.end method

.method public provideNotificationManager()Landroid/app/NotificationManager;
    .locals 2
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 391
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/NachosModule;->context:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    return-object v0
.end method

.method public provideOoyalaPlayerFragment()Lcom/samsung/milk/milkvideo/fragments/VideoPlayerFragment;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "ooyala"
    .end annotation

    .prologue
    .line 253
    new-instance v0, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;

    invoke-direct {v0}, Lcom/samsung/milk/milkvideo/fragments/DefaultVideoPlayerFragment;-><init>()V

    return-object v0
.end method

.method public provideOoyalaRestService(Lretrofit/RestAdapter$Builder;Lcom/squareup/otto/Bus;)Lcom/samsung/milk/milkvideo/api/OoyalaRestService;
    .locals 2
    .param p1, "builder"    # Lretrofit/RestAdapter$Builder;
    .param p2, "bus"    # Lcom/squareup/otto/Bus;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 322
    const-string v0, "https://api.ooyala.com"

    invoke-virtual {p1, v0}, Lretrofit/RestAdapter$Builder;->setEndpoint(Ljava/lang/String;)Lretrofit/RestAdapter$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/milk/milkvideo/api/ApiErrorHandler;

    invoke-direct {v1, p2}, Lcom/samsung/milk/milkvideo/api/ApiErrorHandler;-><init>(Lcom/squareup/otto/Bus;)V

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter$Builder;->setErrorHandler(Lretrofit/ErrorHandler;)Lretrofit/RestAdapter$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lretrofit/RestAdapter$Builder;->build()Lretrofit/RestAdapter;

    move-result-object v0

    const-class v1, Lcom/samsung/milk/milkvideo/api/OoyalaRestService;

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/api/OoyalaRestService;

    return-object v0
.end method

.method public providePackageInfoUtil()Lcom/samsung/milk/milkvideo/utils/PackageInfoUtil;
    .locals 2
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 209
    new-instance v0, Lcom/samsung/milk/milkvideo/utils/PackageInfoUtil;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/NachosModule;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/milk/milkvideo/utils/PackageInfoUtil;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public providePicasso()Lcom/squareup/picasso/Picasso;
    .locals 3
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 171
    new-instance v0, Lcom/squareup/picasso/Picasso$Builder;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/NachosModule;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/squareup/picasso/Picasso$Builder;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/squareup/picasso/OkHttpDownloader;

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/NachosModule;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/squareup/picasso/OkHttpDownloader;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso$Builder;->downloader(Lcom/squareup/picasso/Downloader;)Lcom/squareup/picasso/Picasso$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/picasso/Picasso$Builder;->build()Lcom/squareup/picasso/Picasso;

    move-result-object v0

    return-object v0
.end method

.method public providePreviousNotifications()Lcom/samsung/milk/milkvideo/notifications/PreviousNotifications;
    .locals 2
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 427
    new-instance v0, Lcom/samsung/milk/milkvideo/notifications/PreviousNotifications;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/NachosModule;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/milk/milkvideo/notifications/PreviousNotifications;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public provideRepostVideoRepository(Lcom/samsung/milk/milkvideo/api/NachosRestService;Lcom/squareup/otto/Bus;)Lcom/samsung/milk/milkvideo/repository/RepostVideosRepository;
    .locals 1
    .param p1, "nachosRestService"    # Lcom/samsung/milk/milkvideo/api/NachosRestService;
    .param p2, "eventBus"    # Lcom/squareup/otto/Bus;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .prologue
    .line 285
    new-instance v0, Lcom/samsung/milk/milkvideo/repository/RepostVideosRepository;

    invoke-direct {v0, p1, p2}, Lcom/samsung/milk/milkvideo/repository/RepostVideosRepository;-><init>(Lcom/samsung/milk/milkvideo/api/NachosRestService;Lcom/squareup/otto/Bus;)V

    return-object v0
.end method

.method public provideRestAdapter()Lretrofit/RestAdapter$Builder;
    .locals 2
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 259
    new-instance v0, Lretrofit/RestAdapter$Builder;

    invoke-direct {v0}, Lretrofit/RestAdapter$Builder;-><init>()V

    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/NachosModule;->buildHttpClient()Lretrofit/client/OkClient;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter$Builder;->setClient(Lretrofit/client/Client;)Lretrofit/RestAdapter$Builder;

    move-result-object v0

    return-object v0
.end method

.method public provideRestService(Lretrofit/RestAdapter$Builder;Lcom/squareup/otto/Bus;Lcom/samsung/milk/milkvideo/services/LoginState;)Lcom/samsung/milk/milkvideo/api/NachosRestService;
    .locals 2
    .param p1, "builder"    # Lretrofit/RestAdapter$Builder;
    .param p2, "bus"    # Lcom/squareup/otto/Bus;
    .param p3, "authenticator"    # Lcom/samsung/milk/milkvideo/services/LoginState;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 310
    sget-object v0, Lcom/samsung/milk/milkvideo/api/NachosRestService;->DATA_CONVERTER:Lretrofit/converter/Converter;

    invoke-virtual {p1, v0}, Lretrofit/RestAdapter$Builder;->setConverter(Lretrofit/converter/Converter;)Lretrofit/RestAdapter$Builder;

    move-result-object v0

    const-string v1, "com.samsung.milk.milkvideo.service.endpoint"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter$Builder;->setEndpoint(Ljava/lang/String;)Lretrofit/RestAdapter$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/milk/milkvideo/api/ApiErrorHandler;

    invoke-direct {v1, p2}, Lcom/samsung/milk/milkvideo/api/ApiErrorHandler;-><init>(Lcom/squareup/otto/Bus;)V

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter$Builder;->setErrorHandler(Lretrofit/ErrorHandler;)Lretrofit/RestAdapter$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/milk/milkvideo/api/AuthorizationRequestInterceptor;

    invoke-direct {v1, p3}, Lcom/samsung/milk/milkvideo/api/AuthorizationRequestInterceptor;-><init>(Lcom/samsung/milk/milkvideo/services/LoginState;)V

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter$Builder;->setRequestInterceptor(Lretrofit/RequestInterceptor;)Lretrofit/RestAdapter$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lretrofit/RestAdapter$Builder;->build()Lretrofit/RestAdapter;

    move-result-object v0

    const-class v1, Lcom/samsung/milk/milkvideo/api/NachosRestService;

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/milk/milkvideo/api/NachosRestService;

    return-object v0
.end method

.method public provideSamsungLoginStrategy(Lcom/samsung/milk/milkvideo/FeatureFlags;Lcom/samsung/milk/milkvideo/views/MessageNotifier;)Lcom/samsung/milk/milkvideo/fragments/LoginFragment$LoginStrategy;
    .locals 1
    .param p1, "featureFlags"    # Lcom/samsung/milk/milkvideo/FeatureFlags;
    .param p2, "messageNotifier"    # Lcom/samsung/milk/milkvideo/views/MessageNotifier;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "samsung"
    .end annotation

    .prologue
    .line 345
    new-instance v0, Lcom/samsung/milk/milkvideo/login/SamsungLoginStrategy;

    invoke-direct {v0, p1, p2}, Lcom/samsung/milk/milkvideo/login/SamsungLoginStrategy;-><init>(Lcom/samsung/milk/milkvideo/FeatureFlags;Lcom/samsung/milk/milkvideo/views/MessageNotifier;)V

    return-object v0
.end method

.method public provideSettings()Lcom/samsung/milk/milkvideo/services/NachosSettings;
    .locals 2
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 403
    new-instance v0, Lcom/samsung/milk/milkvideo/services/NachosSettings;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/NachosModule;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/milk/milkvideo/services/NachosSettings;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public provideSlook()Lcom/samsung/android/sdk/SsdkInterface;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .prologue
    .line 232
    new-instance v0, Lcom/samsung/android/sdk/look/Slook;

    invoke-direct {v0}, Lcom/samsung/android/sdk/look/Slook;-><init>()V

    return-object v0
.end method

.method public provideSlookUtil(Lcom/samsung/android/sdk/SsdkInterface;)Lcom/samsung/milk/milkvideo/utils/SlookUtil;
    .locals 2
    .param p1, "slook"    # Lcom/samsung/android/sdk/SsdkInterface;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .prologue
    .line 237
    new-instance v0, Lcom/samsung/milk/milkvideo/utils/SlookUtil;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/NachosModule;->context:Landroid/content/Context;

    invoke-direct {v0, p1, v1}, Lcom/samsung/milk/milkvideo/utils/SlookUtil;-><init>(Lcom/samsung/android/sdk/SsdkInterface;Landroid/content/Context;)V

    return-object v0
.end method

.method public provideStarredVideoRepository(Lcom/samsung/milk/milkvideo/api/NachosRestService;Lcom/squareup/otto/Bus;)Lcom/samsung/milk/milkvideo/repository/StarredVideosRepository;
    .locals 1
    .param p1, "nachosRestService"    # Lcom/samsung/milk/milkvideo/api/NachosRestService;
    .param p2, "eventBus"    # Lcom/squareup/otto/Bus;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .prologue
    .line 280
    new-instance v0, Lcom/samsung/milk/milkvideo/repository/StarredVideosRepository;

    invoke-direct {v0, p1, p2}, Lcom/samsung/milk/milkvideo/repository/StarredVideosRepository;-><init>(Lcom/samsung/milk/milkvideo/api/NachosRestService;Lcom/squareup/otto/Bus;)V

    return-object v0
.end method

.method public provideTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 2
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 397
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/NachosModule;->context:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method public provideYouTubePlayerFragment(Lcom/samsung/milk/milkvideo/FeatureFlags;)Lcom/samsung/milk/milkvideo/fragments/VideoPlayerFragment;
    .locals 1
    .param p1, "featureFlags"    # Lcom/samsung/milk/milkvideo/FeatureFlags;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "youtube"
    .end annotation

    .prologue
    .line 243
    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/FeatureFlags;->useYoutubeWebPlayer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    new-instance v0, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;

    invoke-direct {v0}, Lcom/samsung/milk/milkvideo/fragments/YouTubeWebPlayerFragment;-><init>()V

    .line 246
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;

    invoke-direct {v0}, Lcom/samsung/milk/milkvideo/fragments/YouTubeVideoPlayerFragment;-><init>()V

    goto :goto_0
.end method
