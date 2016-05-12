.class public final Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter;
.super Ldagger/internal/ModuleAdapter;
.source "NachosModule$$ModuleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvidePreviousNotificationsProvidesAdapter;,
        Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideGoogleAnalyticsTrackerProvidesAdapter;,
        Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideBandwidthDetectorProvidesAdapter;,
        Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideEdgeBrighteningGradientBuilderProvidesAdapter;,
        Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideSettingsProvidesAdapter;,
        Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideTelephonyManagerProvidesAdapter;,
        Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideNotificationManagerProvidesAdapter;,
        Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideNachosToastProvidesAdapter;,
        Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideGoogleLoginStrategyProvidesAdapter;,
        Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideMessageNotifierProvidesAdapter;,
        Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideSamsungLoginStrategyProvidesAdapter;,
        Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideFacebookLoginStrategyProvidesAdapter;,
        Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideApplicationContextProvidesAdapter;,
        Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideOoyalaRestServiceProvidesAdapter;,
        Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideRestServiceProvidesAdapter;,
        Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideFeatureFlagProvidesAdapter;,
        Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideFeedVideoRepositoryProvidesAdapter;,
        Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideRepostVideoRepositoryProvidesAdapter;,
        Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideStarredVideoRepositoryProvidesAdapter;,
        Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideBrandVideoRepositoryProvidesAdapter;,
        Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideAudioFocusChangeListenerProvidesAdapter;,
        Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideGestureDetectorFactoryProvidesAdapter;,
        Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideRestAdapterProvidesAdapter;,
        Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideOoyalaPlayerFragmentProvidesAdapter;,
        Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideYouTubePlayerFragmentProvidesAdapter;,
        Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideSlookUtilProvidesAdapter;,
        Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideSlookProvidesAdapter;,
        Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideCrashlyticsTrackerProvidesAdapter;,
        Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideNotificationFactoryProvidesAdapter;,
        Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideGoogleCloudMessagingProvidesAdapter;,
        Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvidePackageInfoUtilProvidesAdapter;,
        Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideMixpanelTrackerProvidesAdapter;,
        Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideAudioManagerProvidesAdapter;,
        Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideAccountManagerProvidesAdapter;,
        Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideMediaPlayerProvidesAdapter;,
        Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideLocalProfilePhotoManagerProvidesAdapter;,
        Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvidePicassoProvidesAdapter;,
        Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideBusProvidesAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/ModuleAdapter",
        "<",
        "Lcom/samsung/milk/milkvideo/NachosModule;",
        ">;"
    }
.end annotation


# static fields
.field private static final INCLUDES:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final INJECTS:[Ljava/lang/String;

.field private static final STATIC_INJECTIONS:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 17
    const/16 v0, 0x5b

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "members/com.samsung.milk.milkvideo.NachosApplication"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "members/com.samsung.milk.milkvideo.activity.BaseNachosActivity"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "members/com.samsung.milk.milkvideo.activity.CreateAccountActivity"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "members/com.samsung.milk.milkvideo.activity.EditProfileActivity"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "members/com.samsung.milk.milkvideo.activity.FollowFriendsActivity"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "members/com.samsung.milk.milkvideo.activity.FollowsActivity"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "members/com.samsung.milk.milkvideo.activity.LegalActivity"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "members/com.samsung.milk.milkvideo.activity.ProfileActivity"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "members/com.samsung.milk.milkvideo.activity.ReposterListActivity"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "members/com.samsung.milk.milkvideo.activity.SearchActivity"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "members/com.samsung.milk.milkvideo.activity.SettingsActivity"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "members/com.samsung.milk.milkvideo.activity.SignoutConfirmationActivity"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "members/com.samsung.milk.milkvideo.activity.SignupUserActivity"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "members/com.samsung.milk.milkvideo.activity.UserListActivity"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "members/com.samsung.milk.milkvideo.activity.UserSearchResultsActivity"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "members/com.samsung.milk.milkvideo.activity.VideoFeedActivity"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "members/com.samsung.milk.milkvideo.activity.WelcomeActivity"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "members/com.samsung.milk.milkvideo.activity.WelcomeFollowFacebookFriendsActivity"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "members/com.samsung.milk.milkvideo.activity.WelcomeFollowGooglePlusFriendsActivity"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "members/com.samsung.milk.milkvideo.adapters.EdgeVideoPagerAdapter"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "members/com.samsung.milk.milkvideo.analytics.BufferingTracker"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "members/com.samsung.milk.milkvideo.analytics.MixpanelTracker"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "members/com.samsung.milk.milkvideo.api.GoogleTokenAsyncTask"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "members/com.samsung.milk.milkvideo.events.VideoListEventHandler"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "members/com.samsung.milk.milkvideo.fragments.CategoryFragment"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "members/com.samsung.milk.milkvideo.fragments.DefaultVideoPlayerFragment"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "members/com.samsung.milk.milkvideo.fragments.FacebookLoggedInWelcomeFragment"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "members/com.samsung.milk.milkvideo.fragments.FollowsFragment"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "members/com.samsung.milk.milkvideo.fragments.GooglePlusLoggedInWelcomeFragment"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "members/com.samsung.milk.milkvideo.fragments.LegalFragment"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "members/com.samsung.milk.milkvideo.fragments.LoginFragment"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "members/com.samsung.milk.milkvideo.fragments.ProfileFragment"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "members/com.samsung.milk.milkvideo.fragments.SearchFragment"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "members/com.samsung.milk.milkvideo.fragments.SettingsFragment"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "members/com.samsung.milk.milkvideo.fragments.SignoutConfirmationFragment"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "members/com.samsung.milk.milkvideo.fragments.SignupUserFragment"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "members/com.samsung.milk.milkvideo.fragments.UserListFragment"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "members/com.samsung.milk.milkvideo.fragments.UserSearchResultsFragment"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "members/com.samsung.milk.milkvideo.fragments.VideoFeedFragment"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "members/com.samsung.milk.milkvideo.fragments.VideoPlayerContainerFragment"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "members/com.samsung.milk.milkvideo.fragments.WelcomeFollowFacebookFriendsFragment"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "members/com.samsung.milk.milkvideo.fragments.WelcomeFollowGooglePlusFriendsFragment"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "members/com.samsung.milk.milkvideo.fragments.WelcomeFragment"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "members/com.samsung.milk.milkvideo.fragments.YouTubeVideoPlayerFragment"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "members/com.samsung.milk.milkvideo.fragments.YouTubeWebPlayerFragment"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "members/com.samsung.milk.milkvideo.fragments.userinfo.EditProfileFragment"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "members/com.samsung.milk.milkvideo.fragments.userinfo.FacebookUserInfoFragment"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "members/com.samsung.milk.milkvideo.fragments.userinfo.GooglePlusUserInfoFragment"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "members/com.samsung.milk.milkvideo.fragments.userinfo.SamsungAccountUserInfoFragment"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "members/com.samsung.milk.milkvideo.fragments.userinfo.UserInfoFragment"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "members/com.samsung.milk.milkvideo.login.BaseLoginStrategy"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "members/com.samsung.milk.milkvideo.login.FacebookLoginStrategy"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "members/com.samsung.milk.milkvideo.login.GooglePlusLoginStrategy"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "members/com.samsung.milk.milkvideo.login.SamsungLoginStrategy"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "members/com.samsung.milk.milkvideo.notifications.GcmIntentService"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "members/com.samsung.milk.milkvideo.notifications.NotificationFactory"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "members/com.samsung.milk.milkvideo.receiver.NetworkChangeReceiver"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "members/com.samsung.milk.milkvideo.services.RepostService"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "members/com.samsung.milk.milkvideo.utils.BandwidthDetector"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "members/com.samsung.milk.milkvideo.views.ActionContainerView"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "members/com.samsung.milk.milkvideo.views.BrandGridItemView"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "members/com.samsung.milk.milkvideo.views.CategoryListView"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "members/com.samsung.milk.milkvideo.views.CircularImageView"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "members/com.samsung.milk.milkvideo.views.CustomLoadingLayout"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "members/com.samsung.milk.milkvideo.views.EdgeVideoListItemView"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "members/com.samsung.milk.milkvideo.views.FacepileItemView"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "members/com.samsung.milk.milkvideo.views.FacepileLayout"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "members/com.samsung.milk.milkvideo.views.FollowButtonView"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "members/com.samsung.milk.milkvideo.views.FullScreenDialog"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "members/com.samsung.milk.milkvideo.views.LockableScrollView"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "members/com.samsung.milk.milkvideo.views.MessageNotifier"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "members/com.samsung.milk.milkvideo.views.MyProfileListHeader"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "members/com.samsung.milk.milkvideo.views.MyProfileVideoTabs"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "members/com.samsung.milk.milkvideo.views.NuxPageView"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "members/com.samsung.milk.milkvideo.views.NuxView"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "members/com.samsung.milk.milkvideo.views.ProfileListHeader"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "members/com.samsung.milk.milkvideo.views.PullToRefreshSwipeListView"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "members/com.samsung.milk.milkvideo.views.RainbowView"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "members/com.samsung.milk.milkvideo.views.SideBarView"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "members/com.samsung.milk.milkvideo.views.SuggestedUserListItemView"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "members/com.samsung.milk.milkvideo.views.UserListItemView"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "members/com.samsung.milk.milkvideo.views.UserProfileListHeader"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "members/com.samsung.milk.milkvideo.views.UserSearchResultView"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "members/com.samsung.milk.milkvideo.views.ValidationEditText"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "members/com.samsung.milk.milkvideo.views.VerticalSeekBar"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "members/com.samsung.milk.milkvideo.views.VideoInfoView"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "members/com.samsung.milk.milkvideo.views.VideoListItemView"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "members/com.samsung.milk.milkvideo.views.VideoPlayerControlView"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "members/com.samsung.milk.milkvideo.views.YouTubeContainerView"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "members/com.samsung.milk.milkvideo.views.condensable_header.CondensableHeader"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "members/com.samsung.milk.milkvideo.views.condensable_header.CondensableMyProfileHeader"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter;->INJECTS:[Ljava/lang/String;

    .line 18
    new-array v0, v3, [Ljava/lang/Class;

    sput-object v0, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter;->STATIC_INJECTIONS:[Ljava/lang/Class;

    .line 19
    new-array v0, v3, [Ljava/lang/Class;

    sput-object v0, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter;->INCLUDES:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 22
    const-class v1, Lcom/samsung/milk/milkvideo/NachosModule;

    sget-object v2, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter;->INJECTS:[Ljava/lang/String;

    sget-object v3, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter;->STATIC_INJECTIONS:[Ljava/lang/Class;

    sget-object v5, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter;->INCLUDES:[Ljava/lang/Class;

    const/4 v6, 0x1

    move-object v0, p0

    move v7, v4

    invoke-direct/range {v0 .. v7}, Ldagger/internal/ModuleAdapter;-><init>(Ljava/lang/Class;[Ljava/lang/String;[Ljava/lang/Class;Z[Ljava/lang/Class;ZZ)V

    .line 23
    return-void
.end method


# virtual methods
.method public getBindings(Ldagger/internal/BindingsGroup;Lcom/samsung/milk/milkvideo/NachosModule;)V
    .locals 2
    .param p1, "bindings"    # Ldagger/internal/BindingsGroup;
    .param p2, "module"    # Lcom/samsung/milk/milkvideo/NachosModule;

    .prologue
    .line 31
    const-string v0, "com.squareup.otto.Bus"

    new-instance v1, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideBusProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideBusProvidesAdapter;-><init>(Lcom/samsung/milk/milkvideo/NachosModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 32
    const-string v0, "com.squareup.picasso.Picasso"

    new-instance v1, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvidePicassoProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvidePicassoProvidesAdapter;-><init>(Lcom/samsung/milk/milkvideo/NachosModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 33
    const-string v0, "com.samsung.milk.milkvideo.utils.LocalProfilePhotoManager"

    new-instance v1, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideLocalProfilePhotoManagerProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideLocalProfilePhotoManagerProvidesAdapter;-><init>(Lcom/samsung/milk/milkvideo/NachosModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 34
    const-string v0, "android.media.MediaPlayer"

    new-instance v1, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideMediaPlayerProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideMediaPlayerProvidesAdapter;-><init>(Lcom/samsung/milk/milkvideo/NachosModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 35
    const-string v0, "android.accounts.AccountManager"

    new-instance v1, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideAccountManagerProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideAccountManagerProvidesAdapter;-><init>(Lcom/samsung/milk/milkvideo/NachosModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 36
    const-string v0, "android.media.AudioManager"

    new-instance v1, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideAudioManagerProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideAudioManagerProvidesAdapter;-><init>(Lcom/samsung/milk/milkvideo/NachosModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 37
    const-string v0, "com.samsung.milk.milkvideo.analytics.MixpanelTracker"

    new-instance v1, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideMixpanelTrackerProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideMixpanelTrackerProvidesAdapter;-><init>(Lcom/samsung/milk/milkvideo/NachosModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 38
    const-string v0, "com.samsung.milk.milkvideo.utils.PackageInfoUtil"

    new-instance v1, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvidePackageInfoUtilProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvidePackageInfoUtilProvidesAdapter;-><init>(Lcom/samsung/milk/milkvideo/NachosModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 39
    const-string v0, "com.samsung.milk.milkvideo.notifications.GcmProvider"

    new-instance v1, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideGoogleCloudMessagingProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideGoogleCloudMessagingProvidesAdapter;-><init>(Lcom/samsung/milk/milkvideo/NachosModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 40
    const-string v0, "com.samsung.milk.milkvideo.notifications.NotificationFactory"

    new-instance v1, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideNotificationFactoryProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideNotificationFactoryProvidesAdapter;-><init>(Lcom/samsung/milk/milkvideo/NachosModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 41
    const-string v0, "com.samsung.milk.milkvideo.analytics.CrashlyticsTracker"

    new-instance v1, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideCrashlyticsTrackerProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideCrashlyticsTrackerProvidesAdapter;-><init>(Lcom/samsung/milk/milkvideo/NachosModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 42
    const-string v0, "com.samsung.android.sdk.SsdkInterface"

    new-instance v1, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideSlookProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideSlookProvidesAdapter;-><init>(Lcom/samsung/milk/milkvideo/NachosModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 43
    const-string v0, "com.samsung.milk.milkvideo.utils.SlookUtil"

    new-instance v1, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideSlookUtilProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideSlookUtilProvidesAdapter;-><init>(Lcom/samsung/milk/milkvideo/NachosModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 44
    const-string v0, "@javax.inject.Named(value=youtube)/com.samsung.milk.milkvideo.fragments.VideoPlayerFragment"

    new-instance v1, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideYouTubePlayerFragmentProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideYouTubePlayerFragmentProvidesAdapter;-><init>(Lcom/samsung/milk/milkvideo/NachosModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 45
    const-string v0, "@javax.inject.Named(value=ooyala)/com.samsung.milk.milkvideo.fragments.VideoPlayerFragment"

    new-instance v1, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideOoyalaPlayerFragmentProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideOoyalaPlayerFragmentProvidesAdapter;-><init>(Lcom/samsung/milk/milkvideo/NachosModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 46
    const-string v0, "retrofit.RestAdapter$Builder"

    new-instance v1, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideRestAdapterProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideRestAdapterProvidesAdapter;-><init>(Lcom/samsung/milk/milkvideo/NachosModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 47
    const-string v0, "com.samsung.milk.milkvideo.utils.GestureDetectorFactory"

    new-instance v1, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideGestureDetectorFactoryProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideGestureDetectorFactoryProvidesAdapter;-><init>(Lcom/samsung/milk/milkvideo/NachosModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 48
    const-string v0, "com.samsung.milk.milkvideo.fragments.listeners.VideoOnAudioFocusChangeListener"

    new-instance v1, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideAudioFocusChangeListenerProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideAudioFocusChangeListenerProvidesAdapter;-><init>(Lcom/samsung/milk/milkvideo/NachosModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 49
    const-string v0, "com.samsung.milk.milkvideo.repository.BrandVideosRepository"

    new-instance v1, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideBrandVideoRepositoryProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideBrandVideoRepositoryProvidesAdapter;-><init>(Lcom/samsung/milk/milkvideo/NachosModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 50
    const-string v0, "com.samsung.milk.milkvideo.repository.StarredVideosRepository"

    new-instance v1, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideStarredVideoRepositoryProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideStarredVideoRepositoryProvidesAdapter;-><init>(Lcom/samsung/milk/milkvideo/NachosModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 51
    const-string v0, "com.samsung.milk.milkvideo.repository.RepostVideosRepository"

    new-instance v1, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideRepostVideoRepositoryProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideRepostVideoRepositoryProvidesAdapter;-><init>(Lcom/samsung/milk/milkvideo/NachosModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 52
    const-string v0, "com.samsung.milk.milkvideo.repository.FeedVideosRepository"

    new-instance v1, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideFeedVideoRepositoryProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideFeedVideoRepositoryProvidesAdapter;-><init>(Lcom/samsung/milk/milkvideo/NachosModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 53
    const-string v0, "com.samsung.milk.milkvideo.FeatureFlags"

    new-instance v1, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideFeatureFlagProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideFeatureFlagProvidesAdapter;-><init>(Lcom/samsung/milk/milkvideo/NachosModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 54
    const-string v0, "com.samsung.milk.milkvideo.api.NachosRestService"

    new-instance v1, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideRestServiceProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideRestServiceProvidesAdapter;-><init>(Lcom/samsung/milk/milkvideo/NachosModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 55
    const-string v0, "com.samsung.milk.milkvideo.api.OoyalaRestService"

    new-instance v1, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideOoyalaRestServiceProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideOoyalaRestServiceProvidesAdapter;-><init>(Lcom/samsung/milk/milkvideo/NachosModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 56
    const-string v0, "@com.samsung.milk.milkvideo.utils.ApplicationContext()/android.content.Context"

    new-instance v1, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideApplicationContextProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideApplicationContextProvidesAdapter;-><init>(Lcom/samsung/milk/milkvideo/NachosModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 57
    const-string v0, "@javax.inject.Named(value=facebook)/com.samsung.milk.milkvideo.fragments.LoginFragment$LoginStrategy"

    new-instance v1, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideFacebookLoginStrategyProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideFacebookLoginStrategyProvidesAdapter;-><init>(Lcom/samsung/milk/milkvideo/NachosModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 58
    const-string v0, "@javax.inject.Named(value=samsung)/com.samsung.milk.milkvideo.fragments.LoginFragment$LoginStrategy"

    new-instance v1, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideSamsungLoginStrategyProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideSamsungLoginStrategyProvidesAdapter;-><init>(Lcom/samsung/milk/milkvideo/NachosModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 59
    const-string v0, "com.samsung.milk.milkvideo.views.MessageNotifier"

    new-instance v1, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideMessageNotifierProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideMessageNotifierProvidesAdapter;-><init>(Lcom/samsung/milk/milkvideo/NachosModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 60
    const-string v0, "@javax.inject.Named(value=google)/com.samsung.milk.milkvideo.fragments.LoginFragment$LoginStrategy"

    new-instance v1, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideGoogleLoginStrategyProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideGoogleLoginStrategyProvidesAdapter;-><init>(Lcom/samsung/milk/milkvideo/NachosModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 61
    const-string v0, "com.samsung.milk.milkvideo.widgets.NachosToast"

    new-instance v1, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideNachosToastProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideNachosToastProvidesAdapter;-><init>(Lcom/samsung/milk/milkvideo/NachosModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 62
    const-string v0, "android.app.NotificationManager"

    new-instance v1, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideNotificationManagerProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideNotificationManagerProvidesAdapter;-><init>(Lcom/samsung/milk/milkvideo/NachosModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 63
    const-string v0, "android.telephony.TelephonyManager"

    new-instance v1, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideTelephonyManagerProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideTelephonyManagerProvidesAdapter;-><init>(Lcom/samsung/milk/milkvideo/NachosModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 64
    const-string v0, "com.samsung.milk.milkvideo.services.NachosSettings"

    new-instance v1, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideSettingsProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideSettingsProvidesAdapter;-><init>(Lcom/samsung/milk/milkvideo/NachosModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 65
    const-string v0, "com.samsung.milk.milkvideo.utils.EdgeBrighteningGradientBuilder"

    new-instance v1, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideEdgeBrighteningGradientBuilderProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideEdgeBrighteningGradientBuilderProvidesAdapter;-><init>(Lcom/samsung/milk/milkvideo/NachosModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 66
    const-string v0, "com.samsung.milk.milkvideo.utils.BandwidthDetector"

    new-instance v1, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideBandwidthDetectorProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideBandwidthDetectorProvidesAdapter;-><init>(Lcom/samsung/milk/milkvideo/NachosModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 67
    const-string v0, "com.samsung.milk.milkvideo.analytics.GoogleAnalyticsTracker"

    new-instance v1, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideGoogleAnalyticsTrackerProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvideGoogleAnalyticsTrackerProvidesAdapter;-><init>(Lcom/samsung/milk/milkvideo/NachosModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 68
    const-string v0, "com.samsung.milk.milkvideo.notifications.PreviousNotifications"

    new-instance v1, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvidePreviousNotificationsProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter$ProvidePreviousNotificationsProvidesAdapter;-><init>(Lcom/samsung/milk/milkvideo/NachosModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 69
    return-void
.end method

.method public bridge synthetic getBindings(Ldagger/internal/BindingsGroup;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ldagger/internal/BindingsGroup;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 16
    check-cast p2, Lcom/samsung/milk/milkvideo/NachosModule;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/samsung/milk/milkvideo/NachosModule$$ModuleAdapter;->getBindings(Ldagger/internal/BindingsGroup;Lcom/samsung/milk/milkvideo/NachosModule;)V

    return-void
.end method
